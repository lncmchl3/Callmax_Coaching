<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
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

            $query2 = "SELECT * FROM qa_record where report_id =".$id;
            $result = mysqli_query($connection, $query2);
            if (mysqli_num_rows($result) > 0) {
                $query3 = "UPDATE qa_record SET status = 'Acknowledged' WHERE report_id =".$id;
                mysqli_query($connection, $query3);
            }
        }
            header("location:acknowledgementlink.php");

        ?>
    </body>
</html>
