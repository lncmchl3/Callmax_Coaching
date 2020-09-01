<!DOCTYPE html>
<style>
    .center {
        display: block;
        margin-left: auto;
        margin-right: auto;
        margin-top: auto;
        margin-bottom: auto;
      }
      a{
        text-decoration: none;
        color: cornflowerblue; 
    }
</style>
<?php 
    $n = $_GET['n'];
?>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="searchicon.png">
        <title>Coaching System - Registration</title>
    </head>
    <body  onload="disableBackButton()" onunload="disableBackButton()">
        
        <?php
            try{
            if($n=='verified'){
        ?>
    <center>
        <h1 class="center">Registration Success!</h1><br/><br/>
        <h5 class ="center"><a href='index.php'>Login Here.</a></h5>
    </center>
    <?php
        }else if($n == "verify"){
    ?>
    
    <center>
        <h1 class="center">Registration Failed, Please check availability of registration!</h1><br/><br/>
        <h5 class ="center"><a href='reg.php'>Register Again.</a></h5>
    </center>
    
    <?php
     }
    }catch(exception $e){
    ?>
    
    <center>
        <h1 class="center">Access Denied!</h1><br/><br/>
        <h5 class ="center"><a href='index.php'>Click here.</a></h5>
    </center>
    
    <?php
       } 
    ?>
    </body>
</html>