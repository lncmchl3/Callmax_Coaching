<?php
    require('../connection.php');

        
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
    $emailoftl = null;
    $nameoftl = null;
    // inclue required php mailer files
    require '../phpmailer/includes/PHPMailer.php';
    require '../phpmailer/includes/SMTP.php';
    require '../phpmailer/includes/Exception.php';
    // define namespaces
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\SMTP;
    use PHPMailer\PHPMailer\Exception;

    if (isset($_POST['submit'])) {

        $query2 = "SELECT * FROM tl_accounts WHERE account LIKE UPPER('".$account."')";
            $result2 = mysqli_query($connection, $query2);
            if (mysqli_num_rows($result2) > 0) {
                while ($row2 = mysqli_fetch_assoc($result2)) {
                    $emailoftl = $row2['email'];
                    $nameoftl = $row2['employee_name'];
                }
            }

    // create instance
    $mail = new PHPMailer();
    // Set mailer to use smtp
    $mail->isSMTP();
    // define smtp host
    $mail->Host = "smtp.gmail.com";
    // enable smtp authentication
    $mail->SMTPAuth = "true";
    $mail->SMTPSecure = "ssl";
    $mail->Port = "465";
    $mail->SMTPOptions = array(
        'ssl' => array(
        'verify_peer' => false,
        'verify_peer_name' => false,
        'allow_self_signed' => true
        )
        );
    // email account/sender/recipient config
    $mail->Username = "helpdesk.callmax@gmail.com";
    $mail->Password = "Callmaxsolutions";
    $mail->addAddress($emailoftl);
    $mail->Subject = $account.": Agent error report";
    $mail->Body = "Hi ".$nameoftl.". You have recieved report from QA.\n\nName of agent: "
    .$agent." \nPlease proceed to link for more details:\n callmaxcrs.callmaxsolutions.com";
    $mail->setFrom("helpdesk.callmax@gmail.com", "Callmax CRS");
    if($mail->Send()){
        echo "Email sent";
    }else{
        echo "Error Sending email <br/>email Sender:".$mail->Username."<br/>Password: ".$mail->Password."<br/>setFrom: ".$mail->setFrom("helpdesk.callmax@gmail.com")."<br/>";
    }
    // close smtp connection
    $mail->smtpClose();

        // file upload
    $filename = $_FILES['myfile']['name'];

    // destination of the file on the server
    $destination = '../uploads/' . $filename;

    // get the file extension
    $extension = pathinfo($filename, PATHINFO_EXTENSION);

    // the physical file on a temporary uploads directory on the server
    $file = $_FILES['myfile']['tmp_name'];
    $size = $_FILES['myfile']['size'];
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
    // echo $emailoftl;
    }
    header('location:reports.php');
?>