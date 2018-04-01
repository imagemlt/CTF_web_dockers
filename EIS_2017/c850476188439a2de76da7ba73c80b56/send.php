<?php
error_reporting(0);
$postfields=$_POST['content'];
if(preg_match('/php|script|</is',$postfields)){
    die("<meta charset='utf-8'>上传的文件中含有非法字符！");
}
$substitutions=array(
    '.'=>'',
    '/'=>''
);
$extension=str_replace(array_keys( $substitutions ), $substitutions,$_POST['ext']);
$filename=mt_rand(0,255).'.'.$extension;
file_put_contents('/tmp/'.$filename,$postfields);
$data=file_get_contents('/tmp/'.$filename);
if($extension=='php'&&preg_match('/<\?php|<script\s*language=[\'\"]*php[\'\"]*/is',$data)){
file_put_contents($_SERVER['DOCUMENT_ROOT'].'/c850476188439a2de76da7ba73c80b56/uploads/'.$filename,'flag{6yp455_with_4rr4y}');
}
else{
file_put_contents($_SERVER['DOCUMENT_ROOT'].'/c850476188439a2de76da7ba73c80b56/uploads/'.$filename,$data);
}
unlink('/tmp/'.$filename);
echo "<meta charset='utf-8'><h3>文件成功保存至<a href='uploads/".$filename."'>/uploads/".$filename."</a></h3>";
