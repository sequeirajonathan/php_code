<?php

$title = "Pictures";

$user = $_SESSION["user"];

// get the images
$images = $db->query("
	SELECT A.id, A.userid, A.title, A.image AS pic, A.content, B.username AS user
	FROM blogs A
	JOIN users B
	ON A.userid = B.id
	ORDER BY A.title");

// include the view
include "views/blog.tpl";