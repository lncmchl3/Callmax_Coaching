references:


<!-- for css link -->
<link href="agentSearchv2.css" rel="stylesheet" type="text/css">
<!-- ----- -->


<!-- for top nav w/ logout button -->
<div class="header">Name: <?php echo $_SESSION['name']; ?> / <a class="ab" href='../logout.php?logout'>Log out</a> 
</div>
<!-- ----- -->


<!-- for connection and verification for user -->
<?php
    require('../connection.php');

    session_start();
    if (isset($_SESSION['name'])) {
        if ($_SESSION['demerits']=='TL' || $_SESSION['demerits']=='SUPERADMIN') { 
        $choices = @$_POST['item'];
        $search = @$_POST['search'];
        $date = @$_POST['date'];    
    ?>
<!-- ----- -->


<!-- #content here -->


<!-- end of connection and verification -->
    <?php
        }else{
            header("location:error/error.php");
        }
    }else{
        header("location:index.php?e=Please Log in");
    }
?>
<!-- ----- -->


<!-- for queries -->
<?php
    $query = "SELECT * FROM qan_data where id = ".$report_id;
    $result = mysqli_query($connection, $query);
?>
<!-- ----- -->


<!-- for getting the data in database -->
<?php
    if (mysqli_num_rows($result) > 0) {
        while ( $row = mysqli_fetch_assoc($result)) {
?>
<!-- ----- -->