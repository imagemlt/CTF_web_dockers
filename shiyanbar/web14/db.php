<?php
$con = mysql_connect("localhost","root","iove*ctf");
if (!$con){
        die('Could not connect: ' . mysql_error());
}
$db="npuctf";

mysql_select_db($db, $con);

