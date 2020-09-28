<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        <?php
        include 'connection.php';

//                String regnum = request.getParameter("regnumber");
//                long regnumber = Integer.parseInt(regnum);
            $user = $_POST['username'];
            $pwd = $_POST['password'];
            $fname = $_POST['firstname'];
            $lname = $_POST['lastname'];
            $fullname = $fname." ".$lname;
            $position = $_POST['position'];
            $email = $_POST['email'];
            $accountCounts = $_POST['"accountCounts'];
            
            
            
//            encryption encryptingPW = new encryption();
//                int position = Integer.parseInt(pos);

//            Class.forName("com.mysql.jdbc.GoogleDriver");
//                    con = DriverManager.getConnection("jdbc:google:mysql://plexiform-guide-271617:us-central1:callmaxcoaching/callmaxcoaching", "root", "callmax@coaching");
//            Class.forName("com.mysql.jdbc.Driver");
//            con = DriverManager.getConnection("jdbc:mysql://35.222.202.182:3306/callmaxcoaching", "root", "callmax@coaching");
//                 Class.forName("com.mysql.jdbc.Driver");
//                         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/callmaxcoaching", "root", "callmax@coaching");
//             Statement st = con.createStatement();
            if(isset($_POST['position']) || $position == "TL"){
            for($i = 0; $i < $accountCounts; $i++){
                $accountinput = $_POST['accountinput'.$i];
                $query = "INSERT into tl_accounts(employee_name, account, email) VALUES ('".$fullname."', '".$accountinput."', '".$email."')";
                mysqli_query($connection, $query);
            }
            }
            if(isset($_POST['position']) || $position == "AM"){
            for($i = 0; $i < $accountCounts; $i++){
                $accountinput = $_POST['accountinput'.$i];
                $query = "INSERT into tl_accounts(employee_name, account, email) VALUES ('".$fullname."', '".$accountinput."', '".$email."')";
                mysqli_query($connection, $query);
            }
            }
            //ResultSet rs;
            //encryptingPW.getHashPass(pwd)
            $i = 1;
            if ($i > 0) {
                $query = "INSERT into employee(firstname, lastname, demerits, username, password, email, status, reg_date) values ('".$fname."','".$lname."','".$position."', '".$user."','".$pwd."', '".$email."', 'Active', NOW())";
                mysqli_query($connection, $query);
                //session.setAttribute("userid", user);
                header("location:welcome.php?n=verified");
                // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
            } else {
                header("location:index.php");
            }

        ?>
    </body>
</html>
