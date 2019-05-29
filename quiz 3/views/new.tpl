<?php include "partials/header.tpl" ?>

<div class="row">
    <div class="col-sm">
        <h1>New Blog Post</h1>

        <form action="?p=new_submit" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="image">Blog Image</label>
                <input type="file" class="form-control-file" id="image" name="image">
            </div>
            <div class="form-group">
                <label for="title"> Blog Title</label> <input type="text" class="form-control" id="title" name="title">
            </div>
            <div class="form-group">
                <label for="content">Blog Content</label>
                <textarea class="form-control" id="content" rows="3" name="content"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>

<?php include "partials/footer.tpl" ?>