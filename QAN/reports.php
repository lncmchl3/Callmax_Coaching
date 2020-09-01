<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>


    <?php
    	session_start();
    	if (isset($_GET['logout'])) {
    		session_destroy();
    		header("location:index.php");
    	}
    ?>

    <div class="header">Name: <?php echo $_SESSION['name']; ?> / <a class="ab" href='../logout.php?logout'>Log out</a>
    </div>

  </body>
</html>
