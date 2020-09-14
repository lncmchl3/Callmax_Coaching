<?php
    require('../connection.php');
    if (isset($_POST['submit'])) {
        $agent = $_POST['agentname'];
        $qa = $_POST['submittedby'];
        $account = $_POST['account'];
        $wrongAnswer = $_REQUEST['wrongAnswer'];
        $error = $_REQUEST['error'];
        $answer = $_REQUEST['answer'];
        $minor=0;
        $major=0;
        $TotalDeduction=0;
        for ($i=0; $i < count($wrongAnswer); $i++) { 
            if ($wrongAnswer[$i] == $answer[$i]) {
                if ($error[$i] == "Minor") {
                    $minor++;
                    $TotalDeduction++;
                }
                if ($error[$i] == "Major") {
                    $major++;
                    $TotalDeduction = $TotalDeduction+5;
                }
            }
        }
        $query = "INSERT INTO qa_record(agent, account, minor, major, total_deduction, qa, date) 
        VALUES('".$agent."', '".$account."', ".$minor.", ".$major.", '".$TotalDeduction."', '".$qa."', NOW());";
        mysqli_query($connection, $query);
    }
    header('location:reports.php');
?>