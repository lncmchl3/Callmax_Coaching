
<?php include ('../text/text.php'); ?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel='icon' href='../img/favicon.png' type='image/x-icon'/>
        <title><?php echo $text['info-title']; ?></title>
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
          <div class="heading">
            <div id="branding">

                <h1><img src="../img/favicon.png" alt="logo" /><?php echo $text['header']; ?></h1>
            </div>
            <nav>
                <ul>
                  <li><a href=""><?php echo $_SESSION['name']; ?> </a></li>
                  <li><a href='AgentSearch.php'><?php echo $text['dashboard']; ?></a></li>
                  <li class="current"><a href=""><?php echo $text['info']; ?></a></li>
                  <li><a href='sendReport.php'><?php echo $text['send-report']; ?></a></li>
                  <li><a href='../logout.php?logout' onclick="return confirm('Are you sure you want to logout?')"><?php echo $text['logout']; ?></a></li>
                </ul>
            </nav>
          </div>
        </div>
    </header>


  <!-- <form  method="post" action="AgentSearch.php" autocomplete="off" class="active">
  	<button class="button "type="submit">Back to dashboard</button>
  </form> -->

  <div class="container">
    <div class="infoContainer">
      <?php
      if($report_type == "TL Report"){
          if ($status == "Pending") {
      ?>
      <div class="agentInfobox">
        <table class="agentInfo">
          <thead>
            <tr>
              <th colspan="2"><?php echo $text['agent-info']; ?></th>
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
                  <th><?php echo $text['name']; ?>: </th>
                  <td><?php echo $row['agent']; ?></td>
                </tr>
                <tr>
                  <th><?php echo $text['account']; ?>: </th>
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
      <h2><?php echo $text['qan-result']; ?></h2>
      <table class="resultTable">

                <?php
                    $query = "SELECT * FROM qan_data where id = ".$report_id;
                    $result = mysqli_query($connection, $query);
                ?>

                <thead>
                  <tr>
                      <th><?php echo $text['potential-cause']; ?></th>
                      <th><?php echo $text['severity']; ?></th>
                      <th><?php echo $text['occurence']; ?></th>
                      <th><?php echo $text['detection']; ?></th>
                      <th><?php echo $text['rpn']; ?></th>
                      <th><?php echo $text['qa-score']; ?></th>
                      <th><?php echo $text['recommended']; ?></th>
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
              <label><?php echo $text['root-cause']; ?></label>
              <textarea id="rootCause" name="rootCause" placeholder='Type Root Cause here' required></textarea>
            </div>

            <div class="action-plan">
              <label><?php echo $text['action-plan']; ?></label>
              <textarea id="actionPlan" name="actionPlan" placeholder='Type Action Plan here' required></textarea>
            </div>

            <div class="rootBtn">
              <button class="button" type="submit" onclick="return confirm('Are you sure you want to Submit?')"><?php echo $text['submit']; ?></button>
            </div>

          </form>
        </div>


      </div>



        <?php } else { ?>

                <div class="agentInfobox">
                  <table class="agentInfo">
                    <thead>
                      <tr>
                        <th colspan="2"><?php echo $text['agent-info']; ?></th>
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
                            <th><?php echo $text['name']; ?>: </th>
                            <td><?php echo $row['agent']; ?></td>
                          </tr>
                          <tr>
                            <th><?php echo $text['account']; ?>: </th>
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
                            <th><?php echo $text['action-plan']; ?></th>
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
                  <form action="acknowledgement.php" method="post">
                  <input type="hidden" value="<?php echo $n; ?>" name="n">
                  <input type="hidden" value="<?php echo $sessionUser; ?>" name="s">
                  <input type="hidden" value="<?php echo $statement; ?>" name="statement">
                  <button class="button" type="submit" name="submit"><?php echo $text['click-ack-link']; ?></button>
                  </form>
                </div>

          <?php }
          } ?>

          <!-- QA REPORT -->
          <?php
      if($report_type == "QA Report"){
          if ($status == "Pending") {
      ?>
      <div class="agentInfobox">
        <table class="agentInfo">
          <thead>
            <tr>
              <th colspan="2"><?php echo $text['agent-info']; ?></th>
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
                  <th><?php echo $text['name']; ?>: </th>
                  <td><?php echo $row['agent']; ?></td>
                </tr>
                <tr>
                  <th><?php echo $text['account']; ?>: </th>
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
      <h2><?php echo $text['qan-result']; ?></h2>
      <table class="resultTable">

                <?php
                    $query = "SELECT * FROM qa_record where report_id = ".$n;
                    $result = mysqli_query($connection, $query);
                ?>

                <thead>
                  <tr>
                      <th><?php echo $text['minor']; ?></th>
                      <th><?php echo $text['major']; ?></th>
                      <th><?php echo $text['deduction']; ?></th>
                  </tr>
                </thead>


                <tbody>
                    <tr>
                        <?php
                        if (mysqli_num_rows($result) > 0) {
                          while ( $row = mysqli_fetch_assoc($result)) {
                        ?>
                        <td style='text-align: center; height: 50px;'><?php echo $row['minor']; ?></td>
                        <td style='text-align: center; height: 50px;'><?php echo $row['major']; ?></td>
                        <td style='text-align: center; height: 50px;'><?php echo $row['total_deduction']; ?></td>
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
            <input type="hidden" name="tl" id="tl" value="<?php echo $sessionUser ?>">
            
            <?php
            $query = "SELECT * FROM qa_record where report_id = ".$n;
            $result = mysqli_query($connection, $query);
            if (mysqli_num_rows($result) > 0) {
              while ( $row = mysqli_fetch_assoc($result)) {
            ?>

            <div class="action-plan">
            <label>Error Items</label>
            <span><?php echo "Here is the missed audit on the agent's call, please see below of the details.<br/><br/>".$row['error_items']; ?></span>
            </div>
            <audio controls>
              <source src="../uploads/<?php echo $row['filename'];?>" type="audio/mpeg">
            Your browser does not support the audio element.
            </audio>
            <div class="action-plan">
            <label>Suggested Coaching</label>
            <span><?php echo $row['suggestion']; ?></span>
            </div>
              <?php }
              }?>
            <div class="action-plan">
              <label><?php echo $text['action-plan']; ?></label>
              <textarea id="actionPlan" name="actionPlan" placeholder='Type Action Plan here' required></textarea>
            </div>

            <div class="rootBtn">
              <button class="button" type="submit" onclick="return confirm('Are you sure you want to Submit?')"><?php echo $text['submit']; ?></button>
            </div>

          </form>
        </div>


      </div>



        <?php } else { ?>

                <div class="agentInfobox">
                  <table class="agentInfo">
                    <thead>
                      <tr>
                        <th colspan="2"><?php echo $text['agent-info']; ?></th>
                      </tr>
                    </thead>
                    <tbody>

                      <?php
                      $query1 = "SELECT * FROM qa_record WHERE report_id=".$n;
                      $result1 = mysqli_query($connection, $query1);
                      if (mysqli_num_rows($result1) > 0) {
                        while ( $row = mysqli_fetch_assoc($result1)) {
                          ?>
                          <tr>
                            <th><?php echo $text['name']; ?>: </th>
                            <td><?php echo $row['agent']; ?></td>
                          </tr>
                          <tr>
                            <th><?php echo $text['account']; ?>: </th>
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

                  <input type="hidden" name="agent_report_id" id="agent_report_id" value="<?php echo $n ?>">
                  <?php
                      $query = "SELECT * FROM qa_record WHERE report_id = ".$n;
                              $result = mysqli_query($connection, $query);
                          if (mysqli_num_rows($result) > 0) {
                              while ( $row = mysqli_fetch_assoc($result)) {
                                ?>
                                <table class="actionplan">
                                <thead>
                                    <tr>
                                      <th><?php echo $text['error-items']; ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr>
                                <td style=" height: 100px; text-align: center;">
                                <span><?php echo "Here is the missed audit on the agent's call, please see below of the details.<br/><br/>".$row['error_items']; ?></span>
                                <br/><br/>
                                <audio controls>
                                  <source src="../uploads/<?php echo $row['filename'];?>" type="audio/mpeg">
                                Your browser does not support the audio element.
                                </audio>

                                </td>
                                </tr>
                                </tbody>
                                </table>
                                <table class="actionplan">
                                <thead>
                                    <tr>
                                      <th><?php echo $text['suggestion']; ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr>
                                <td style=" height: 100px; text-align: center;">
                                <span><?php echo $row['suggestion']; ?></span>
                                </td>
                                </tr>
                                </tbody>
                                </table>
                                <table class="actionplan">
                                <thead>
                                    <tr>
                                      <th><?php echo $text['action-plan']; ?></th>
                                    </tr>
                                </thead>
                                <tbody>
                                <tr>
                                <td style=" height: 100px; text-align: center;">
                                <span><?php echo $row['action_plan']; ?></span>
                                </td>
                                </tr>
                                </tbody>
                                </table>
                          <?php 
                           }
                      } ?>
                  <form action="acknowledgement.php" method="post">
                  <input type="hidden" value="<?php echo $n; ?>" name="n">
                  <input type="hidden" value="<?php echo $sessionUser; ?>" name="s">
                  <input type="hidden" value="<?php echo $statement; ?>" name="statement">
                  <button class="button" type="submit" name="submit"><?php echo $text['click-ack-link']; ?></button>
                  </form>
              </div>

          <?php }
          } ?>

    </div>
    <!-- end of infoContainer -->
  </div>
    <!-- end of container -->




</div>
    <?php
        }else{
            header("location:../error/error.php");
        }
    }else{
        header("location:../index.php?e=Please Log in");
    }
?>



<footer>
     <h4>Callmax Solutions Coaching System, Copyright &copy; 2020</h4>
</footer>
</body>
</html>
