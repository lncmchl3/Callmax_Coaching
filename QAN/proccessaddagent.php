<?php
    include '../connection.php';
        // if(isset($_POST['submit'])){
        $account = $_POST['account'];
        $agent = $_POST['agent'];
        $am = $_POST['am'];
        $query = "INSERT INTO agents (status, account, fullname, am) VALUES('Active','".$account."','".$agent."','".$am."')";
                mysqli_query($connection, $query);
        header('location: reports.php?account='.$account.'&am='.$am);
    // }
?>