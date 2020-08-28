<?php
	$connection = mysqli_connect('localhost','root','','callmaxcoaching');
	if(!$connection){
		die("Please Check your Connection".mysqli_error($connection));
	} <
?> 