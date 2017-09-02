<?php

        $conn = mysql_connect("localhost", "web11", "web11");

        mysql_select_db("phpformysql") or die("Could not select database");
        if ($conn->connect_error) {
                die("Connection failed: " . mysql_error($conn));
}

