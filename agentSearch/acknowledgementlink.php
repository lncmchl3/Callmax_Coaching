<!DOCTYPE html>
<?php include ('../text/text.php'); ?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="../css/html-style.css">
        <link rel='icon' href='../img/favicon.png' type='image/x-icon'/>
        <title><?php echo $text['ack-title']; ?></title>
    </head>
    <body>

        <?php

            // $sessionUser = isset($_GET["s"]);
            $id = isset($_GET["TeAeltAhnToeskvLoinegeeTohWgGeonwpIknsraTBdTRhilTicliehtt"]);
            // $text = "";

        ?>


        <header>
            <div class="container">
              <div class="heading">
                <div id="branding">
                  <img src="../img/header.png" alt="logo" />  <h1> <?php echo $text['header'];?></h1>
                  <label for="toggled">&#9776;</label>
                  <input type="checkbox" id="toggled" onClick="show()">

                </div>



                <div class="menu">
                  <nav>
                    <ul>
                      <li class="current"><a href=''><?php echo $text['ackgt-report']; ?></a></li>
                    </ul>
                  </nav>
                </div>

              </div>
            </div>
        </header>


        <?php //try {
            if ($id != "") {
        ?>
        <div class="container">
          <div class="ack-linkbox">
            <h2>
                <?php echo $text['certify']; ?> <?php echo $_GET['s']; ?> for my report.
            </h2>
            <form action="done.php" method="POST">
                <input  type="hidden" name="n" value="<?php echo $_GET["TeAeltAhnToeskvLoinegeeTohWgGeonwpIknsraTBdTRhilTicliehtt"]; ?>">
                <button class="button" type="submit" onclick="return confirm('Acknowledge the coaching?')"><?php echo $text['ack']; ?></button>
            </form>
          </div>




        <?php } else { ?>
          <div class="ack-linkbox">
            <h1>
                <?php echo $text['ty']; ?>
            </h1>
          </div>

        <?php
                // $text = "thankyou";
            }
//            } catch (Exception e) {
//
//            } ?>

  </div>
    <footer>
        <h4><?php echo $text['footer']; ?></h4>
    </footer>
    <script src="../js/html-style.js"></script>

</body>
</html>
