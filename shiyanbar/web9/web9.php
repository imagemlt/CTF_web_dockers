<html>
<head>
welcome to simplexue
</head>
<body>
<?php
include("db.php");
if(!isset($_POST['user'])){
	echo "source file in web9.php.bak";
}
$user = $_POST[user];
$pass = md5($_POST[pass]);

$sql = "select pw from php where user='$user'";
$query = mysql_query($sql);
if (!$query) {
	printf("Error: %s\n", mysql_error($conn));
	exit();
}
$row = mysql_fetch_array($query, MYSQL_ASSOC);
//echo $row["pw"];
  
  if (($row[pw]) && (!strcasecmp($pass, $row[pw]))) {
	echo "<p>Logged in! Key:CTF{simple_sqli} </p>";
}
else {
    echo("<p>Log in failure!</p>");
	
  }
  


?>
<!-- web9.php.bak-->
<form method=post action=index.php>
<input type=text name=user value="Username">
<input type=password name=pass value="Password">
<input type=submit>
</form>
</body>
<a href="index.txt">
</html>
