<?php
    include '../connection.php';
    // if(isset($_POST['submit'])){
        $id = $_POST['agent_report_id'];
        $action = $_POST['actionPlan'];
        $tl = $_POST['tl'];

        echo $id."<br/>";
        echo $action."<br/>";
        echo $tl;
    $query = "UPDATE agent_reports SET coaching_date = NOW(), team_leader = '".$tl."', action_plan = '".$action."', status = 'Submitted' WHERE id =".$id;
            mysqli_query($connection, $query);
    $query2 = "UPDATE qa_record SET coaching_date = NOW(), tl = '".$tl."', action_plan = '".$action."', status = 'Submitted' WHERE report_id =".$id;
            mysqli_query($connection, $query2);
            header('location: info.php?n='.$id.'&type=QA Report&string=&status=Submitted');
    // }

?>