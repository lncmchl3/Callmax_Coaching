
<!DOCTYPE html>
<?php include ('../text/text.php');?>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?php echo $text['dashboard-title']; ?></title>
    <link rel='icon' href='../img/favicon.png' type='image/x-icon'/>
    <link rel="stylesheet" type="text/css" href="../css/html-style.css">

</head>
<body>
    <?php
    require('../connection.php');

    session_start();
    if (isset($_SESSION['name'])) {
        if ($_SESSION['demerits']=='TL' || $_SESSION['demerits']=='SUPERADMIN') {
        $choices = @$_POST['item'];
        $search = @$_POST['search'];
        $date = @$_POST['date'];


    ?>





<!-- code for content here -->
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
                <li><a href=""><?php echo $_SESSION['name']; ?> </a></li>
                <li class="current"><a href='AgentSearch.php'><?php echo $text['dashboard']; ?></a></li>
                <li><a href='sendReport.php'><?php echo $text['send-report']; ?></a></li>
                <li><a href='../logout.php?logout' onclick="return confirm('Are you sure you want to logout?')"><?php echo $text['logout']; ?></a></li>
              </ul>
          </nav>
        </div>

      </div>
    </div>
</header>



<!-- Welcome <?php echo $_SESSION['name']." position ".$_SESSION['demerits']; ?>. <a href="logout.php?logout">Logout</a> -->


<div class="main-container">
  <div class="container">
    <div class="subcontainer">
        <!-- <div class="search-formbox"> -->
              <form class="searchForm" name="searchForm" method="post" autocomplete="off">

                <div class="search-gridbox1">
                  <!-- <label>Fiter By:</label> -->
                  <select name="item">
                      <option value="" disabled selected hidden><?php echo $text['choose-pos']; ?></option>
                      <option value="agent"><?php echo $text['name']; ?></option>
                      <option value="account"><?php echo $text['account']; ?></option>
                      <option value="status"><?php echo $text['status']; ?></option>
                  </select>
                </div>

                <div class="search-gridbox2">
                  <input type="text" name="search" placeholder="<?php echo $text['search']; ?>" >
                </div>

                <div class="search-gridbox3">
                  <input type="date" name="date">
                </div>

                <div class="search-gridbox4">
                  <button class="button" type="submit" name="searchForm"><?php echo $text['search']; ?></button>
                </div>
                <?php
                //set initital value of POST iten to be true to laod the initial table
                $choices = isset($_POST['item']) ? $_POST['item'] : 1;
                 ?>

          </form>

          <!-- </div> -->
          <!-- end of search-formbox -->
      </div>
      <!-- end of subcontainer of search-formbox -->


      <!-- start of table -->
      <div class="subcontainer">
        <!-- <div class="tablebox"> -->
        <?php include('search.php'); ?>
        <?php
        if ($choices == null) {
        ?>

        <?php
        }
        else {
        ?>
        <?php
          include('../connection.php');

            for($i = 0; $i < count($data); $i++){
            $query1 = "SELECT * FROM agent_reports WHERE UPPER(" .$choices. ") LIKE UPPER('%" .$search. "%') AND UPPER(account) LIKE UPPER('".$data[$i]."') AND date_issued LIKE '".$date."%' ORDER BY id DESC,date_issued ASC limit 50";
            $result1 = mysqli_query($connection, $query1);
            if (mysqli_num_rows($result1) > 0) {
        ?>
          <div class="table_div">

            <h3><?php echo $data[$i]; ?></h3>

            <table class="dashboard-table">
              <thead>
                <tr>
                  <th><?php echo $text['agentname']; ?></th>
                  <th><?php echo $text['report-type']; ?></th>
                  <th><?php echo $text['date-issued']; ?></th>
                  <th><?php echo $text['status']; ?></th>
                </tr>
              </thead>

              <tbody>
              <?php
                while ($row1 = mysqli_fetch_assoc($result1)) {
              ?>

              <tr onclick="window.location='info.php?n=<?php echo $row1['id']; ?>&type=<?php echo $row1['report_type']; ?>&string=<?php echo $row1['report_id']; ?>&status=<?php echo $row1['status']; ?>'" class="only">

                <td><?php echo $row1['agent']; ?></td>
                <td class="tableData"> <?php echo $row1['report_type']; ?></td>
                <td class="tableData"> <?php echo $row1['date_issued']; ?></td>
                <?php
                if($row1['status']=="Pending"){
                  ?>
                  <td><label class="statusOrange"><?php echo $row1['status']; ?></label></td>
                <?php }else if($row1['status']=="Submitted"){ ?>
                  <td ><label class="statusYellow"><?php echo $row1['status']; ?></label></td>
                <?php }else{ ?>
                  <td><label class="statusGreen"><?php echo $row1['status']; ?></label></td>
                  <?php
                }
              }
              ?>
            </tr>
          </tbody>
          <!-- end of table body -->
        </table>
      </div>
<?php
}
}
?>
<?php } ?>

        <!-- </div> -->
        <!-- end of tablebox -->

    </div>
    <!-- end of subcontainer of tablebox-->


  </div>
  <!-- end of container -->

</div>
<!-- end of main-container -->




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
