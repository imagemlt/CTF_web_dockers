<?php

        $conn = mysql_connect("localhost", "root", "toor");

        mysql_select_db("phpformysql") or die("Could not select database");
        if ($conn->connect_error) {
                die("Connection failed: " . mysql_error($conn));
}

