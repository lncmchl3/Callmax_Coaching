<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/html-style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Callmax Solutions Coaching System | Welcome</title>
    </head>

    <body>
        <header>
            <div class="container">

                <div id="branding">

                    <h1>Callmax Solutions Coaching System</h1>
                </div>
                <nav>
                    <ul>
                        <li><a href="about.php">About Us</a></li>
                        <li><a href="reg.php">Sign up</a></li>
                        <li class="current"><a href="index.php">Login</a></li>

                    </ul>
                </nav>
            </div>
        </header>


        <?php
        session_start();
            if (@is_null($_SESSION['demerits'])) {
        ?>

      <div class="container">


        <div class="loginbox">
            <form class="my-form" method="post" action="login.php" autocomplete="off">


                        <div class="login-header">
                            <h1>Welcome!</h1>
                        </div>

                        <div class="errorMessage">
                          <?php
  							                 if(@$_GET['e']==true){
  						            ?>

                                <h3 class="error"><?php echo $_GET['e'] ?></h3>

                          <?php
							                   }else if (@$_GET['i']==true) {
                          ?>
                                <h3 class="error"><?php echo $_GET['i'] ?></h3>

                          <?php
                          }
							                   else{
						              ?>
                          <?php
                          }
                          ?>
                        </div>

                        <div>
                            <img src="img/user.png">
                            <input type="text" name="uname" value="" placeholder="Username" required />
                        </div>

                        <div>

                            <img src="img/pass.png" >
                            <input type="password" name="pass" value="" placeholder="Password" required />
                        </div><br>

                        <div class="btn">
                          <button class="button" type="submit" name="Login"/>Login</button>
                        </div>


                        <div>
                            <a href="#">Forgot password?</a>
                        </div>

                        <div>
                            <label>Don't have an account?</label>
                            <a href="reg.php">Sign up</a>
                        </div>

            </form>

          </div>
          <!-- end of loginbox -->
          <div id="freepik">
              <a href="https://stories.freepik.com/work">Designed by Freepik</a>
          </div>
        </div>
        <!-- end of container -->





    <footer>
        <h4>Callmax Solutions Coaching System, Copyright &copy; 2020</h4>
    </footer>


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
