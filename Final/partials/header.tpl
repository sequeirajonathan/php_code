<!doctype html>
<html lang="en">

<head>
    <title><?= $title ?></title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="booklet/src/jquery.booklet.latest.css" type="text/css" rel="stylesheet"
        media="screen, projection, tv" />

</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Stamp Collector</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
                <?php if($page != "login" && $page != "signup") { ?>
                <li class="nav-item <?php if($page=="new") echo "active"; ?>">
                    <a class="nav-link" href="?p=new">Add Stamp</a>
                </li>
                <li class="nav-item <?php if($page=="list") echo "active"; ?>">
                    <a class="nav-link" href="?p=blog">Blog</a>
                </li>

            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="?p=logout_submit">Logout</a>
                </li>
                <li class="nav-item logged-in active">
                    <a class="nav-link" href="#"><?= $_SESSION['user']?></a>
                </li>
            </ul>
            <?php } ?>
        </div>
    </nav>
    <div class="container">