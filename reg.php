
<!DOCTYPE html>
<?php
include ('text/text.php'); ?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel='icon' href='img/favicon.png' type='image/x-icon'/ >
        <link rel="stylesheet" type="text/css" href="css/html-style.css">
        <title><?php echo $text['reg-title']; ?></title>
    </head>

<body>

  <header>
      <div class="container">
        <div class="heading">
          <div id="branding">
            <img src="img/header.png" alt="logo" />
            <!-- <h1> <?php echo $text['header'];?></h1> -->
            <label for="toggled">&#9776;</label>
            <input type="checkbox" id="toggled" onClick="show()">

          </div>



          <div class="menu">
            <nav>
              <ul>
                  <!-- <li><a href="about.php">About Us</a></li> -->
                  <li><a href="index.php"><?php echo $text['login']; ?></a></li>
                  <li class="current"><a href="reg.php"><?php echo $text['signup']; ?></a></li>

              </ul>
            </nav>
          </div>

        </div>
      </div>
  </header>




      <div class="reg-container">
        <div class="container">
          <div class="regbox">

          <form class="regform" method="post" action="registration.php" autocomplete="off" onsubmit="return confirmPass()">

            <input type="hidden" id="accountCounts" name="accountCounts" value="0">

              <div>
                <h1><?php echo $text['register-head']; ?></h1>
              </div>

              <div class="regform-content">
                <div class="grid-box1">
                  <div class="firstName">
                    <label><?php echo $text['firstname']; ?>:</label>
                    <input type="text" name="firstname" value="" placeholder="<?php echo $text['firstname']; ?>" required>
                  </div>

                  <div class="lastName">
                    <label><?php echo $text['lastname']; ?>:</label>
                    <input type="text" name="lastname" value="" placeholder="<?php echo $text['lastname']; ?>" required>
                  </div>



                </div>
                <!-- end of grid-box1 -->

                <div class="grid-box2">
                  <div class="userName">
                    <label><?php echo $text['username']; ?>:</label>
                    <input type="text" name="username" value="" placeholder="<?php echo $text['username']; ?>" required>
                    <span id="availability"></span>
                  </div>

                  <div class="emailAdd">
                    <label class="email-input"><?php echo $text['email']; ?>:</label>
                    <input type="email" name="email" value="" placeholder="<?php echo $text['email-add']; ?>" required>
                  </div>
                </div>


                <div class="grid-box3">

                  <div class="passWord">
                    <label><?php echo $text['password']; ?>:</label>
                    <input onclick="changeback()" type="password" name="password" id="password" value="" placeholder="<?php echo $text['password']; ?>" required>
                  </div>

                  <div class="cPassword">
                    <label><?php echo $text['cpassword']; ?>:</label>
                    <input onclick="changeback()" type="password" name="password2" id="password2" value="" placeholder="<?php echo $text['cpassword']; ?>"required/>
                  </div>


                </div>

              </div>
              <!-- end of regform-content -->



              <div class="posOption">
                <label><?php echo $text['position']; ?>:</label>
                  <select  required name="position" onchange='CheckPos(this.value);'>
                    <option value="" disabled selected hidden><?php echo $text['choose-pos']; ?></option>
                    <option value="QAV"><?php echo $text['qav']; ?></option>
                    <option value="QAN"><?php echo $text['qan']; ?></option>
                    <option value="HR"><?php echo $text['hr']; ?></option>
                    <option value="TL"><?php echo $text['tl']; ?></option>
                    <option value="AM"><?php echo $text['am']; ?></option>
                    <!--<option value="MIS"><?php echo $text['mis']; ?></option>-->
                    <option value="KPI"><?php echo $text['kpi']; ?></option>
                  </select>


                    <label id='accountinputtitle'><?php echo $text['accounts']; ?>:</label>
                    <div class="optBtn">
                      <button class="button" type="button" id='removebutton'/><?php echo $text['minus']; ?></button>
                      <button class="button" type="button" id='addmore' onclick="createFunction(this.value)"><?php echo $text['plus']; ?></button>
                    </div>










              </div>
              <!-- end of posOption -->



              <div class="regform-button">
                <button  class="button" type="submit" name="Login"/>Submit</button>
                <label><?php echo $text['yes-account']; ?></label>
                <a href="index.php"><?php echo $text['login-here']; ?></a>
              </div>





          </form>
          <!-- end of regform -->
          </div>
          <!-- end of regbox -->



          </div>
          <!-- end of container -->
          <div id="freepik">
              <a href="https://stories.freepik.com/work"><?php echo $text['freepik']; ?></a>
          </div>

      </div>
      <!-- end of reg-container -->




      <footer>
          <h4><?php echo $text['footer']; ?></h4>
      </footer>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script src="js/html-style.js"></script>


</body>
</html>
