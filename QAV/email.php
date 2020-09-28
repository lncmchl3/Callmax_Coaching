<?php
// inclue required php mailer files
    require '../phpmailer/includes/PHPMailer.php';
    require '../phpmailer/includes/SMTP.php';
    require '../phpmailer/includes/Exception.php';
// require '../phpmailer/includes/class.phpmailer.php';
// require '../phpmailer/includes/class.smtp.php';
// require '../phpmailer/includes/PHPMailerAutoload.php';
// define namespaces
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
// create instance
$mail = new PHPMailer;
// Set mailer to use smtp
$mail->isSMTP();
// define smtp host
$mail->Host = 'smtp.gmail.com';
// enable smtp authentication
$mail->SMTPAuth = true;
$mail->SMTPSecure = "tls";
$mail->Port = 587;
$mail->isHTML(true);
$mail->SMTPDebug = SMTP::DEBUG_SERVER;
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
$mail->addAddress('helpdesk.callmax@gmail.com');
$mail->Subject = 'PHPMailer GMail SMTP test';
$mail->Body = "Test Hello world!";
$mail->setFrom("helpdesk.callmax@gmail.com"); 
if($mail->Send()){
    echo "Email sent";
}else{
    echo "Error Sending email <br/>Error info: ". $mail->ErrorInfo;
}
// close smtp connection
$mail->smtpClose();
?>