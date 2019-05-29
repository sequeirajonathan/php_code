<?php include "partials/header.tpl" ?>

<div class="row">
    <div class="col-sm">
        <h1>Add Stamp</h1>

        <form action="?p=new_submit" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="image">Stamp Image</label>
                <input type="file" class="form-control-file" id="image" name="image">
            </div>
            <div class="form-group">
                <label for="title">Stamp Description</label> <input type="text" class="form-control" id="title"
                    name="description">
            </div>
            <div class="form-group">
                <label for="collection">Collection</label>
                <input type="text" class="form-control" id="collection" rows="3" name="collection">
            </div>
            <div class="form-group">

                <div class="row">
                    <div class="col">
                        <label for="year">Year (yyyy)</label>
                        <input type="text" class="form-control" id="year" name="year">
                    </div>
                    <div class="col">
                        <label for="width">Width (mm)</label>
                        <input type="text" class="form-control" id="width" name="width">
                    </div>
                    <div class="col">
                        <label for="height">Height (mm)</label>
                        <input type="text" class="form-control" id="height" name="height">
                    </div>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="poststamp" id="posted" value="true" checked>
                    <label class="form-check-label" for="posted1">
                        Post Stamp to Book?
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="poststamp" id="notposted" value="false">
                    <label class="form-check-label" for="posted2">
                        Don't Post Stamp to Book?
                    </label>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>

<?php include "partials/footer.tpl" ?>

<?php include "partials/footercloser.tpl" ?>