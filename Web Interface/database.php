<?php
if (basename($_SERVER['SCRIPT_NAME']) == "database.php") {
    header("Location: index.php");
}
require_once("config/db_config.php");
$con = NULL;
function dbConnect() {
    global $con, $db;
    $con = mysqli_connect($db["server"], $db["username"], $db["password"], $db["schema"]);
    if (mysqli_connect_errno()) {
        $log = "\r\n" . date("Y-m-d H:i:s") . "\t" . "IP: " . $_SERVER['REMOTE_ADDR'];
        $log .= "\t" . mysqli_connect_error() . "\r\n";
        $file = fopen("mysql_log.txt", "a");
        fwrite($file, $log);
        fclose($file);
        die("Database error: 1");
    }
	
	mysqli_query($con, "SET NAMES 'utf8'");
	mysqli_query($con, "SET CHARACTER SET utf8");
	mysqli_query($con, "SET COLLATION_CONNECTION = 'utf8_turkish_ci'");
    return $con;
}
function sqlQueryBoolean($query) {

    global $con;
    $result = mysqli_query($con, $query);
    if ($result) {
         
        return "Successful";
    } else {
        $log = "\r\n" . date("Y-m-d H:i:s") . "\t" . "IP: " . $_SERVER['REMOTE_ADDR'];
        $log .= "\t" . mysqli_error($con) . "\r\n";
          $log .= "\t" . $query . "\r\n";
        $file = fopen("mysql_log.txt", "a");
        fwrite($file, $log);
        fclose($file);
        die("Database error: 2");
    }
}
function sqlQuery($query) {

    global $con;
    $result = mysqli_query($con, $query);
    $arr = array();
    if ($result) {
        while ($row = mysqli_fetch_array($result)) {
            array_push($arr, $row);
        }
        mysqli_free_result($result);
        return $arr;
    } else {
        $log = "\r\n" . date("Y-m-d H:i:s") . "\t" . "IP: " . $_SERVER['REMOTE_ADDR'];
        $log .= "\t" . mysqli_error($con) . "\r\n";
        $file = fopen("mysql_log.txt", "a");
        fwrite($file, $log);
        fclose($file);
        die("Database error: 3");
    }
}
function sqlQueryRows($query) {

    global $con;
    $result = mysqli_query($con, $query);
    if ($result) {
        return mysqli_num_rows($result);
    } else {
       $log = "\r\n" . date("Y-m-d H:i:s") . "\t" . "IP: " . $_SERVER['REMOTE_ADDR'];
        $log .= "\t" . mysqli_error($con) . "\r\n";
        $file = fopen("mysql_log.txt", "a");
        fwrite($file, $log);
        fclose($file);
        die("Database error: 4");
    }
}
function escape($str) {
    global $con;
    return mysqli_real_escape_string($con, $str);
}
function dbDisconnect() {
    global $con;
    mysqli_close($con);
    $con = NULL;
}
?>
