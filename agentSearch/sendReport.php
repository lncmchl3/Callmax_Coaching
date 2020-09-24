<!DOCTYPE html>
<?php
include ('../text/text.php');
?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel='icon' href='../img/favicon.png' type='image/x-icon'/>
        <link rel="stylesheet" type="text/css" href="../css/html-style.css">

        <!-- <script>
            var $row = $('<tr>'+
                  '<td>awawaww</td>'+
                  '<td>adsdsdsd</td>');
            $('table> tbody:last').append($row);
        </script> -->
        <title><?php echo $text['sendreport-title'] ?></title>

    </head>
    <body  onload="disableBackButton()" onunload="disableBackButton()">
        <?php
    require('../connection.php');

    session_start();
    if (isset($_SESSION['name'])) {
        if ($_SESSION['demerits']=='TL' || $_SESSION['demerits']=='SUPERADMIN') {
            $account = @$_GET['account'];
            $kash = @$_GET['kash'];
            $agentname = @$_GET['agentname']; ?>


            <header>
                <div class="container">
                  <div class="heading">
                    <div id="branding">
                      <img src="../img/favicon.png" alt="logo" />  <h1> <?php echo $text['header'];?></h1>
                      <label for="toggled">&#9776;</label>
                      <input type="checkbox" id="toggled" onClick="show()">

                    </div>



                    <div class="menu">
                      <nav>
                          <ul>
                            <li><a href="#"><?php echo $_SESSION['name']; ?> </a></li>
                            <li ><a href='AgentSearch.php'><?php echo $text['dashboard']; ?></a></li>
                            <li class="current"><a href='sendReport.php'><?php echo $text['send-report']; ?></a></li>
                            <li><a href='../logout.php?logout' onclick="return confirm('Are you sure you want to logout?')"><?php echo $text['logout']; ?></a></li>
                          </ul>
                      </nav>
                    </div>

                  </div>
                </div>
            </header>






          <div class="container">

              <div class="sendReport-box">


                <form class= "sendReportform">
                  <div>
                    <h1><?php echo $text['coaching-form']; ?></h1>
                  </div>

                  <div class="agentName">
                      <label><?php echo $text['agentname']; ?>:</label>
                    <select name="agentname"  class="select" required>
                        <?php if ($agentname == "" || $agentname == null) { ?>
                      <option value=""><?php echo $text['select-name']; ?></option>
                        <?php } else { ?>
                      <option value=""><?php echo $agentname; ?></option>
                        <?php } ?>
                        <?php
                          $query = "SELECT * FROM agents";
                  $result = mysqli_query($connection, $query);
                  if (mysqli_num_rows($result) > 0) {
                      while ($row = mysqli_fetch_assoc($result)) {
                          ?>
                      <option value='<?php echo $row['fullname']; ?>'><?php echo $row['fullname']; ?></option>
                        <?php
                      }
                  } ?>
                    </select>
                  </div>
                  <!-- end of agentName -->


                  <div class="accountSelect">
                    <label><?php echo $text['account']; ?>:</label>
                      <select name="account" required  >
                          <?php if ($account == "" || $account == null) { ?>
                        <option value="" disabled selected hidden><?php echo $text['select-account']; ?></option>
                          <?php } else { ?>
                        <option value=""><?php echo strtoupper($account); ?></option>
                          <?php } ?>
                          <?php
                          $query = "SELECT * FROM accounts";
                  $result = mysqli_query($connection, $query);
                  if (mysqli_num_rows($result) > 0) {
                      while ($row = mysqli_fetch_assoc($result)) {
                          ?>
                        <option value='<?php echo $row['name']; ?>'><?php echo strtoupper($row['name']); ?></option>
                          <?php
                      }
                  } ?>
                      </select>



                      <label><?php echo $text['issue']; ?>:</label>


                          <!-- <input type="hidden" name="agentname" value="<?php echo $agentname; ?>">
                          <input type="hidden" name="account" value="<?php echo $account; ?>"> -->

                        <select id="issueSel"name="kash" onchange="this.form.submit()" required>
                            <option value="" disabled selected hidden><?php echo $text['choose-issue']; ?></option>
                            <option value="Knowledge"><?php echo $text['knowledge']; ?></option>
                            <option value="Attitude"><?php echo $text['attitude']; ?></option>
                            <option value="Skill"><?php echo $text['skill']; ?></option>
                            <option value="Habit"><?php echo $text['habit']; ?></option>
                        </select>
                        <script type="text/javascript">
                          document.getElementById('issueSel').value = "<?php echo $_GET['kash'];?>";
                        </script>



                  </div>
                  <!-- end of accountSelect -->
                </form>
                <!-- end of sendReportform -->


                  <!-- <div class="issueSelect">
                    <form class="selectIssue"> -->


                    <!-- </form>

                  </div> -->
                  <!-- end of issueSelect -->


              </div>
              <!-- end of sendReport-box -->








              <!-- statement for checking the issue -->
              <div class="selectedIssue-box">
                <form class="selectedIssue" method="post" action="processReport.php">
                    <input type="hidden" name="agentname" value="<?php echo $agentname; ?>" required>
                    <input type="hidden" name="account" value="<?php echo $account; ?>" required>

                  <?php
                      if (@$_GET['kash'] == "Knowledge") {
                          include('kash/knowledge.php');
                      } elseif (@$_GET['kash'] == "Attitude") {
                          include('kash/attitude.php');
                      } elseif (@$_GET['kash'] == "Skill") {
                          include('kash/skill.php');
                      } elseif (@$_GET['kash'] == "Habit") {
                          include('kash/habit.php');
                      } else {
                        echo "<label>Please Select Issue</label>";

                      } ?>

                  <div class="issueBtn">
                    <input type="hidden" value="TL" name="submittedby">

                    <button class="button" type="submit" name="submit"><?php echo $text['submit']; ?></button>

                <!-- <input type="hidden" name="s" value="<?php echo $_SESSION['name']; ?>">
                    <button class="button" type="submit" name="submit">Submit</button> -->

                  </div>

              </form>
            <!-- end of selectedIssue -->

            <!-- <button name="add" style="float: right">+</button>   -->
            </div>
            <!-- end selectedIssue-box -->





          </div>
          <!-- end of container -->





    <?php
        } else {
            header("location:../error/error.php");
        }
    } else {
        header("location:../index.php?e=Please Log in");
    }
?>
<footer>
    <h4><?php echo $text['footer']; ?></h4>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/d3js/5.16.0/d3.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../js/html-style.js"></script>

</body>
</html>
