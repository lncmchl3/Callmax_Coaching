
<!DOCTYPE html>
<html>
<head>
    <title>Coaching System</title>
    <link href="agentSearch.css" rel="stylesheet" type="text/css">
</head>
<body>
<?php
session_start();
if (isset($_SESSION['name'])) {
    if ($_SESSION['demerits']=='QAV') {
	?>


<!-- code for content here -->
Welcome <?php echo $_SESSION['name']." position ".$_SESSION['demerits']; ?>. <a href="../logout.php?logout">Logout</a>





<?php
        }else{
        	header("location:../error/error.php");
        }
    }else{
    	header("location:index.php?e=Please Log in");
    }
?>
</body>
</html>
