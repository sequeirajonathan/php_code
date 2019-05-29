<?php

// get params from post
$description = $_POST["description"];
$collection = $_POST["collection"];
$year = $_POST["year"];
$width = $_POST["width"];
$height = $_POST["height"];
$selected = $_POST["poststamp"];
$duplicate = 1;


// get user from the session
$userid = $_SESSION["id"];

// upload the image
$ext = strtolower(pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION));
$filename = md5($title) . ".$ext";
copy($_FILES["image"]["tmp_name"], "images/$filename");

// convert 
$size = $width * $height;

if($selected == 'true') {
	$selected = true;
} else {
	$selected = false;
}

// insert into the database
$q = $db->query("
	INSERT INTO stamp (userid, title,  year, picture, collection, duplicate, status , size ) 
	VALUES ('$userid','$title','$year','$filename','$collection', '$duplicate', '$selected', '$size' )");


print_r($q);
// redirect to list
// header("Location: ?p=blog");