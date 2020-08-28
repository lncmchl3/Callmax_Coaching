<!DOCTYPE html>

  <html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coaching System - Callmax Solutions</title>
    </head>
    <body>
        <?php
        session_start();
            if (@is_null($_SESSION['demerits'])) {
        ?>
        <link rel="icon" href="searchicon.png">

 <!--
            <center>    
            <span class="center">Login</span>           
                <table border="1" width="30%" cellpadding="3">
                    <thead>
                        <tr>
                        <?php
                            if(@$_GET['e']==true){
                        ?>
                        <th colspan="2" height="16px" style="color: orange;"><?php echo $_GET['e'] ?></th>
                        <?php
                            }else if (@$_GET['i']==true) {
                                ?>
                                <th colspan="2" height="16px" style="color: red;"><?php echo $_GET['i'] ?></th>
                                <?php
                            }
                            else{
                        ?>
                        <th colspan="2" height="16px"></th>
                            <?php
                            }
                            ?>
                           
                        </tr>
                    </thead>
                    -->
 
        <form class="my-form" method="post" action="login.php" autocomplete="off">
       
                        
                        <h1>LOGIN</h1>
                        
                        <div class="form-group">
                            <div class="form-group">
                                <!-- <label>Username: </label> -->
                                <img src="images/user.png" width="20px">
                                <input type="text" name="uname" value="" placeholder="USERNAME" />
                            </div>
                            
                            <div class="form-group">
                                <!-- <label>Password: </label> -->
                                <img src="images/pass.png" width="20px">
                                <input type="password" name="pass" value="" placeholder="PASSWORD" />
                            </div>
                        </div>
                        
 
                            
    						<button class= "button1" type="submit" name="Login"/>LOGIN</button>

                        <div class="form-group"><a href="#">Forgot password?</a></div>

                        <div class="form-group">
                            <label>Not a member?</label>
                            <a href="reg.php">Sign up</a>
                        </div>  
        </form>


<div class="footer"><p>Copyright &copy; 2020, Callmax Solutions.</p></div>

        <?php
            }else if (@$_SESSION['demerits'] == "TL") {
                    header("location:agentSearch/AgentSearch.php");
                }
                else if (@$_SESSION['demerits'] == "QAV") {
                    header("location:QAV/reports.php");
                }
                else if (@$_SESSION['demerits'] == "QAN") {
                    header("location:QAN/reports.php");
                }
                else if (@$_SESSION['demerits'] == "MIS") {
                    header("location:MIS/reports.php");
                }
                else if (@$_SESSION['demerits'] == "HR") {
                    header("location:HR/reports.php");
                }
                else if (@$_SESSION['demerits'] == "SUPERADMIN") {
                    header("location:ADMIN/admin.php");
                }
        ?>
    </body> 
</html>