<?php

// catch user/pass
$user = $_POST["signup-user"];
$pass = md5($_POST["signup-pass"]);
$userid = md5($user);

//check if username already exist
$checkuser = $db->query("SELECT username FROM users WHERE username ='$user'");

print_r($checkuser);

// A result came back
if(count($checkuser) > 0) {
    // redirect to the signup with errors
	header("Location: ?p=signup&error=1");
    
} else {
    // insert new user into database
    $db->query("INSERT INTO users (userid, username, password) VALUES ('$userid','$user','$pass')");
    // redirect on success
    
}