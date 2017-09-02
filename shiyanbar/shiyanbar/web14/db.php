<?php
$con = mysql_connect("localhost","web14","web14");
if (!$con){
        die('Could not connect: ' . mysql_error());
}
$db="npuctf";

mysql_select_db($db, $con);

