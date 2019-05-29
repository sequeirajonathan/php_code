<?php 

if(isset($_GET['action'])) {

    $action = $_GET['action'];
    $id = $_GET['id'];

    echo $id;

    if($action = "delete") {
        $db->query("DELETE FROM `blogs` WHERE userid = $id");
        // redirect to the list
	header("Location: ?p=blog&action=deletecomplete");
    } else {
        // redirect to the list
	header("Location: ?p=blog&action=error");
    }
    
}