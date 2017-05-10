# Log Parser for Uploading Data into DB
# Coder OFA, OK, @Bilkent University
# March 10, 2017

# Libraries
import os, sys
import MySQLdb
from time import time
from datetime import datetime, timedelta


# Global variables
LINE_SIZE = 9
DATE_FORMAT = '%Y-%m-%d'
TIME_FORMAT = '%H:%M:%S'
HOST = '127.0.0.1'
USER = 'root'
PASSWORD = ''
DB_NAME = 'ips'



# Function : get_datetime
# Goal : get datetime, data and time objects of an input log
# Input : attributes of the log
# Output : datetime, date and time objects
def get_datetime(attributes):
	date_part = attributes[0].split('=')[1].strip()
	time_part = attributes[1].split('=')[1].strip()
	date = datetime.strptime(date_part, DATE_FORMAT).date()
	time = datetime.strptime(time_part, TIME_FORMAT).time()
	date_time = datetime.combine(date, time)
	return date_time, date, time



# Function : get_source
# Goal : get source information of an input log
# Input : attributes of the log
# Output : source ip and source interface
def get_source(attributes):
	ip = attributes[2].split('=')[1].strip()
	return ip



# Function : get_destination
# Goal : get destination information of an input log
# Input : attributes of the log
# Output : destination ip, port and interface
def get_destination(attributes):
	ip = attributes[4].split('=')[1].strip()
	port = int(attributes[5].split('=')[1].strip())
	return ip, port



# Function : get_action_service
# Goal : get action and service info of an input log
# Input : attributes of the log
# Output : service and action values
def get_action_service(attributes):
	action = attributes[7].split('=')[1].strip()
	service = attributes[8].split('=')[1].strip()
	service = service.replace('"', '') # remove quotes
	if service.startswith('TCP') or service.startswith('tcp'):
		service = 'TCP'
	if service.startswith('UDP') or service.startswith('udp'):
		service = 'UDP'

	return action, service



# Function : insert_traffic_into_db
# Goal : check current traffic in db and insert it into db
# if it is not inserted before
# Input : db cursor, source and destination ip, and port
# Output : log id of the current log
def insert_traffic_into_db(cursor, source_ip, dest_ip, port, service):
	# Create select query
	select_query = 'SELECT * from traffic  WHERE srcip = "' + source_ip + '" AND dstip = "' + dest_ip + '" AND port = ' + str(port)

	# Execute created query
	cursor.execute(select_query)

	# Check query result
	if cursor.rowcount == 0:
		# Insert traffic into database
		insert_query = 'INSERT INTO traffic (srcip, dstip, port, service) VALUES("' + source_ip + '","' + dest_ip + '",' + str(port) + ',"' + service + '")'

		# Execute created query and set row id
		cursor.execute(insert_query)
		log_id =  cursor.lastrowid
	else:
		# Set row id of select query
		log_id = int(cursor.fetchone()[0])

	return log_id



# Function : update_log_count
# Goal : check current log in db and set updated count
# Input : db cursor, log id, date and time interval
# Output : -- count value of the log in db is updated
def update_log_count(cursor, log_id, date, time_interval):
	# Create select query
	select_query = 'SELECT * from log WHERE log_id = "' + str(log_id) + '" AND date = "' + str(date) + '"'

	# Execute created query
	cursor.execute(select_query)

	# Check query result
	if cursor.rowcount == 0:
		# Insert log into database
		insert_query = 'INSERT INTO log (log_id, date, '+ time_interval + ') VALUES(' + str(log_id) + ', "'+ str(date) + '", 1)'

		# Execute created query
		cursor.execute(insert_query)
	else:
		update_query = 'UPDATE log SET '+ time_interval + '=' + time_interval + '+1 WHERE log_id = ' + str(log_id) +' AND date = "' + str(date) + '"'

		# Execute created query
		cursor.execute(update_query)



# Function : log_parser
# Goal : read input log file line by line and
# add necessary information into DB by parsing them
# Input : an empty dictionary(to count logs)
# Output : filled dictionary including log counts
def log_parser(log_file_name):

	# Open MySql database connection
	database = MySQLdb.connect(HOST, USER, PASSWORD, DB_NAME)
	cursor = database.cursor()

	# Open log file and read line by line
	with open(log_file_name, "r") as log_file:
	    for line in log_file:
		attributes = line.split(',')
		size = len(attributes)

		# Check line attributes and size
		if size == LINE_SIZE \
			and attributes[8].strip() \
			and '=,' not in line \
			and '=""' not in line:
			# Get attributes of the current log
			date_time, date, time = \
				get_datetime(attributes)
			source_ip = \
				get_source(attributes)
			dest_ip, dest_port = \
				get_destination(attributes)
			action, service = \
				get_action_service(attributes)

			# Parse time of the current log
			current_time = \
				str(date_time.time()).split(':')
			hour = current_time[0].strip()
			minute = current_time[1].strip()
			second = current_time[2].strip()
			time_interval = hour + minute[0] + '0'

			# Set time interval of the current log
			if int(minute[0]) == 5:
				if int(hour) == 23:
					time_interval += \
						'_' + hour + str(59)

				elif int(hour) < 9:
					time_interval += '_0' + \
						str(int(hour) + 1) + '00'

				elif int(hour) >= 9:
					time_interval += '_' + \
						str(int(hour) + 1) + '00'

			else:
				time_interval += '_' + hour + \
					str(int(minute[0]) + 1) + '0'

			# Insert current traffic into database
			log_id = insert_traffic_into_db( \
				cursor, source_ip, dest_ip, dest_port,service)

			# Increase count of the current log
			update_log_count( \
				cursor, log_id, date, time_interval)

	# Close database connection
	database.close()



# Main Function
if __name__ == '__main__':
	start = time()

	print "\n# Log Parser for Uploading Data into DB\n"
	print "Input file : ", sys.argv[1]

	# Call log parser to process input data
	log_parser(log_file_name = sys.argv[1])

	# Print output information
print '\n# Elapsed time is ', str(time()-start)
