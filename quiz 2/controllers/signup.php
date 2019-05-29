<?php

$title = "Sign Up";

// check if there is a possible login error
$error = isset($_GET["error"]);

// display the template 
include "views/signup.tpl";