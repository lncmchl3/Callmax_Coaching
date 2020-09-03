
<!DOCTYPE html>
<html>
<head>
    <title>Callmax Solutions Coaching System | Dashboard</title>
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

        <div id="branding">

            <h1>Callmax Solutions Coaching System</h1>
        </div>
        <nav>
            <ul>
              <li><a href='../logout.php?logout' onclick="return confirm('Are you sure you want to logout?')">Log out</a></li>
              <li><a href='sendReport.php'>Send Report</a></li>
              <li class="current"><a href='AgentSearch.php'>Dashboard</a></li>
              <li><a href="#"><?php echo $_SESSION['name']; ?> </a></li>
            </ul>
        </nav>
    </div>
</header>



<!-- Welcome <?php echo $_SESSION['name']." position ".$_SESSION['demerits']; ?>. <a href="logout.php?logout">Logout</a> -->


<div class="main-container">
  <div class="container">
    <div class="subcontainer">
        <div class="search-formbox">
              <form class="searchForm" name="searchForm" method="post" autocomplete="off" class="active">


                <label>Fiter By:</label>
                <select name="item">
                    <option value="agent">Name</option>
                    <option value="account">Account</option>
                    <option value="status">Status</option>
                </select>

                <input type="text" name="search" placeholder="Search" >
                <input type="date" name="date">
                <button class="button" type="submit" name="searchForm">Search</button>
                <?php
                //set initital value of POST iten to be true to laod the initial table
                $choices = isset($_POST['item']) ? $_POST['item'] : 1;
                 ?>

          </form>

          </div>
          <!-- end of search-formbox -->



      </div>
      <!-- end of subcontainer of search-formbox -->


      <!-- start of table -->
      <div class="subcontainer">
        <div class="tablebox">
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
            <table class="dashboard-table">
              <thead class="table-heading">
                <tr>
                  <th colspan="30"><h3><?php echo $data[$i]; ?></h3></th>
                </tr>
              </thead>

              <thead>
                <tr>
                  <th>Agent's Name</th>
                  <th>Type of Report</th>
                  <th>Date Issued</th>
                  <th>Status</th>
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
                  <td class="tableStatusOrange"><?php echo $row1['status']; ?></td>
                <?php }else if($row1['status']=="Submitted"){ ?>
                  <td class="tableStatusYellow"><?php echo $row1['status']; ?></td>
                <?php }else{ ?>
                  <td class="tableStatusGreen"><?php echo $row1['status']; ?></td>
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

        </div>
        <!-- end of tablebox -->

    </div>
    <!-- end of subcontainer of tablebox-->


  </div>
  <!-- end of container -->

</div>
<!-- end of main-container -->




<?php
        }else{
            header("location:error/error.php");
        }
    }else{
        header("location:index.php?e=Please Log in");
    }
?>




<footer>
    <h4>Callmax Solutions Coaching System, Copyright &copy; 2020</h4>
</footer>




</body>
</html>
