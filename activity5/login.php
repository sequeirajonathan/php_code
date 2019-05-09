<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.css">
    <title>Login</title>
</head>

<body>
    <div class="ui raised very padded text container segment">
        <h2 class="ui header">Login</h2>
        <form class="ui form" method="POST" action="submit.php">
            <div class="field">
                <label>Username</label>
                <input type="text" name="user" placeholder="Username">
            </div>
            <div class="field">
                <label>Password</label>
                <input type="password" name="password" placeholder="Enter Password">
            </div>
            <button class="ui button" name="submit" type="submit">Submit</button>
        </form>
    </div>
</body>

</html>