
<?php
session_start(); 

include("flag.php");
show_source(__FILE__);

if (isset ($_GET['password'])) {
    if ($_GET['password'] == $_SESSION['password'])
        die ('Flag: '.$flag);
    else
        print '<p>Wrong guess.</p>';
}

mt_srand((microtime() ^ rand(1, 10000)) % rand(1, 10000) + rand(1, 10000));
$_SESSION['password'] = mt_rand(); 

?>
