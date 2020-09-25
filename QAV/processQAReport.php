<?php
    require('../connection.php');
    if (isset($_POST['submit'])) {

        // file upload
    $filename = $_FILES['myfile']['name'];

    // destination of the file on the server
    $destination = '../uploads/' . $filename;

    // get the file extension
    $extension = pathinfo($filename, PATHINFO_EXTENSION);

    // the physical file on a temporary uploads directory on the server
    $file = $_FILES['myfile']['tmp_name'];
    $size = $_FILES['myfile']['size'];
        
        $agent = $_POST['agentname'];
        $qa = $_POST['submittedby'];
        $account = $_POST['account'];
        $suggestion = $_POST['suggestion'];
        // $recording = $_POST['recording'];
        $wrongAnswer = $_REQUEST['wrongAnswer'];
        $error = $_REQUEST['error'];
        $answer = $_REQUEST['answer'];
        $item = $_REQUEST['item'];
        $minor=0;
        $major=0;
        $TotalDeduction=0;
        $items = array(); 
    if (!in_array($extension, ['mp3', 'mpeg3'])) {
        echo " You file extension must be .zip, .pdf, .txt, .mp4, .mp3, .xlsx or .docx";
    } elseif ($_FILES['myfile']['size'] > 25000000) { // file shouldn't be larger than 25Megabyte
        echo "File too large!";
    }
        // move the uploaded (temporary) file to the specified destination
        move_uploaded_file($file, $destination);

            for ($i=0; $i < count($wrongAnswer); $i++) { 
                if ($wrongAnswer[$i] == $answer[$i]) {
                    if ($error[$i] == "Minor") {
                        $minor++;
                        $TotalDeduction++;
                        array_push($items, $item[$i]);
                    }
                    if ($error[$i] == "Major") {
                        $major++;
                        $TotalDeduction = $TotalDeduction+5;
                        array_push($items, $item[$i]);
                    }
                }
            }
            // echo implode("\n", $items);
            $query1 = "INSERT INTO agent_reports(agent, account, report_type, date_issued, status, team_leader) VALUES ('" .$agent."', '".$account."', 'QA Report', NOW(), 'Pending', '".$sessionUser."')";
            mysqli_query($connection, $query1);
            $last_id = mysqli_insert_id($connection);
    
            $query = "INSERT INTO qa_record(report_id, agent, account, minor, major, total_deduction, qa, date, error_items, suggestion, filename, filesize, downloads, status) 
            VALUES(".$last_id.", '".$agent."', '".$account."', ".$minor.", ".$major.", '".$TotalDeduction."', '".$qa."', NOW(), '".implode(',\n',$items)."', '".$suggestion."', '".$filename."','".$size."', 0, 'Pending');";
            mysqli_query($connection, $query);
    }
    header('location:reports.php');
?>