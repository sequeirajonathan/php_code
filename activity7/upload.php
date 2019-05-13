<?php
include("./includes/header.php");
include("./includes/header.php");
include("./includes/navbar.php");

$currentUrl = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$resolve = explode("?", $currentUrl);
$success = false;
if(count($resolve) > 1) {
    $success = true;
} 

?>

<body>
    <div class="container">
        <form action="check.php" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="license-id">License ID</label>
                <input type="text" class="form-control" id="license-id" name="license-id" aria-describedby="license-id"
                    placeholder="Enter License ID">
                <small id="license-id" class="form-text text-muted">We'll never share your License ID with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="upload-license-image">Upload License Image</label>
                <hr>
                <input type="file" name="file" id="upload-license-image">
            </div>
            <input type="submit" name="submit" class="btn btn-primary" value="Upload Image">
            <br>
            <?php 
            if($success) echo '<br><span class="badge badge-success">File Uploaded Successfully</span>';
            ?>
        </form>
    </div>

</body>
<?php
include("./includes/scripts.php");
?>

</html>