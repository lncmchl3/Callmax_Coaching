<!DOCTYPE html>
<?php
include ('text/text.php');
?>
<?php
    $n = $_GET['n'];
?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/html-style.css">
        <link rel='icon' href='img/favicon.png' type='image/x-icon'/ >
        <title><?php $text['header']; ?></title>
    </head>
    <body  onload="disableBackButton()" onunload="disableBackButton()">

      <header>
          <div class="container">
            <div class="heading">
              <div id="branding">
                  <h1><img src="img/favicon.png" alt="logo" /> <?php echo $text['header'];?></h1>
              </div>

              <nav>
                  <ul>
                    <li><a href="index.php"><?php echo $text['login']; ?></a></li>
                  </ul>
              </nav>
            </div>
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
                      <h1><?php echo $text['reg-success']; ?></h1>
                      <a href="index.php" class="button"><?php echo $text['click-login-here']; ?></a>
                    </div>
                  </div>


                <!-- if Successful -->

              <?php
                          } elseif ($n == "verify") {
                              ?>

              <!-- if failed -->

              <div class="subcontainer">
                <div class="failSuccess">
                  <h1><?php echo $text['reg-failed']; ?></h1>
                  <a href="reg.php" class="button"><?php echo $text['reg-again']; ?></a>
                </div>
              </div>

                <!-- if failed -->


              <?php
                          }
                      } catch (exception $e) {
                          ?>

                <div class="subcontainer">
                  <div class="failSuccess">
                    <h1><?php echo $text['acccess-denied']; ?></h1>
                    <a href="reg.php" class="button"><?php echo $text['click-here']; ?></a>
                  </div>
                </div>

              <?php
                      }
              ?>

        </div>
        <!-- end of container -->

        <div id="freepik1">
            <a href="https://stories.freepik.com/work"><?php echo $text['freepik']; ?></a>
        </div>

      </div>
      <!-- end of greetBox -->


      <footer>
          <h4><?php echo $text['footer']; ?></h4>
      </footer>

    </body>
</html>
