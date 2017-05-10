<?php
require_once("database.php");
session_start();
$con = dbConnect();
ob_start();
ini_set("allow_url_fopen", "on");

$id = escape($_REQUEST["id"]);
$action = escape($_REQUEST["action"]);
$status = escape($_REQUEST["status"]);
$page = escape($_REQUEST["page"]);

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Services</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="style.css">

</head>
<body>
<div class="container">
<?php include("menu.php");?>

<h3>Implementation of IDS Based On Statistical Access Pattern Analysis</h3>
<b>Group members: </b> Onur Kocak , Omer Faruk Aktulum

<p>Welcome to IPS System home page. To setup system, please initialize constants based on your system information.</p>


</div>
</body>
</html>
