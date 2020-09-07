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
                  <li class="current"><a href="">Info</a></li>
                  <li><a href='AgentSearch.php'>Dashboard</a></li>
                  <li><a href=""><?php echo $_SESSION['name']; ?> </a></li>
                </ul>
            </nav>
        </div>
    </header>


  <!-- <form  method="post" action="AgentSearch.php" autocomplete="off" class="active">
  	<button class="button "type="submit">Back to dashboard</button>
  </form> -->

  <div class="container">
    <div class="infoContainer">
      <?php
          if ($status == "Pending") {
      ?>
      <div class="agentInfobox">
        <table class="agentInfo">
          <thead>
            <tr>
              <th colspan="2">Agent Information</th>
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
                  <th>Name: </th>
                  <td><?php echo $row['agent']; ?></td>
                </tr>
                <tr>
                  <th>Account: </th>
                  <td><?php echo $row['account']; ?></td>
                </tr>
                <?php
              }
            }
            ?>
          </tbody>
        </table>
        <!-- end of agentInfo -->
      </div>
      <!-- end of agentinfobox -->



    <div class="subcontainer">
    <div class="resultBox">
      <h2>QA Non-Voice Result</h2>
      <table class="resultTable">

                <?php
                    $query = "SELECT * FROM qan_data where id = ".$report_id;
                    $result = mysqli_query($connection, $query);
                ?>

                <thead>
                  <tr>
                      <th>Potential Cause of Failures</th>
                      <th>Severity</th>
                      <th>Occurrence</th>
                      <th>Detection</th>
                      <th>RPN</th>
                      <th>QA Score</th>
                      <th>Recommended Action</th>
                  </tr>
                </thead>


                <tbody>
                    <tr>
                        <?php
                        if (mysqli_num_rows($result1) > 0) {
                          while ( $row = mysqli_fetch_assoc($result1)) {
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
            </table>

    </div>
    <!-- end of resultBox -->

    </div>
    <!-- end of subcontainer -->


      <div class="subcontainer">

        <div class="root-action-box">
          <form class="root-action-form" method="post" action="coachingAdding.php" autocomplete="off">

            <input type="hidden" name="agent_report_id" id="agent_report_id" value="<?php echo $n; ?>">

            <div class="root-cause">
              <label>Root Cause</label>
              <textarea id="rootCause" name="rootCause" placeholder='Type Root Cause here' required></textarea>
            </div>

            <div class="action-plan">
              <label>Action Plan</label>
              <textarea id="actionPlan" name="actionPlan" placeholder='Type Action Plan here' required></textarea>
            </div>

            <div class="rootBtn">
              <button class="button" type="submit" onclick="return confirm('Are you sure you want to Submit?')">Submit</button>
            </div>

          </form>
        </div>


      </div>



        <?php } else { ?>

                <div class="agentInfobox">
                  <table class="agentInfo">
                    <thead>
                      <tr>
                        <th colspan="2">Agent Information</th>
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
                            <th>Name: </th>
                            <td><?php echo $row['agent']; ?></td>
                          </tr>
                          <tr>
                            <th>Account: </th>
                            <td><?php echo $row['account']; ?></td>
                          </tr>
                          <?php
                        }
                      }
                      ?>
                    </tbody>
                  </table>
                  <!-- end of t -->
                </div>
                <!-- end of agentinfobox -->

                <div class="actionplanbox">
                  <!-- action plan table -->
                  <table class="actionplan">
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
                            <td>
                              Agent recognizes the importance of being <?php echo implode(", ", $array); ?>. However, TL should be able to impart the importance of being <?php echo implode(", ", $array); ?> to both the agent and the TL, through coaching and mentoring sessions.
                          </td>
                          </tr>
                        <?php
                      } ?>
                      </tbody>
                  </table>
                  <a class ="button" href="acknowledgement.php?n=<?php echo $n; ?>&s=<?php echo $sessionUser; ?>">Click here for the Acknowledgement Link</a>
              </div>

          <?php } ?>

    </div>
    <!-- end of infoContainer -->
  </div>
    <!-- end of container -->




</div>
    <?php
        }else{
            header("location:error/error.php");
        }
    }else{
        header("location:index.php?e=Please Log in");
    }
?>



<footer>
     <h4>Callmax Solutions Coaching System, Copyright &copy; 2020</h4>
</footer>
</body>
</html>
