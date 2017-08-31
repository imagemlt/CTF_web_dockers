<?php
if(isset($_GET[1])){
     if(strlen($_GET[1])<8){
          echo shell_exec($_GET[1]);
     }
}
else{
     show_source(__FILE__);
}

?>
