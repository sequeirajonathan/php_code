<?php include "partials/header.tpl" ?>

<div class="row">
    <div class="col-sm">
        <?php if($error) { ?>
        <div class="alert alert-danger">
            <strong>Error!</strong> Email and Password already taken.
        </div>
        <?php } ?>

        <h1>Sign Up!</h1>
        <form action="?p=signup_submit" method="post">
            <div class="form-group">
                <label for="user">Email</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Email" required">
            </div>
            <div class="form-group">
                <label for="pass">Password</label>
                <input type="password" class="form-control" id="pass" name="pass" placeholder="Password" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>

        <hr>
        <a href="?p=login">Already signed up?</a>
    </div>
</div>

<?php include "partials/footer.tpl" ?>