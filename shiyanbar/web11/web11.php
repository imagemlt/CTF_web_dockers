<html>
<head>
welcome to simplexue
</head>
<body>
<?php

include("db.php");
$user = $_POST[user];
$pass = md5($_POST[pass]);

$sql = "select user from php where (user='$user') and (pw='$pass')";
$query = mysql_query($sql);
if (!$query) {
	printf("Error: %s\n", mysql_error($conn));
	exit();
}
$row = mysql_fetch_array($query, MYSQL_ASSOC);
//echo $row["pw"];
  if($row['user']=="admin") {
    echo "<p>Logged in! Key: CTF{ANOTHER_simple_sqli} </p>";
  }

  if($row['user'] != "admin") {
    echo("<p>You are not admin!</p>");
  }


?>
<!-- web11.php.bak-->
<form method=post action=index.php>
<input type=text name=user value="Username">
<input type=password name=pass value="Password">
<input type=submit>
</form>
</body>
<a href="index.txt">
</html>
