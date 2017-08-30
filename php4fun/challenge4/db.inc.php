<?php
$conn=mysql_connect("localhost","root","toor");
if(!$conn)die(mysql_error());
mysql_select_db("test");
