<?php
session_start();
require_once('connection.php');
  

	if(isset($_POST['Login'])){
		if(empty($_POST['uname']) || empty($_POST['pass'])){
			header("location:index.php?e=Enter Username and Password");
		}
		else{
			// header("location:index.php?e=b");
			$query = "SELECT * FROM employee WHERE username='".$_POST['uname']."' and password='".$_POST['pass']."'";
			$result = mysqli_query($connection,$query);
			if (mysqli_num_rows($result) == 0) {
			    header("location:index.php?i=Wrong username or password.");
			}
			while($row = mysqli_fetch_assoc($result)) {
				$_SESSION['name'] = $row['firstname']." ".$row['lastname'];
				$_SESSION['demerits'] = $row['demerits'];
				if ($_SESSION['demerits'] == "TL") {
					header("location:agentSearch/AgentSearch.php");
				}
				else if ($_SESSION['demerits'] == "QAV") {
					header("location:QAV/reports.php");
				}
				else if ($_SESSION['demerits'] == "QAN") {
					header("location:QAN/reports.php");
				}
				else if ($_SESSION['demerits'] == "MIS") {
					header("location:MIS/reports.php");
				}
				else if ($_SESSION['demerits'] == "HR") {
					header("location:HR/reports.php");
				}
				else if ($_SESSION['demerits'] == "SUPERADMIN") {
					header("location:ADMIN/admin.php");
				}  
			}		  	
		}
	}
	else{
		header("location:index.php?e=Please Log in");
	}
?>
