SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP DATABASE ips;
CREATE DATABASE IF NOT EXISTS ips DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE ips;

DROP TABLE IF EXISTS log;
CREATE TABLE log (
  log_id int(11) NOT NULL,
  date date NOT NULL
) ;

DROP TABLE IF EXISTS policy;
CREATE TABLE policy (
  id int(11) NOT NULL,
  srcip varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  dstip varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  port int(11) NOT NULL,
  action int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS reputation;
CREATE TABLE reputation (
  ip varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  reputation int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS runtime_tmp;
CREATE TABLE runtime_tmp (
  packet_id int(11) NOT NULL,
  datetime datetime NOT NULL,
  srcip varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  dstip varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  port int(5) NOT NULL,
  service varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  action varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS services;
CREATE TABLE services (
  protocol varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  port int(11) NOT NULL,
  description tinytext COLLATE utf8_unicode_ci,
  type varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS system_constants;
CREATE TABLE system_constants (
  name varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  description tinytext COLLATE utf8_unicode_ci NOT NULL,
  value int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS traffic;
CREATE TABLE traffic (
  log_id int(11) NOT NULL,
  srcip varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  dstip varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  port int(5) DEFAULT NULL,
  service varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


ALTER TABLE policy
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY policy_index (srcip,dstip,port);

ALTER TABLE reputation
  ADD PRIMARY KEY (ip);

ALTER TABLE runtime_tmp
  ADD PRIMARY KEY (packet_id);

ALTER TABLE services
  ADD PRIMARY KEY (protocol,port);

ALTER TABLE system_constants
  ADD PRIMARY KEY (name);

ALTER TABLE traffic
  ADD PRIMARY KEY (log_id),
  ADD UNIQUE KEY traffic-unique (srcip,dstip,port);


ALTER TABLE policy
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE runtime_tmp
  MODIFY packet_id int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE traffic
  MODIFY log_id int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
