<?php 
if(!isset($_GET['kw'])){
	show_source(__FILE__);
}
#GOAL:get password from admin
# $yourInfo=array(
#   'id'    => 1,
#   'name'  => 'admin',
#   'pass'  => 'xxx',
#   'level' => 1
# );
require 'db.inc.php';
   
$_CONFIG['extraSecure']=true;
   
//if register globals = on, undo var overwrites
foreach(array('_GET','_POST','_REQUEST','_COOKIE') as $method){
     foreach($$method as $key=>$value){
          unset($$key);
     }
}
   
$kw = isset($_GET['kw']) ? trim($_GET['kw']) : die('Please enter in a search keyword.');
   
if($_CONFIG['extraSecure']){
     $kw=preg_replace('#[^a-z0-9_-]#i','',$kw);
}
   
$query = 'SELECT * FROM messages WHERE message LIKE \'%'.$kw.'%\';';
   
$result = mysql_query($query);
if(mysql_errno())die(mysql_error());
$row = mysql_fetch_assoc($result);
   
echo "id: ".$row['id']."</br>";
echo "message: ".$row['message']."</br>";


