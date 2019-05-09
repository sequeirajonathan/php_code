<?php

if(isset($_POST["submit"])) {
    session_start();
}

$username = $_POST["user"];
$password = $_POST["password"];

$hashedUsername = hash('sha256', $username);
$hashedPassword = hash('sha256', $password);

$storedUser = hash('sha256', "admin");
$storedPassword = hash('sha256', "pass1234");

$loginUri = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]/code/activity5/login.php";
$homeUri = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]/code/activity5/home.php";

if(($hashedUsername == $storedUser) && ($hashedPassword == $storedPassword)){
    $_SESSION["user"] = $username;
    header('Location: '.$homeUri);
}
else {
    header('Location: '.$loginUri);
}