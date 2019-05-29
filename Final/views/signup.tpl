<?php include "partials/header.tpl" ?>

<div class="row">
    <div class="col-sm">
        <?php if($error) {
            echo '<div class="alert alert-warning" role="alert">Username already exist</div>';
        } ?>
        <h1>Sign Up!</h1>
        <form action="?p=signup_submit" method="post">
            <div class="form-group">
                <label for="user">Create Username</label>
                <input class="form-control" id="user" name="signup-user">
            </div>
            <div class="form-group">
                <label for="pass">Crate Password</label>
                <input type="password" class="form-control" id="pass" name="signup-pass" placeholder="Password">
                <span style="color:grey; margin-left: 5px;"> Have an account already? <a
                        href="?p=login">Login!</a></span>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>

<?php include "partials/footer.tpl" ?>
<?php include "partials/footercloser.tpl" ?>