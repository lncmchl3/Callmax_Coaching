<!DOCTYPE html>
<style>
    .center {
        display: block;
        margin-left: auto;
        margin-right: auto;
        margin-top: auto;
        margin-bottom: auto;
      }
      a{
        text-decoration: none;
        color: cornflowerblue;
    }
</style>
<?php
    $n = $_GET['n'];
?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/html-style.css">
        <link rel="icon" href="searchicon.png">
        <title>Coaching System - Registration</title>
    </head>
    <body  onload="disableBackButton()" onunload="disableBackButton()">
      <header>
          <div class="container">

              <div id="branding">
                  <h1>Callmax Solutions Coaching System</h1>
              </div>

              <nav>
                  <ul>
                    <!-- <li class="current"><a href='sendReport.php'>Send Report</a></li> -->
                  </ul>
              </nav>

          </div>
      </header>


        <?php
            try {
                if ($n=='verified') {
                    ?>
        <!-- if Successful -->

        <div class="container">
          <h1 class="center">Registration Successful</h1><br/><br/>
          <h5 class ="center"><a href='index.php'>Login Here.</a></h5>
        </div>


      <!-- if Successful -->

    <?php
                } elseif ($n == "verify") {
                    ?>

    <!-- if failed -->
        <h1 class="center">Registration Failed, Please check availability of registration!</h1><br/><br/>
        <h5 class ="center"><a href='reg.php'>Register Again.</a></h5>
      <!-- if failed -->


    <?php
                }
            } catch (exception $e) {
                ?>

    <center>
        <h1 class="center">Access Denied!</h1><br/><br/>
        <h5 class ="center"><a href='index.php'>Click here.</a></h5>
    </center>

    <?php
            }
    ?>

    <footer>
        <h4>Callmax Solutions Coaching System, Copyright &copy; 2020</h4>
    </footer>

    </body>
</html>
