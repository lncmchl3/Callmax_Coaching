<!DOCTYPE html>
<?php
include ('../text/text.php');
?>

<html>
    <head>
        <!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
        <link rel='icon' href='../img/favicon.png' type='image/x-icon'/>
        <link rel="stylesheet" type="text/css" href="../css/html-style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/d3js/5.16.0/d3.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
        if ($_SESSION['demerits']=='QAV' || $_SESSION['demerits']=='SUPERADMIN') {
            $account = @$_GET['account'];
            $kash = @$_GET['kash'];
            $agentname = @$_GET['agentname']; ?>


    <header>
        <div class="container">
          <div class="heading">
            <div id="branding">
                  <h1><img src="../img/favicon.png" alt="logo" /> <?php echo $text['header'];?></h1>
            </div>

            <nav>
                <ul>
                  <li><a href="#"><?php echo $_SESSION['name']; ?> </a></li>
                  <li ><a href='reports.php'><?php echo $text['dashboard']; ?></a></li>
                  <li class="current"><a href='sendReport.php'><?php echo $text['send-report']; ?></a></li>
                  <li><a href='../logout.php?logout' onclick="return confirm('Are you sure you want to logout?')"><?php echo $text['logout']; ?></a></li>
                </ul>
            </nav>
          </div>
        </div>
    </header>





          <div class="container">

              <div class="sendReport-box">


                <div class="sendReportform">
                  <div>
                    <h1><?php echo $text['coaching-form']; ?></h1>
                  </div>

                  <div class="agentName">
                      <label><?php echo $text['agentname']; ?>:</label>
                    <select id="nameSel" name="agentname" class="select" required>
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
                    <script type="text/javascript">
                          document.getElementById('nameSel').value = "<?php echo $_GET['agentname'];?>";
                    </script>
                  </div>
                  <!-- end of agentName -->

                  <form>
                  <div class="accountSelect">
                    <label><?php echo $text['account']; ?>:</label>
                      <select id="accountSel" name="account" onchange="this.form.submit()" required>
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
                      <script type="text/javascript">
                          document.getElementById('accountSel').value = "<?php echo $_GET['account'];?>";
                    </script>
                    </form>
                  </div>
                  <!-- end of accountSelect -->
                </div>
                <!-- end of sendReportform -->
              </div>
              <!-- end of sendReport-box -->


              <!-- statement for checking the issue -->
              <div class="selectedIssue-box">
                <form class="selectedIssue" method="post" action="processQAReport.php">
                    <input type="hidden" name="agentname" value="<?php echo $agentname; ?>" required>
                    <input type="hidden" name="account" value="<?php echo $account; ?>" required>
                  <?php
                  if($account != "" || $account != null){
                    
                  $query = "SELECT * FROM qa_form  WHERE account = '".$account."'";
                       $result = mysqli_query($connection, $query);
                       if (mysqli_num_rows($result) > 0) {
                           while ($row = mysqli_fetch_assoc($result)) {
                               ?>
                             <?php include 'qaform.php';?>
                               <?php
                           }
                          }
                        }

                    ?>

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
</body>
</html>
