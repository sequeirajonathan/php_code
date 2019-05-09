<?php
// start a session
session_start();
 
// initialize session variables
$user = $_SESSION["user"];
 
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Home</title>
</head>

<body>
    <h1>Hello <?php echo $user;?></h1>
</body>



</html>