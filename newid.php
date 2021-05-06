<!DOCTYPE html>
<html>
  <head><title>curr id</title></head>
<body>
<?php

  $dbhandle = mysqli_connect("proj6_mysql_1", "pma", "f00barbin", "cloudproject");
	# args: server, user, pass, database_name

  if(!$dbhandle)
  { 
    echo("Nooooo...where is the database?!!!</body></html>");
    die();
  }

  # $newId = 108;  ## basic test of the newId var
 
  $insertSql = "INSERT INTO idtable VALUES (null)";
  $selectSql = "SELECT MAX(id) FROM idtable";

  mysqli_query($dbhandle, $insertSql);  # insert a new ID (auto-incrementing)
  $result = mysqli_query($dbhandle, $selectSql);  # grab the latest (max) ID
  while($row = mysqli_fetch_row($result))
  {
    $newId = $row[0];
  }

?>
	<h1> <?php echo $newId; ?> </h1>
</body>
</html>
