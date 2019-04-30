<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <title>My Profile</title>
    <style>
    * {
        box-sizing: border-box;
        padding: 0;
        margin: 0;
    }

    body {
        font-family: 'Roboto', sans-serif;
        line-height: 1.5em;
    }
    .container {
        position: relative;
        max-width: 600px;
        max-height: 550px;
        min-width: 600px;
        min-height: 550px;
        background-color: #dddd;
        margin: 2vh auto;
    }

    .profile-header {
        display: flex;
        font-size: 30px;
        min-width: 500px;
        max-width: 500px;
        position: relative;
        top: 25px;
        left: 50px;
    }
     .profile-picture {
         width: 230px;
         height: 190px;
         position: absolute;
         top: 100px;
         left: 50px;
         display: flex;
         flex-direction: row;
         justify-content: center;
         align-items: center;
     }

     .profile-details {
         position: absolute;
         top: 100px;
         right: 50px;
     }

     .profile-content {
         position: absolute;
         bottom: 25px;
         flex-direction: column;
         display: flex;
         justify-content: justify;
         padding: 15px;
     }
    </style>
</head>
<body>
<?php 
$profile = [
	"name" => "Jonathan Sequeira",
	"age" => "27",
	"position" => "Software Engineer",
	"gender" => "M",
	"facebook_link" => "https://www.facebook.com/sequeirajonathan",
	"github_link" => "https://github.com/sequeirajonathan",
	"bio" => "I am a recent veteran after six years of service I have decided to pursue a career in Computer Science. My careers in the Navy as a petroleum technician has been quite a journey, but I decided to continue where I left off before my service and transitioned to civilian life to achieve my goals. I am currently a full-stack web developer with experience in the following technologies: Java, HTML, CSS, SASS, JavaScript, Node.js, PHP, React Framework, Git Version Control, REST and 3rd part API implementation. ",
	"picture" => "https://scontent.fmia1-2.fna.fbcdn.net/v/t1.0-9/51951552_337025927154566_4616204560245981184_n.jpg?_nc_cat=108&_nc_ht=scontent.fmia1-2.fna&oh=a454cd7bb7019fa0dc0b295d93c71959&oe=5D779E18"
];
?>
    <div class="container">
    <h1 class="profile-header">Your Profile</h1>
    <img class ="profile-picture" 
    <?php 
    
    if($profile['gender'] == "M") {
        echo "style = 'border: 5px solid dodgerblue'";
    } else {
         echo "style = 'border: 5px solid pink'";
    }
    
    ?> src="<?php echo $profile['picture']; ?>" alt="profile image">
    <div class="profile-details">
    <h3><?php echo $profile['name']; ?></h3>
    <h4><?php echo $profile['position']; ?></h4>
    <h4><?php echo $profile['age'] . " years old"; ?></h4>
    <h4><a href="<?php echo $profile['facebook_link']; ?>">Facebook</a></h4>
    <h4><a href="<?php echo $profile['github_link']; ?>">GitHub</a></h4>
    </div>

    
    <div class="profile-content">
    <p><?php echo $profile['bio']?></p>
    </div>
    </div>
</body>
</html>