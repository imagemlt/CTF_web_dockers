<?php 
if(!isset($_GET['str'])){
    show_source(__FILE__);
    die();
}
#GOAL: gather some phpinfo();
   
$str=@(string)$_GET['str'];
eval('$str="'.addslashes($str).'";');

//hint:flag in flag.php
