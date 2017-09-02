<?php

        $conn = mysql_connect("localhost", "web9", "web9");

        mysql_select_db("phpformysql2") or die("Could not select database");
        if ($conn->connect_error) {
                die("Connection failed: " . mysql_error($conn));
}

