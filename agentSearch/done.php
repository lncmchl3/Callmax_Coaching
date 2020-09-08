<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        require('../connection.php');
        if(isset($_POST['n'])){
            $id = $_POST["n"];
            $query = "UPDATE agent_reports SET acknowledge_date = NOW(), status = 'Acknowledged' WHERE id =".$id;
            mysqli_query($connection, $query);
            // echo $id;
        }
            header("location:acknowledgementlink.php");

        ?>
    </body>
</html>
