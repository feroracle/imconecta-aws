<?php

    $to = "info@imconecta.es";  // Your email here
    $from = $_REQUEST['email'];
    $name = $_REQUEST['name'];
	$phone = $_REQUEST['phone'];
	$message = $_REQUEST['message'];
    $headers = "From: $from";
	$subject = "Contact Form PaulService";

    $fields = array();
    $fields{"name"} = "First name";
    $fields{"email"} = "Email";
	$fields{"phone"} = "Phone";
    $fields{"message"} = "Message";


    $body = "Este mensaje fue enviado por la web imconecta.es:\n\n"; foreach($fields as $a => $b){   $body .= sprintf("%20s: %s\n",$b,$_REQUEST[$a]); }

    $send = mail($to, $subject, $body, $headers);

?>
