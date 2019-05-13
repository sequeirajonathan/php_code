<?php
if(isset($_POST['submit'])) {

    $licenseId = $_POST['license-id'];

    $file = $_FILES['file'];
    $fileName = $_FILES['file']['name'];
    $fileTmpName = $_FILES['file']['tmp_name'];
    $fileSize = $_FILES['file']['size'];
    $fileError = $_FILES['file']['error'];
    $fileType = $_FILES['file']['type'];

    $fileExt = explode('.',$fileName);
    $fileActualExt = strtolower(end($fileExt));

    $allowed = array('jpg', 'jpeg', 'png', 'pdf');

    if(in_array($fileActualExt , $allowed)){
        if($fileError == 0) {
            $fileNameNew = $licenseId . "." . $fileActualExt;
            $fileDestination = "./uploads/" . $fileNameNew;
            $filesStatus = true;
            move_uploaded_file($fileTmpName,$fileDestination);
            header("Location: upload.php?fileuploaded");
        } else {
            $filesStatus = false;
            echo "There was an error uploading your file!";
        }
    } else {
        echo "You cannot upload files of this type!";
    }


}
$startSearch = 0;
$fileFound = false; 

if(isset($_POST['id-search'])) {
    $searchId = $_POST['license-id-search'];
    $dir = './uploads';
    $filesInUpload = scandir($dir);
    $startSearch = 1;

    if(empty ($searchId)) {
        $fileFound = false;
    } else {
        foreach ($filesInUpload as $key => $file) {
            $fileSplit = explode(".", $filesInUpload[$key]);
            
            if($fileSplit[0] == $searchId ) {
                $fileFound = true;
                break;
            } else {
                $fileFound = false;
            }
        }
    }
}
?>

<?php
include("./includes/header.php");
include("./includes/header.php");
include("./includes/navbar.php");
?>

<body>
    <div class="container">
        <form action="check.php" method="post">
            <div class="form-group">
                <label for="license-id-search">License ID</label>
                <input type="text" class="form-control" id="license-id-search" name="license-id-search" aria-describedby="license-id-search"
                    placeholder="Search For License ID">
            </div>
            <input type="submit" name="id-search" class="btn btn-primary" value="Search ID">
        </form>
        <?php 
        if($startSearch == 0){
            echo '<span class="badge badge-light">No search conducted</span>';
        } else if($fileFound){
            echo '<span class="badge badge-success">Success! File Found</span>';
        } else {
            echo '<span class="badge badge-danger">No File Found!</span>';
        }
        ?>
        
    </div>
</body>
<?php
include("./includes/scripts.php");
?>

</html>