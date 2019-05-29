<?php include "partials/header.tpl" ?>

<div class="row">
    <div class="col-sm">
    </div>
</div>
<div class="row">
    <?php foreach($images as $img) { ?>
    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3">
        <div class="card">
            <img src="images/<?= $img->pic ?>" class="card-img-top" alt="<?= $img->title ?>">
            <div class="card-body">
                <h5 class="card-title">@<?= $img->user ?></h5>
                <p class="card-text"><?= $img->title ?></p>
                <p class="card-text">
                    <?php
                $whole_content = $img->content;
                $summary = substr($whole_content, 0, 40)."...";
                echo $summary;
                    ?>
                </p>

                <?php 
                if( $_SESSION["user"] == "Admin") {
          
                echo '<a href="?p=blog_submit&id='.$img->userid.'&action=delete"
                class="card-link">Delete</a>';
                }
                ?>

            </div>

        </div>
    </div>
    <?php } ?>
</div>

<?php include "partials/footer.tpl" ?>