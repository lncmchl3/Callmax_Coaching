<?php
    require('../connection.php');

    if (isset($_POST['submit'])) {
        $wrongAnswer = $_REQUEST['wrongAnswer'];
        $error = $_REQUEST['error'];
        $answer = $_REQUEST['answer'];
        $minor = 0;
        $major = 0;
        $TotalDeduction = 0;

        for ($i=0; $i < count($wrongAnswer); $i++) { 
            if ($wrongAnswer == $answer) {
                if ($error == 'Minor') {
                    $minor++;
                    $TotalDeduction++;
                }
                if ($error == 'Major') {
                    $major++;
                    $TotalDeduction+5;
                }
            }
        }
        echo $minor."<br/>";
        echo $major."<br/>";
        echo $TotalDeduction."<br/>";
    }
?>