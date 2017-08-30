<?php
class test{
	public $secret="aaaaa";
	public $flag;
}


$o=new test();
$o->flag=&$o->secret;
echo $o->secret."\n";
echo $o->flag;
