<?php

// catch user/pass
$email = $_POST["email"];
$pass = md5($_POST["pass"]);

// check against the database
$result = $db->query("SELECT id, username FROM users WHERE username='$email' AND password='$pass'");

// user and password matches
if(count($result) > 0) {
// user or pass incorrect 
	header("Location: ?p=signup&error=1");
} else {
    $db->query("INSERT INTO users (`username`, `password`) VALUES ('$email','$pass')");
    $result = $db->query("SELECT id, username FROM users WHERE username='$email' AND password='$pass'");
    // start the session
	$_SESSION["id"] = $result[0]->id;
	$_SESSION["user"] = $result[0]->username;
    
    header("Location: ?p=a");
}