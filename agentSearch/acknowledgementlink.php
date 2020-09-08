<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/html-style.css">
        <link rel='icon' href='../img/favicon.png' type='image/x-icon'/>
        <title>Callmax Solutions Coaching System | Acknowledgement Report</title>
    </head>
    <body>

        <?php

            // $sessionUser = isset($_GET["s"]);
            $id = isset($_GET["TeAeltAhnToeskvLoinegeeTohWgGeonwpIknsraTBdTRhilTicliehtt"]);
            $text = "";

        ?>

        <header>
            <div class="container">

                <div id="branding">

                    <h1><img src="../img/favicon.png" alt="logo" />Callmax Solutions Coaching System</h1>
                </div>
                <nav>
                    <ul>
                      <li class="current"><a href=''>Acknowledgement Report</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <?php //try {
            if ($id != "") {
        ?>
        <div class="container">
          <div class="ack-linkbox">
            <h2>
                This is to Certify that I acknowledge the coaching of Team Leader <?php echo $_GET['s']; ?> for my report.
            </h2>
            <form action="done.php" method="POST">
                <input  type="hidden" name="n" value="<?php echo $id; ?>">
                <button class="button" type="submit" onclick="return confirm('Acknowledge the coaching?')">Acknowledge</button>
            </form>
          </div>




        <?php } else { ?>
          <div class="ack-linkbox">
            <h1>
                Thank You!
            </h1>
          </div>

        <?php
                $text = "thankyou";
            }
//            } catch (Exception e) {
//
//            } ?>

  </div>
    <footer>
        <h4>Callmax Solutions Coaching System, Copyright &copy; 2020</h4>
    </footer>
</body>
</html>
