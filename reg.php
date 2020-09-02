
<!DOCTYPE html>

<script type="text/javascript">
    var value = 0;
    $(document).ready(function () {
        $('#uname').blur(function () {
            var username = $this.val();
            $.ajax({
                url: "check.jsp",
                method: "POST",
                data: {username: username},
                dataType: "text",
                success: function (html) {
                    $('#availability').html(html);
                }
            });
        });
    });

    function CheckPos(val) {
//        var accountinput = document.getElementById('accountinput');
        var accountinputtitle = document.getElementById('accountinputtitle');
        var addmore = document.getElementById('addmore');
        var r = document.getElementById('removebutton');
        var s = document.getElementById("accountinput");


        if (val === 'TL' || val === 'AM') {

            if (value === 0) {
              // add input box if value if zero
              createFunction();
              }
            else if (value > 1) {
              // deletes input boxes if value is greater than one until one input box left
              $(document).ready(function () {
                while (value !== 1) {
                  $("input").remove("#accountinput" + (value - 1));
                  value--;
                  document.getElementById("accountCounts").value = value;
                  }
              });
            }

            r.style.display = 'inline';
            accountinputtitle.style.display = 'block';
            addmore.style.display = 'inline';
          }

        else {
//           accountinput.style.display = 'none';
          $(document).ready(function () {
              while (value !== 0) {
                $("input").remove("#accountinput" + (value - 1));
                  value--;
                  document.getElementById("accountCounts").value = value;
              }
          });
            accountinputtitle.style.display = 'none';
            addmore.style.display = 'none';
            r.style.display = 'none';
            s.style.visibility = 'none';
        }


    }

    function confirmPass() {
        var pass1 = document.getElementById("password").value;
        var pass2 = document.getElementById("password2").value;
        var ok = true;
        if (pass1 !== pass2) {
            //alert("Passwords Do not match");
            document.getElementById("password").style.borderColor = "#E34234";
            document.getElementById("password2").style.borderColor = "#E34234";
            return false;
        }
        return ok;
    }
    function changeback() {
        document.getElementById("password").style.borderColor = "";
        document.getElementById("password2").style.borderColor = "";
    }


</script>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="searchicon.png">
        <link rel="stylesheet" type="text/css" href="css/html-style.css">
        <title>Callmax Solutions Coaching System | Sign Up</title>
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
                        <li class="current"><a href="reg.php">Sign up</a></li>
                        <li><a href="index.php">Login</a></li>

                    </ul>
                </nav>
            </div>
        </header>

      <div class="reg-container">
        <div class="container">
          <div class="regbox">


          <form class="regform" method="post" action="registration.php" autocomplete="off" onsubmit="return confirmPass()">

            <input type="hidden" id="accountCounts" name="accountCounts" value="0">

              <div>
                <h1>Registration</h1>
              </div>

              <div class="firstName">
                <label>First Name:</label>
                <input type="text" name="firstname" value="" placeholder="First Name" required>
              </div>

              <div class="lastName">
                <label>Last Name:</label>
                <input type="text" name="lastname" value="" placeholder="Last Name" required>
              </div>

              <div class="posOption">
                <label>Position:</label>
                  <select required name="position" onchange='CheckPos(this.value);'>
                    <option value="" disabled selected hidden>Choose Position</option>
                    <option value="QAV">Quality Analyst - Voice</option>
                    <option value="QAN">Quality Analyst - Non-Voice</option>
                    <option value="HR">Human Resources</option>
                    <option value="TL">Team Leader</option>
                    <option value="AM">Account Manager</option>
                    <!--<option value="MIS">MIS</option>-->
                    <option value="KPI">KPI</option>
                  </select>


                    <label id='accountinputtitle'>Accounts:</label>
                    <div class="optBtn">
                      <button class="button" type="button" id='removebutton'/>-</button>
                      <button class="button" type="button" id='addmore' onclick="createFunction(this.value)">+</button>
                    </div>




                  <!-- Script -->
                  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
                  <script>

                  var a = document.getElementById("accountCounts").value;

                  function createFunction() {
                    var x = document.createElement("INPUT");
                    var y = document.createElement("input");
                    var z = document.createElement("br");
                    x.setAttribute("type", "text");
                    x.setAttribute("id", "accountinput" + value);
                    x.setAttribute("name", "accountinput" + value);
                    x.setAttribute("class", "accountinput");
                    x.setAttribute("placeholder", "Add Account");
                    // y.setAttribute("type", "button");
                    // y.setAttribute("id", "removebutton");
                    // y.setAttribute("name", "removebutton");
                    // y.setAttribute("value", "remove");
                    // y.setAttribute("onClick", "removeFunction()");
                    // document.getElementById("postd").appendChild(x);
                    // document.getElementById("postd").appendChild(z);

                    document.getElementById("addmore").parentNode.insertBefore(x, document.getElementById("removebutton"));
                    // document.getElementById("addmore").parentNode.insertBefore(y, document.getElementById("addmore"));
                    // document.getElementById("addmore").parentNode.insertBefore(z, document.getElementById("removebutton"));
                    value++;
                    document.getElementById("accountCounts").value = value;
                  }

                  // function removeFunction() {
                  //   // Removes an element from the document
                  //   var element = document.getElementById(removebutton);
                  //   element.parentNode.removeChild(element);
                  // }

                  $(document).ready(function () {
                    $("#removebutton").click(function () {
                      if (value !== 0) {
                        $("input").remove("#accountinput" + (value - 1));
                          value--;
                          document.getElementById("accountCounts").value = value;
                      }
                    });
                  });

                </script>




                <!-- End of script -->
              </div>
              <!-- end of posOption -->

              <div class="userName">
                <label>Username:</label>
                <input type="text" name="username" value="" placeholder="Username" required>
                <span id="availability"></span>
              </div>

              <div class="emailAdd">
                <label class="email-input">Email:</label>
                <input type="email" name="email" value="" placeholder="Email Address" required>
              </div>

              <div class="passWord">
                <label>Password:</label>
                <input onclick="changeback()" type="password" name="password" id="password" value="" placeholder="Password" required>
              </div>

              <div class="cPassword">
                <label>Confirm Password:</label>
                <input onclick="changeback()" type="password" name="password2" id="password2" value="" placeholder="Confirm Password"required/>
              </div>

              <div class="regform-button">
                <button class="button" type="submit" name="Login"/>Submit</button>
                <label>Already have an account?</label>
                <a href="index.php">Log in here</a>
              </div>




          </form>
          <!-- end of regform -->
          </div>
          <!-- end of regbox -->



          </div>
          <!-- end of container -->
          <div id="freepik">
              <a href="https://stories.freepik.com/work">Designed by Freepik</a>
          </div>

      </div>
      <!-- end of reg-container -->




        <footer>
             <h4>Callmax Solutions Coaching System, Copyright &copy; 2020</h4>
        </footer>

</body>
</html>
