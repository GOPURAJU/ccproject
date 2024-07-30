<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$con = mysqli_connect("database-3.ch0ymcuikejv.eu-north-1.rds.amazonaws.com", "admin", "cc12345678", "ccproject");
if (mysqli_connect_errno()) {
    echo "Connection Failed: " . mysqli_connect_error();
} else {
    echo "Connected successfully!";
}
?>
