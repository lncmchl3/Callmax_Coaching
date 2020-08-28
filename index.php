<!DOCTYPE html>
<style>
    .center {
        font-size: 32px;
		font-weight: bold;
      }
      a{
        text-decoration: none;
        color: cornflowerblue; 
    }
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Coaching System - Callmax Solutions</title>
    </head>
    <body>
        <?php
        session_start();
            if (@is_null($_SESSION['demerits'])) {
        ?>
        <link rel="icon" href="searchicon.png">
		
        <form method="post" action="login.php" autocomplete="off">
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
                    <tbody>
                        <tr>
                            <td>Username:</td>
                            <td><input type="text" name="uname" value="" /></td>
                    
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="pass" value="" /></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="reset" value="Reset" /></td>
                        </tr>
                        <tr>
                            <td></td>
							<td><button name="Login"/>Login</button></td>
                        </tr>

                        <tr>
                            <td colspan="2">Not registered? <a href="reg.php">Register Here</a></td>
                        </tr>
                    </tbody>
                </table>
            </center>
        </form>
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