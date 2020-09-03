<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <?php
        require('../connection.php');
            $id = $_GET["n"];

            $query = "UPDATE agent_reports SET acknowledge_date = NOW(), status = 'Acknowledged' WHERE id ='".$id."'";
            $result = mysqli_query($connection, $query);
            
            header("location:acknowledgementlink.php");
        ?>
    </body>
</html>
