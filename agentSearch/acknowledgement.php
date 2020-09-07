<!DOCTYPE html>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="../css/html-style.css">
        <link rel="icon" href="searchicon.png">
        <title>Coaching System - Agents</title>
    </head>
    <body>

        <?php

            $sessionUser = $_GET["s"];
            $id = $_GET["n"];


        ?>



    <header>
        <div class="container">

            <div id="branding">

                <h1>Callmax Solutions Coaching System</h1>
            </div>
            <nav>
                <ul>
                  <li><a href='../logout.php?logout' onclick="return confirm('Are you sure you want to logout?')">Log out</a></li>
                  <li><a href='sendReport.php'>Send Report</a></li>
                  <li><a href='AgentSearch.php'>Dashboard</a></li>
                  <li class="current"><a href=''>Acknowledgement Link</a></li>
                </ul>
            </nav>
        </div>
    </header>


    <div class="container">
      <div class="ackBox">
          <h2>Copy the Link below:</h2>
          <input type="text" value="localhost/Backup/Callmax_Coaching/agentSearch/acknowledgementlink.php?TeAeltAhnToeskvLoinegeeTohWgGeonwpIknsraTBdTRhilTicliehtt=<?php echo $id; ?>&s=<?php echo $sessionUser ?>" id="myInput" readonly>
          <div class="tooltip">
            <button class="button" onclick="myFunction()">
              <span class="tooltiptext" id="myTooltip">Copy to clipboard</span>Copy link</button>
            <script>
            function myFunction() {
              var copyText = document.getElementById("myInput");
              copyText.select();
              copyText.setSelectionRange(0, 99999);
              document.execCommand("copy");
              // alert("Link Copied to clipboard");
              var tooltip = document.getElementById("myTooltip");
              tooltip.innerHTML = "Copied!";
            }
            </script>
          </div>
          <!-- end of tooltip -->
      </div>
      <!-- end if ackBox -->
    </div>
    <!-- end of container -->





    <footer>
        <h4>Callmax Solutions Coaching System, Copyright &copy; 2020</h4>
    </footer>
</body>
</html>
