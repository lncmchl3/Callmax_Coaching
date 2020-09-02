<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="searchicon.png">
        <title>Callmax Solutions Coaching System | Info </title>
        <link rel="stylesheet" type="text/css" href="../css/html-style.css">
    </head>
    <body>
    	<?php
    require('../connection.php');

    session_start();
    if (isset($_SESSION['name'])) {
        if ($_SESSION['demerits']=='TL' || $_SESSION['demerits']=='SUPERADMIN') {
        	$sessionUser = $_SESSION['name'];
        	$report_type = $_GET['type'];
        	$status = $_GET['status'];
        	$report_id = $_GET['string'];
        	$n = $_GET['n'];
    ?>



    <header>
        <div class="container">

            <div id="branding">

                <h1>Callmax Solutions Coaching System</h1>
            </div>
            <nav>
                <ul>
                  <li><a href='../logout.php?logout' onclick="return confirm('Are you sure you want to logout?')">Log out</a></li>
                  <li><a href='sendReport.php'>Send Report</a></li>
                  <li class="current"><a href='AgentSearch.php'>Info</a></li>
                  <li><a href="#"><?php echo $_SESSION['name']; ?> </a></li>
                </ul>
            </nav>
        </div>
    </header>

<form style="float: right;"  method="post" action="AgentSearch.php" autocomplete="off" class="active">
	<button type="submit">Back</button>
</form>

<div class="main-content">

<?php
		if ($status == "Pending") {
?>
<center>
        <div class="table_div">
            <table border='1' width='50%'>

                <tr>
                    <th width='15%'>
                        Team Leader:
                    </th>
                    <td>
                        <?php echo $sessionUser; ?>
                    </td>
                </tr>

            </table>
            <table border = "1" style="width: 50%;">

                <thead>
                    <tr>
                        <th colspan="2">Agent's Information</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $query1 = "SELECT * FROM agent_reports WHERE id=".$n;
                        $result1 = mysqli_query($connection, $query1);
                        if (mysqli_num_rows($result1) > 0) {
                        while ( $row = mysqli_fetch_assoc($result1)) {
                    ?>

                    <tr>
                        <th style=" text-align: left; width: 10%;">Name: </th>
                        <td style=" text-align: left;"><?php echo $row['agent']; ?></td>
                    </tr>
                    <tr>
                        <th style=" text-align:left; width: 10%;">Account: </th>
                        <td style=" text-align: left;"><?php echo $row['account']; ?></td>
                    </tr>
                    <?php
                		}
                	}
                	?>
                </tbody>
            </table>
            <table border = "1" style="width: 100%;">

                <?php
                    $query = "SELECT * FROM qan_data where id = ".$report_id;
                    $result = mysqli_query($connection, $query);
                ?>

                <thead>
                    <tr>
                        <th colspan="7">QA - Non-Voice Result</th>
                    </tr>
                </thead>
                <tr>
                    <th>Potential Cause of Failures</th>
                    <th>Severity</th>
                    <th>Occurrence</th>
                    <th>Detection</th>
                    <th>RPN</th>
                    <th>QA Score</th>
                    <th>Recommended Action</th>
                </tr>

                <tbody>
                    <tr>
                        <?php
                        if (mysqli_num_rows($result) > 0) {
                        	while ( $row = mysqli_fetch_assoc($result)) {
                        ?>
                        <td style='width: 40%'><?php echo str_replace(",", "<br/>",$row['potential_cause_of_failure']); ?></td>
                        <td style='text-align: center; width: 6%;'><?php echo $row['severity']; ?></td>
                        <td style='text-align: center; width: 6%;'><?php echo $row['occurence']; ?></td>
                        <td style='text-align: center; width: 6%;'><?php echo $row['detection']; ?></td>
                        <td style='text-align: center; width: 6%;'><?php echo $row['rpn']; ?></td>
                        <td style='text-align: center; width: 6%;'><?php echo number_format($row['qascore'],2); ?>%</td>
                        <td style='width: 30%'><?php echo $row['recommended_action']; ?></td>
                        <?php }
                    } ?>
                    </tr>
                </tbody>
            </table><br/>
            <form  method="post" action="coachingAdding.php" autocomplete="off" class="active">
                <input type="hidden" name="agent_report_id" id="agent_report_id" value="<?php echo $n; ?>">
                <table border='1' width='100%'>
                    <thead>
                        <tr>
                            <th>Root Cause</th>
                            <th>Action Plan</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <textarea id="rootCause" name="rootCause" rows="7" placeholder='Type Root Cause here' required></textarea>
                            </td>
                            <td>
                                <textarea id="actionPlan" name="actionPlan" rows="7" placeholder='Type Action Plan here' required></textarea>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <button type="submit" onclick="return confirm('Are you sure you want to Submit?')">Submit</button>
            </form>
        </div>
    </center>
    <?php } else { ?>
    <center>
        <div class="table_div">
            <table border='1' width='50%'>

                <tr>
                    <th width='15%'>
                        Team Leader:
                    </th>
                    <td>
                        <?php echo $sessionUser; ?>
                    </td>
                </tr>

            </table>
            <table border = "1" style="width: 50%;">


                <thead>
                    <tr>
                        <th colspan="2">Agent's Information</th>
                    </tr>
                </thead>
                <tbody>
                	<?php

                        $query1 = "SELECT * FROM agent_reports WHERE id = ".$n;
                        $result1 = mysqli_query($connection, $query1);
                        if (mysqli_num_rows($result1) > 0) {
                        while ( $row = mysqli_fetch_assoc($result1)) {
                    ?>
                    <tr>
                        <th style=" text-align: left; width: 10%;">Name: </th>
                        <td style=" text-align: left;"><?php echo $row['agent']; ?></td>
                    </tr>
                    <tr>
                        <th style=" text-align:left; width: 10%;">Account: </th>
                        <td style=" text-align: left;"><?php echo $row['account']; ?></td>
                    </tr>
                    <?php }
                } ?>
                </tbody>
            </table><br/>
            <table border='1' width='100%'>
                <thead>
                    <tr>
                    	<th>Action Plan</th>
                    </tr>
                </thead>
                <tbody>
            <input type="hidden" name="agent_report_id" id="agent_report_id" value="<?php echo $n ?>">
            <?php
                $query = "SELECT * FROM picard_dump WHERE report_id = ".$n;
                        $result = mysqli_query($connection, $query);
                        $array = array();
                    if (mysqli_num_rows($result) > 0) {
                        while ( $row = mysqli_fetch_assoc($result)) {
                        	if ($row['kash_requirement'] == 'Attitude') {
                        		if ($row['scores'] < $row['standard_score']) {
									array_push($array, $row['Questions']);
                        	}
                		} else{
                         ?>
                    <tr>
                    	<?php include 'kash/logic.php'; ?>
                    </tr>
                    <?php }
                     }
                } ?>
                <?php if (!empty($array)) {
                	?>
                		<tr>
                			<td style=" height: 100px; text-align: center;">
				                Agent recognizes the importance of being <?php echo implode(", ", $array); ?>. However, TL should be able to impart the importance of being <?php echo implode(", ", $array); ?> to both the agent and the TL, through coaching and mentoring sessions.
				            </td>
                		</tr>
                	<?php
                } ?>
                </tbody>
            </table>
            <a href="acknowledgement.php?n=<?php echo $n; ?>&s=<?php echo $sessionUser; ?>">Click here for the Acknowledgement Link</a>
        </div>
    </center>
    <?php } ?>



</div>
    <?php
        }else{
            header("location:error/error.php");
        }
    }else{
        header("location:index.php?e=Please Log in");
    }
?>
<br/><br/>
<footer>
        <p>Coaching System © Callmax Solutions. All rights reserved.</p>
</footer>
</body>
</html>
