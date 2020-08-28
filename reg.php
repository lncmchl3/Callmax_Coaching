
<!DOCTYPE html>
<style>
    a{
        text-decoration: none;
        color: cornflowerblue; 
    }
    .accountinput{
        box-sizing: border-box;
    }
    td input[type=text]{
        width: 100%;
        box-sizing: border-box;
        display: block;
    }
    td input[type=password]{
        width: 100%;
        box-sizing: border-box;
        display: block;
    }
    td input[type=email]{
        width: 100%;
        box-sizing: border-box;
        display: block;
    }
    #removebutton{
        float: right;
    }
</style>
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
            r.style.display = 'block';
            accountinputtitle.style.display = 'block';
            addmore.style.display = 'block';
        } else {
//            accountinput.style.display = 'none';
            accountinputtitle.style.display = 'none';
            addmore.style.display = 'none';
            r.style.display = 'none';
            s.style.visibility = 'hidden';
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
        <title>Admin Registration</title>
    </head>
    <body>
        <form method="post" action="registration.php" autocomplete="off" onsubmit="return confirmPass()">
            <input type="hidden" id="accountCounts" name="accountCounts" value="0">
            <center>
                <table border="1" width="30%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Admin Registration</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!--                    <tr>
                                                <td>Registration Number</td>
                                                <td><input type="text" name="regnumber" value="" required></td>
                                            </tr>-->
                        <tr>
                            <td width="30%;">First Name</td>
                            <td><input type="text" name="firstname" value="" required/></td>
                        </tr>
                        <tr>
                            <td width="30%;">Last Name</td>
                            <td><input type="text" name="lastname" value="" required/></td>
                        </tr>
                        <tr>
                            <td width="30%;">Position</td>
                            <td id="postd">
                                <select name="position" onchange='CheckPos(this.value);'>                          
                                    <option value="QAV">Quality Analyst - Voice</option>
                                    <option value="QAN">Quality Analyst - Non-Voice</option>
                                    <option value="HR">Human Resources</option>
                                    <option value="TL">Team Leader</option>
                                    <option value="AM">Account Manager</option>
                                    <!--<option value="MIS">MIS</option>-->
                                    <option value="KPI">KPI</option>
                                </select>
                                <span id='accountinputtitle' style=" display: none">Accounts:</span>
                                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
                                <script>
                                    
//                                    var a = document.getElementById("accountCounts").value;

                                    function createFunction() {

                                        var x = document.createElement("INPUT");
                                        var y = document.createElement("input");
                                        var z = document.createElement("br");
                                        x.setAttribute("type", "text");
                                        x.setAttribute("id", "accountinput" + value);
                                        x.setAttribute("name", "accountinput" + value);
                                        x.setAttribute("class", "accountinput");
//                                        y.setAttribute("type", "button");
//                                        y.setAttribute("id", "removebutton");
//                                        y.setAttribute("name", "removebutton");
//                                        y.setAttribute("value", "remove");
//                                        y.setAttribute("onClick", "removeFunction()");
//                                        document.getElementById("postd").appendChild(x);
//                                        document.getElementById("postd").appendChild(y);
//                                        document.getElementById("postd").appendChild(z);
                                        document.getElementById("addmore").parentNode.insertBefore(x, document.getElementById("removebutton"));
//                                        document.getElementById("addmore").parentNode.insertBefore(y, document.getElementById("addmore"));
//                                        document.getElementById("addmore").parentNode.insertBefore(z, document.getElementById("removebutton"));
                                        value++;
                                        document.getElementById("accountCounts").value = value;
                                        }
                                    

//                                    function removeFunction() {
//                                        // Removes an element from the document
//                                        var element = document.getElementById(removebutton);
//                                        element.parentNode.removeChild(element);
//                                    }
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
                                <input type="button" id='removebutton' value="remove" style=" display: none">
                                <input type="button" id='addmore' onclick="createFunction(this.value)" value="Add" style=" display: none">

                            </td>
                        </tr>
                        <tr>
                            <td width="30%;">User Name</td>
                            <td><input type="text" name="username" value="" required/></td>
                    <span id="availability"></span>
                    </tr>
                    <tr>
                        <td width="30%;">Email</td>
                        <td><input type="email" name="email" value="" required/></td>
                    </tr>
                    <tr>
                        <td width="30%;">Password</td>
                        <td><input onclick="changeback()" type="password" name="password" id="password" value="" required/>
                        </td>
                    </tr>
                    <tr>
                        <td width="30%;">Confirm Password</td>
                        <td><input onclick="changeback()" type="password" name="password2" id="password2" value="" required/>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered? <a href="index.php">Login Here</a></td>
                    </tr>
                    </tbody>
                </table>
            </center>
        </form>
    </body>
</html>
