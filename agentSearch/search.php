<?php
    require('../connection.php');
    // session_start(); 
	$query = "SELECT * FROM tl_accounts WHERE UPPER(employee_name) = UPPER('".$_SESSION['name']."')";
	$result = mysqli_query($connection, $query);
	$accounts = array();
	if (mysqli_num_rows($result) > 0) {
		while ( $row = mysqli_fetch_assoc($result)) {
			$data[] = $row['account'];
	}
}
?>