
<?php include ('../text/text.php'); ?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel='icon' href='../img/favicon.png' type='image/x-icon'/>
        <title><?php echo $text['info-title']; ?></title>
        <link rel="stylesheet" type="text/css" href="../css/html-style.css">
    </head>
    <body>
    	<?php
    require('../connection.php');

    session_start();
    if (isset($_SESSION['name'])) {
        if ($_SESSION['demerits']=='QAV' || $_SESSION['demerits']=='SUPERADMIN') {
        	$sessionUser = $_SESSION['name'];
        	// $status = $_GET['status'];
        	// $report_id = $_GET['string'];
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

                <div class="agentInfobox">
                  <table class="agentInfo">
                    <thead>
                      <tr>
                        <th colspan="2"><?php echo $text['agent-info']; ?></th>
                      </tr>
                    </thead>
                    <tbody>

                      <?php
                      $query1 = "SELECT * FROM agent_reports WHERE report_id=".$n;
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
                  <a class ="button" href="acknowledgement.php?n=<?php echo $n; ?>&s=<?php echo $sessionUser; ?>&statement=<?php echo $statement; ?>"><?php echo $text['click-ack-link']; ?></a>
              </div>

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
