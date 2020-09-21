<?php
    require('../connection.php');
    if (isset($_POST['submit'])) {
        $agent = $_POST['agentname'];
        $qa = $_POST['submittedby'];
        $account = $_POST['account'];
        $wrongAnswer = $_REQUEST['wrongAnswer'];
        $error = $_REQUEST['error'];
        $answer = $_REQUEST['answer'];
        $item = $_REQUEST['item'];
        $minor=0;
        $major=0;
        $TotalDeduction=0;
        $items = array();    
        for ($i=0; $i < count($wrongAnswer); $i++) { 
            if ($wrongAnswer[$i] == $answer[$i]) {
                if ($error[$i] == "Minor") {
                    $minor++;
                    $TotalDeduction++;
                    array_push($items, $item[$i]);
                }
                if ($error[$i] == "Major") {
                    $major++;
                    $TotalDeduction = $TotalDeduction+5;
                    array_push($items, $item[$i]);
                }
            }
        }
        // echo implode("\n", $items);
        $query1 = "INSERT INTO agent_reports(agent, account, report_type, date_issued, status, team_leader) VALUES ('" .$agent."', '".$account."', 'QA Report', NOW(), 'Submitted', '".$sessionUser."')";
        mysqli_query($connection, $query1);
        $last_id = mysqli_insert_id($connection);

        $query = "INSERT INTO qa_record(report_id, agent, account, minor, major, total_deduction, qa, date, error_items, suggestion) 
        VALUES(".$last_id.", '".$agent."', '".$account."', ".$minor.", ".$major.", '".$TotalDeduction."', '".$qa."', NOW(), '".implode(',\n',$items)."', 'No suggestions');";
        mysqli_query($connection, $query);
    }
    header('location:reports.php');
?>