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

$types = array("i"=>'Internal', "e"=> 'External');

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
  <h2>Services</h2>
  <p>This table contains the service definitions.</p>
  <table class="table table-striped  table-hover">
    <thead>
      <tr>
        <th>Protocol</th>
        <th>Port</th>
        <th>Description</th>
        <th>Type</th>
      </tr>
    </thead>
    <tbody>
      <?php
      $table = 'services';
      if(empty($page)) $page = 0;
      $offset = $page*30;
      $limit=30;
      $query = "SELECT * FROM $table LIMIT $limit OFFSET $offset;";
      $row = sqlQuery($query);
      for($i=0;$i<count($row);$i++)
      {
   ?>
      <tr>
        <td><?php echo $row[$i]['service']; ?></td>
        <td><?php echo $row[$i]['port'];?></td>
        <td><?php echo $row[$i]['description'];?></td>
        <td><?php echo $types[$row[$i]['type']];?></td>
      </tr>
      <?php
    }
      ?>
    </tbody>
  </table>
  <?php include("pagination.php");?>
</div>
</body>
</html>
