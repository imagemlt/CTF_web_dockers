<?php  

show_source(__FILE__);

$filename=__FILE__; 
include("flag.php");
extract($_GET); 
if(isset($shiyan)){ 
    $content=trim(file_get_contents($filename)); 
    if($shiyan==$content) { echo $flag; } 
    else{ echo'Oh.no';} }

?>
