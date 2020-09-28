
<?php
	//$connection = mysqli_connect('148.72.232.176','callmaxcrs','qz7Uwx3YJcWDuCj','
//callmaxcoaching');
	//if(!$connection){
	//	die("Please Check your Connection".mysqli_error($connection));
	//}
?>
<?php
$connection = new mysqli("148.72.232.176:3306","callmaxcrs","qz7Uwx3YJcWDuCj","callmaxcoaching");
if ($connection -> connect_errno) {
  echo "Failed to connect to MySQL: " . $connection -> connect_error;
  exit();
}
?>