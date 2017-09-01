<?php
header('Location: http://'.$_SERVER['SERVER_NAME'].':'.$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"].substr($_SERVER["REQUEST_URI"],1,strlen($_SERVER['REQUEST_URI'])-2).'.php');
