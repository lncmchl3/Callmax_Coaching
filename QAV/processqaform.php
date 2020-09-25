<?php
    include '../connection.php';
        // if(isset($_POST['submit'])){
        $account = $_POST['account'];
        $category = str_replace("'","\'",$_POST['category']);
        $item = str_replace("'","\'",$_POST['item']);
        $answer = $_POST['answer'];
        $error = $_POST['error'];
        $query = "INSERT INTO qa_form (account, category, item, answer, error) VALUES('".$account."','".$category."','".$item."','".$answer."','".$error."')";
                mysqli_query($connection, $query);
        header('location: addqaform.php?account='.$account.'&category='.$category);
    // }
?>