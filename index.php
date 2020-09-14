<!DOCTYPE html>
<?php
include ('text/text.php');
?>
<html>
    <head>

        <link rel="stylesheet" type="text/css" href="css/html-style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel='icon' href='img/favicon.png' type='image/x-icon'/ >
        <title><?php echo $text['welcome-title'];?></title>
    </head>




    <body>

        <header>
            <div class="container">
                <div class="heading">
                    <div id="branding">
                        <h1><img src="img/favicon.png" alt="logo" /> <?php echo $text['header'];?></h1>
                    </div>
                    <nav>
                        <ul>
                        <!-- <li><a href="about.php">About Us</a></li> -->
                        <li class="current"><a href="index.php"><?php echo $text['login'];?></a></li>
                        <li><a href="reg.php"><?php echo $text['signup'];?></a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>


        <?php
        session_start();
            if (@is_null($_SESSION['demerits'])) {
        ?>

    <div class="login-container">



        <div class="loginbox">
            <form class="loginform" method="post" action="login.php" autocomplete="off">

                    <div class="login-grid-box1">
                    <div class="login-header">
                        <h1><?php echo $text['login-welcome'];?></h1>
                    </div>


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


                        <div class="login-grid-box2">
                            <!-- <img src="img/user.png"> -->
                            <input type="text" name="uname" value="" placeholder="<?php echo $text['username'];?>" required />
                        </div>

                        <div class="login-grid-box3">
                            <!-- <img src="img/pass.png" > -->
                            <input type="password" name="pass" value="" placeholder="<?php echo $text['password'];?>" required />
                        </div>

                        <div class="btn">
                        <button class="button" type="submit" name="Login"/><?php echo $text['login'];?></button>
                        </div>


                        <div>
                            <a href="#"><?php echo $text['forgot-password'];?></a>
                        </div>

                        <div>
                            <label><?php echo $text['no-account']; ?></label>
                            <a href="reg.php"><?php echo $text['signup']; ?></a>
                        </div>

            </form>

        </div>
            <!-- end of loginbox -->


        <div id="freepik">
            <a href="https://stories.freepik.com/work"><?php echo $text['freepik']; ?></a>
        </div>
    </div>
    <!-- end of login-container -->





    <footer>
        <h4><?php echo $text['footer']; ?></h4>
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
