<?php
    require('../connection.php');
    if (isset($_POST['submit'])) {
        $sessionUser = $_POST['s'];
        $agentname = $_POST['agentname'];
        $account = $_POST['account'];
        echo $agentname."<br/>";
        echo $account."<br/>";

        $query1 = "INSERT into agent_reports(agent, account, report_type, date_issued, status, team_leader) VALUES ('" .$agentname."', '".$account."', 'TL Report', NOW(), 'Submitted', '".$sessionUser."')";
        mysqli_query($connection,$query1);
        $last_id = mysqli_insert_id($connection);

        if (isset($_REQUEST['KnowledgeAnswer'])) {
            $kash_requirement = 'Knowledge';
            $Kanswers = $_REQUEST['KnowledgeAnswer'];
            $kash_standard_score = $_REQUEST['kash_standard_score'];
            $KnowledgeQuestions = $_REQUEST['KnowledgeQuestions'];
            for ($i=0, $j=0; $i < count($Kanswers) && $j < count($KnowledgeQuestions); $i++, $j++) {
                if ($kash_standard_score[$j]==1) {
                    $equivalent_word = "aware";
                    //query to insert data to database
            $query = "INSERT INTO picard_dump (report_id, name, account, kash_requirement, questions, scores, standard_score, equivalent_word) VALUES('".$last_id."','".$agentname."','".$account."', '".$kash_requirement."', '".$KnowledgeQuestions[$j]."', '".$Kanswers[$i]."','".$kash_standard_score[$j]."', 'aware')";
            mysqli_query($connection, $query);
                }
                if ($kash_standard_score[$j]==2) {
                    $equivalent_word = "understand";
                    //query to insert data to database
            $query = "INSERT INTO picard_dump (report_id, name, account, kash_requirement, questions, scores, standard_score, equivalent_word) VALUES('".$last_id."','".$agentname."','".$account."', '".$kash_requirement."', '".$KnowledgeQuestions[$j]."', '".$Kanswers[$i]."','".$kash_standard_score[$j]."', 'understand')";
            mysqli_query($connection, $query);
                }
                if ($kash_standard_score[$j]==3) {
                    $equivalent_word = "do";
                    //query to insert data to database
            $query = "INSERT INTO picard_dump (report_id, name, account, kash_requirement, questions, scores, standard_score, equivalent_word) VALUES('".$last_id."','".$agentname."','".$account."', '".$kash_requirement."', '".$KnowledgeQuestions[$j]."', '".$Kanswers[$i]."','".$kash_standard_score[$j]."', 'do')";
            mysqli_query($connection, $query);
                }
                if ($kash_standard_score[$j]==4) {
                    $equivalent_word = "justify";
                    $query = "INSERT INTO picard_dump (report_id, name, account, kash_requirement, questions, scores, standard_score, equivalent_word) VALUES('".$last_id."','".$agentname."','".$account."', '".$kash_requirement."', '".$KnowledgeQuestions[$j]."', '".$Kanswers[$i]."','".$kash_standard_score[$j]."', 'justify')";
            mysqli_query($connection, $query);
                }
                if ($kash_standard_score[$j]==5) {
                    $equivalent_word = "propose";
                    //query to insert data to database
            $query = "INSERT INTO picard_dump (report_id, name, account, kash_requirement, questions, scores, standard_score, equivalent_word) VALUES('".$last_id."','".$agentname."','".$account."', '".$kash_requirement."', '".$KnowledgeQuestions[$j]."', '".$Kanswers[$i]."','".$kash_standard_score[$j]."', 'propose')";
            mysqli_query($connection, $query);
                }                
        }
        }
        if (isset($_REQUEST['AttitudeAnswer'])) {
            $kash_standard_score = $_REQUEST['kash_standard_score'];
            $kash_requirement = 'Attitude';
            $Aanswers = $_REQUEST['AttitudeAnswer'];
            $AttitudeQuestions = $_REQUEST['AttitudeQuestions'];
            for ($i=0, $j=0; $i < count($Aanswers) && $j < count($AttitudeQuestions); $i++, $j++) {

                //query to insert data to database
            $query = "INSERT INTO picard_dump (report_id, name, account, kash_requirement, questions, scores, standard_score) VALUES('".$last_id."','".$agentname."','".$account."', '".$kash_requirement."', '".$AttitudeQuestions[$j]."', '".$Aanswers[$i]."','".$kash_standard_score[$j]."');";
            mysqli_query($connection, $query);
            
            // sql1 = "insert into agent_reports(report_id, agent, account, report_type, date_issued, status) VALUES ('" + lastID + "','" + agentname + "', '" + account + "', 'HR Report', NOW(), 'Submitted')";
        }
        }
        if (isset($_REQUEST['SkillsAnswer'])) {
            $kash_standard_score = $_REQUEST['kash_standard_score'];
            $kash_requirement = 'Skills';
            $Sanswers = $_REQUEST['SkillsAnswer'];
            $SkillsQuestions = $_REQUEST['SkillsQuestions'];
            for ($i=0, $j=0; $i < count($Sanswers) && $j < count($SkillsQuestions); $i++, $j++) {
                //query to insert data to database
            $query = "INSERT INTO picard_dump (report_id, name, account, kash_requirement, questions, scores, standard_score) VALUES('".$last_id."','".$agentname."','".$account."', '".$kash_requirement."', '".$SkillsQuestions[$j]."', '".$Sanswers[$i]."','".$kash_standard_score[$j]."')";
            mysqli_query($connection, $query);
        }
        }
        if (isset($_REQUEST['HabitAnswer'])) {
            $kash_standard_score = $_REQUEST['kash_standard_score'];
            $kash_requirement = 'Habit';    
            $Hanswers = $_REQUEST['HabitAnswer'];
            $HabitQuestions = $_REQUEST['HabitQuestions'];
            for ($i=0, $j=0; $i < count($Hanswers) && $j < count($HabitQuestions); $i++, $j++) {
                //query to insert data to database
            $query = "INSERT INTO picard_dump (report_id, name, account, kash_requirement, questions, scores, standard_score) VALUES('".$last_id."','".$agentname."','".$account."', '".$kash_requirement."', '".$HabitQuestions[$j]."', '".$Hanswers[$i]."','".$kash_standard_score[$j]."')";
            mysqli_query($connection, $query);
        }
        }
        
     header("location: AgentSearch.php");
    }

    ?>