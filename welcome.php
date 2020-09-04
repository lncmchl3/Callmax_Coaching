<!DOCTYPE html>

<?php
    $n = $_GET['n'];
?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/html-style.css">
        <link rel="icon" href="searchicon.png">
        <title>Callmax Solutions Coaching System</title>
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



      <div class="greetBox">
        <div class="container">

                  <?php
                      try {
                          if ($n=='verified') {
                              ?>
                  <!-- if Successful -->

                  <div class="subcontainer">
                    <div class="failSuccess">
                      <h1>Registration Successful</h1>
                      <a href="index.php" class="button">Click here to login</a>
                    </div>
                  </div>


                <!-- if Successful -->

              <?php
                          } elseif ($n == "verify") {
                              ?>

              <!-- if failed -->

              <div class="subcontainer">
                <div class="failSuccess">
                  <h1>Registration Failed, Please check availability of registration</h1>
                  <a href="reg.php" class="button">Click here to register again</a>
                </div>
              </div>

                <!-- if failed -->


              <?php
                          }
                      } catch (exception $e) {
                          ?>

                <div class="subcontainer">
                  <div class="failSuccess">
                    <h1>Access Denied</h1>
                    <a href="reg.php" class="button">Click here</a>
                  </div>
                </div>

              <?php
                      }
              ?>

        </div>
        <!-- end of container -->

        <div id="freepik1">
          <a href="https://stories.freepik.com/work">Designed by Freepik</a>
        </div>

      </div>
      <!-- end of greetBox -->


    <footer>
        <h4>Callmax Solutions Coaching System, Copyright &copy; 2020</h4>
    </footer>

    </body>
</html>
