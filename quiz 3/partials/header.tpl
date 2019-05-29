<!doctype html>
<html lang="en">

<head>
    <title><?= $title ?></title>

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <style type="text/css">
    .card {
        margin-bottom: 30px;
    }

    .card-img-top {
        height: 150px;
    }

    .logged-in {
        justify-content: flex-start;
    }
    </style>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Jon's Blog</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav">
                <?php if($page != "login") { ?>
                <li class="nav-item <?php if($page=="new") echo "active"; ?>">
                    <a class="nav-link" href="?p=new">Post Blog</a>
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
                    <a class="nav-link" href="#">Logged in as <?php echo $_SESSION['user']?></a>
                </li>
            </ul>
            <?php } ?>
        </div>
    </nav>
    <div class="container">