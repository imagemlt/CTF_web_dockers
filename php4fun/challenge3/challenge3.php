<?php 
error_reporting(E_ALL);
if(!isset($_GET['id'])){
    show_source(__FILE__);
    die();
}

# GOAL: dump the info for the secret id
require 'db.inc.php';
   
$id = @(float)$_GET['id'];
   
$secretId = 1;
if($id == $secretId){
    echo 'Invalid id ('.$id.').';
}
else{
    $query = 'SELECT * FROM users WHERE id = \''.$id.'\';';
	if(mysql_errno())die(mysql_error());
    $result = mysql_query($query);
    $row = mysql_fetch_assoc($result);
	if(mysql_num_rows($query)<1)die("no record!");
   
    echo "id: ".$row['id']."</br>";
    echo "name:".$row['name']."</br>";
}

