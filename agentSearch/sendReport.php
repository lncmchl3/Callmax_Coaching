<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="searchicon.png">
        <link rel="stylesheet" type="text/css" href="../css/html-style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/d3js/5.16.0/d3.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            var $row = $('<tr>'+
                  '<td>awawaww</td>'+
                  '<td>adsdsdsd</td>');
            $('table> tbody:last').append($row);
        </script>
        <title>Callmax Solutions Coaching System | Send Report</title>

    </head>
    <body  onload="disableBackButton()" onunload="disableBackButton()">
        <?php
    require('../connection.php');

    session_start();
    if (isset($_SESSION['name'])) {
        if ($_SESSION['demerits']=='TL' || $_SESSION['demerits']=='SUPERADMIN') {

            $account = @$_GET['account'];
            $kash = @$_GET['kash'];
            $agentname = @$_GET['agentname'];
    ?>
    <header>
        <div class="container">

            <div id="branding">
                <h1>Callmax Solutions Coaching System</h1>
            </div>

            <nav>
                <ul>
                  <li><a href='../logout.php?logout' onclick="return confirm('Are you sure you want to logout?')">Log out</a></li>
                  <li class="current"><a href='sendReport.php'>Send Report</a></li>
                  <li ><a href='AgentSearch.php'>Dashboard</a></li>
                  <li><a href="#"><?php echo $_SESSION['name']; ?> </a></li>
                </ul>
            </nav>

        </div>
    </header>

    <div class="container">
      <div class="subcontainer">
        <div class="sendReport-box">

          <form class"sendReportform">
            <div>
              <h1>Coaching Form</h1>
            </div>

            <div class="agentName">
                <label>Agent's Name:</label>
              <select name="agentname"  class="select" required>
                  <?php if ($agentname == "" || $agentname == null) { ?>
                <option value="">Select Name</option>
                  <?php }
                  else{ ?>
                <option value=""><?php echo $agentname; ?></option>
                  <?php } ?>
                  <?php
                    $query = "SELECT * FROM agents";
                    $result = mysqli_query($connection, $query);
                      if (mysqli_num_rows($result) > 0) {
                        while ( $row = mysqli_fetch_assoc($result)) {
                  ?>
                <option value='<?php echo $row['fullname']; ?>'><?php echo $row['fullname']; ?></option>
                  <?php }
                  } ?>
              </select>
            </div>
            <!-- end of agentName -->


            <div class="accountSelect">
              <label>Account:</label>
                <select class="select" name="account" required  onchange="this.form.submit()">
                    <?php if ($account == "" || $account == null) { ?>
                  <option value="">Select Account</option>
                    <?php }else{ ?>
                  <option value=""><?php echo strtoupper($account); ?></option>
                    <?php } ?>
                    <?php
                    $query = "SELECT * FROM accounts";
                    $result = mysqli_query($connection, $query);
                      if (mysqli_num_rows($result) > 0) {
                        while ( $row = mysqli_fetch_assoc($result)) {
                    ?>
                  <option value='<?php echo $row['name']; ?>'><?php echo strtoupper($row['name']); ?></option>
                    <?php }
                    } ?>
                </select>
            </div>
            <!-- end of accountSelect -->



            <div class="issueSelect">
              <label><?php echo $kash." Issue:"; ?></label>

                <input type="hidden" name="agentname" value="<?php echo $agentname; ?>">
                <input type="hidden" name="account" value="<?php echo $account; ?>">

                <select name="kash" onchange="this.form.submit()" required>
                    <option>Select Issue</option>
                    <option value="Knowledge">Knowledge</option>
                    <option value="Attitude">Attitude</option>
                    <option value="Skill">Skill</option>
                    <option value="Habit">Habit</option>
                </select>

            </div>
            <!-- end of issueSelect -->

          </form>
          <!-- end of sendReportform -->
        </div>
        <!-- end of sendReport-box -->

      </div>






        <!-- statement for checking the issue -->
        <div class="selectedIssue-box">
          <form class="selectedIssue" method="post" action="processReport.php">
              <input type="hidden" name="agentname" value="<?php echo $agentname; ?>">
              <input type="hidden" name="account" value="<?php echo $account; ?>">

            <?php
                if ( @$_GET['kash'] == "Knowledge") {
                    include('kash/knowledge.php');
                }else if (@$_GET['kash'] == "Attitude") {
                    include('kash/attitude.php');
                }else if (@$_GET['kash'] == "Skill") {
                    include('kash/skill.php');
                }else if (@$_GET['kash'] == "Habit") {
                    include('kash/habit.php');
                }else{
                    echo "Please Select Issue.";
                }
            ?>

            <div class="issueBtn">
              <input type="hidden" value="TL" name="submittedby">
              <button class="button" type="submit" name="submit">Submit</button>
            </div>

        </form>
      <!-- end of selectedIssue -->

      <!-- <button name="add" style="float: right">+</button>   -->
      </div>
      <!-- end selectedIssue-box -->





    </div>
    <!-- end of container -->










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
