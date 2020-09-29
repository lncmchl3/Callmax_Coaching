<?php
    include '../connection.php';
        // if(isset($_POST['submit'])){
        $account = $_POST['account'];
        $status = $_POST['status'];
        $query = "INSERT INTO accounts (status, name) VALUES('".$status."','".$account."')";
                mysqli_query($connection, $query);
        // header('location: addaccount.php');
    // }
?>