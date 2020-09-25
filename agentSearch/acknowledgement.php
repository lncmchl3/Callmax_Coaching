<!DOCTYPE html>

<?php include ('../text/text.php');?>

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
    require('../connection.php');

    session_start();
    if (isset($_SESSION['name'])) {
        if ($_SESSION['demerits']=='TL' || $_SESSION['demerits']=='SUPERADMIN') {
    ?>
        <?php
            $sessionUser = $_POST["s"];
            $id = $_POST["n"];
            $statement = $_POST['statement'];
            $query = "UPDATE agent_reports SET action_plan = '".$statement."', coaching_date = NOW() WHERE id =".$id;
            mysqli_query($connection, $query);
        ?>

        <header>
            <div class="container">
              <div class="heading">
                <div id="branding">
                  <img src="../img/header.png" alt="logo" />
                  <!-- <h1> <?php echo $text['header'];?></h1> -->
                  <label for="toggled">&#9776;</label>
                  <input type="checkbox" id="toggled" onClick="show()">

                </div>



                <div class="menu">
                  <nav>
                    <ul>
                      <li><a href='AgentSearch.php'><?php echo $text['dashboard']; ?></a></li>
                      <li class="current"><a href=''><?php echo $text['ack-link']; ?></a></li>
                      <li><a href='sendReport.php'><?php echo $text['send-report']; ?></a></li>
                      <li><a href='../logout.php?logout' onclick="return confirm('Are you sure you want to logout?')"><?php echo $text['logout']; ?></a></li>
                    </ul>
                  </nav>
                </div>

              </div>
            </div>
        </header>


    <div class="container">
      <div class="ackBox">
          <h2><?php echo $text['copy-link']; ?>:</h2>
          <input type="text" value="<?php echo $text['link']; ?><?php echo $id; ?>&s=<?php echo $sessionUser ?>" id="myInput" readonly>
          <div class="tooltip">
            <button class="button" onclick="myFunction()">
              <span class="tooltiptext" id="myTooltip"><?php echo $text['copy-to-clipboard']; ?></span><?php echo $text['copy-link-btn']; ?></button>
            <script>
            function myFunction() {
              var copyText = document.getElementById("myInput");
              copyText.select();
              copyText.setSelectionRange(0, 99999);
              document.execCommand("copy");
              // alert("Link Copied to clipboard");
              var tooltip = document.getElementById("myTooltip");
              tooltip.innerHTML = "<?php echo $text['copied']; ?>!";
            }
            </script>
          </div>
          <!-- end of tooltip -->
      </div>
      <!-- end if ackBox -->
    </div>
    <!-- end of container -->

    <?php
        }else{
            header("location:../error/error.php");
        }
    }else{
        header("location:../index.php?e=Please Log in");
    }
?>
    <footer>
        <h4><?php echo $text['footer']; ?></h4>
    </footer>

    <script src="../js/html-style.js"></script>

</body>
</html>
