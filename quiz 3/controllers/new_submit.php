<?php

// get params from post
$title = $_POST["title"];
$content = $_POST["content"];

// get user from the session
$userid = $_SESSION["id"];

// upload the image
$ext = strtolower(pathinfo($_FILES["image"]["name"], PATHINFO_EXTENSION));
$filename = md5(rand() . $title . date()) . ".$ext";
copy($_FILES["image"]["tmp_name"], "images/$filename");

// insert into the database
$db->query("
	INSERT INTO blogs (userid, image, title, content ) 
	VALUES ('$userid','$filename','$title', '$content' )");

// redirect to list
header("Location: ?p=blog");