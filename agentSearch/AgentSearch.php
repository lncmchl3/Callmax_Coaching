
<!DOCTYPE html>
<html>
<head>
    <title>Coaching System</title>
    <link href="agentSearchv3.css" rel="stylesheet" type="text/css">
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
<div class="header">Name: <?php echo $_SESSION['name']; ?> / <a class="ab" href='../logout.php?logout'>Log out</a> 
</div>
<!-- Welcome <?php echo $_SESSION['name']." position ".$_SESSION['demerits']; ?>. <a href="logout.php?logout">Logout</a> -->

<button onclick="window.location='sendReport.php'">Send Report</button>
            <div class="topnav">
                <div class="topnav-centered">
                    <form name="searchForm" method="post" autocomplete="off" class="active">
                    <b>Filter by:</b>
                    <select name="item">
                        <option value="agent">NAME</option>
                        <option value="account">ACCOUNT</option>
                        <option value="status">STATUS</option>
                    </select>
                    <input type="text" name="search" placeholder="Search.." >
                    <input type="date" name="date">  
                    <button type="submit" name="searchForm">Search</button>
                </form>
                </div>
            </div>
            <div class="main-content">
<center>
<?php include('search.php'); ?>
                
                <?php
                    if ($choices == null) {
                ?>
                <br/>
                <?php
                    } else {
                ?>

                <?php
                    include('../connection.php');
                    

                            for($i = 0; $i < count($data); $i++){
                            $query1 = "SELECT * FROM agent_reports WHERE UPPER(" .$choices. ") LIKE UPPER('%" .$search. "%') AND UPPER(account) LIKE UPPER('".$data[$i]."') AND date_issued LIKE '".$date."%' ORDER BY id DESC,date_issued ASC limit 50";
                            $result1 = mysqli_query($connection, $query1);
                            if (mysqli_num_rows($result1) > 0) {
                ?>
                <div class="table_div">
                <table border = "1" width="100%">
                    <thead>
                    <tr>
                        <th colspan="30"><?php echo $data[$i]; ?></th>
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
                        <td style="width: 15%; text-align: center;"> <?php echo $row1['report_type']; ?></td>
                        <td style="width: 15%; text-align: center;"> <?php echo $row1['date_issued']; ?></td>
                        <?php
                            if($row1['status']=="Pending"){
                        ?>
                        <td style="width: 15%; text-align: center; color: black; background-color: #ff6f5c;"><?php echo $row1['status']; ?></td>
                        <?php }else if($row1['status']=="Submitted"){ ?>
                        <td style="width: 15%; text-align: center; color: black; background-color: #ffcb5c;"><?php echo $row1['status']; ?></td>
                        <?php }else{ ?>
                        <td style="width: 15%; text-align: center; color: black; background-color: #92ff5c;"><?php echo $row1['status']; ?></td>
                        <?php
                            } 
                        } 
                        ?>
                </tr>
                </tbody>
                </table>
                </div>
                    <?php
                            }
                        }
                    ?>
                <?php } ?>
</center>
</div>
<?php
        }else{
            header("location:error/error.php");
        }
    }else{
        header("location:index.php?e=Please Log in");
    }
?>
<br/><br/>
<footer>
        <p>Coaching System © Callmax Solutions. All rights reserved.</p>
</footer>
</body>
</html>
