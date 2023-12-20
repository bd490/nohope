<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Main</title>
    <link href="signupstyle.css" rel="stylesheet">
</head>
<!-- php to acquire variables-->
<?php
session_start();
$servername = "sql1.njit.edu";// you need to put your assigned server name
$username = "dsg2";// your ucid
$password = "3aWorldisUltimat3!";// database password
$dbname = "dsg2"; // your ucid is your database name

$conn = new mysqli($servername, $username, $password, $dbname);

$username= $_SESSION["username"];

$sql2 = "SELECT `userfirstname` FROM `finalTWO` WHERE `userID`='$username'";
$query2 = mysqli_query($conn,$sql2);
$result2 = mysqli_fetch_assoc($query2);
$resultstring2 = $result2['userfirstname'];



$sql3 = "SELECT `userlastname` FROM `finalTWO` WHERE `userID`='$username'";
$query3 = mysqli_query($conn,$sql3);
$result3 = mysqli_fetch_assoc($query3);
$resultstring3 = $result3['userlastname'];


//echo $resultstring2;
?>
<!--end of php used to establish a connection-->
<body>



<div class="topnav">
     <a class="active" href="testmain.php">Home</a>
    <a href="Todo.php">List of Units</a>
    <a href="builder.php">Team-Builder</a>
    <a href="createdteams.php">Created Teams</a>
    <a href="news.php">News</a>
    <a href="custom.php">Custom</a>
    <a href="ranking.php">Weekly Ranking</a>
    <a href="wantout.html">Signout</a>
</div>
<h4 style="color:darkblue"><?php echo $resultstring2; ?>     <?php echo $resultstring3; ?>  </h4>

<h1 class="Center"><center><u>Hello and welcome to the world of Dokkan.</u></center></h3>

<scan class="center3"><img src="dokkan.jpg" class="shrink"></img></scan><br><br><br>

<p class="center2"><center> Hello there! Welcome to the world of Dokkan! This website is dedicated to Bandai Namco’s hit mobile game Dragonball Z: Dokkan Battle. Dragon Ball Z: Dokkan Battle is a free-to-play mobile game based on the Dragon Ball anime franchise. It is a puzzle RPG game where you can collect characters from the hit anime through a Gacha system and use them to defeat your enemies! On this website, you will be able to build teams based on certain specs, keep up with news of events, and even create custom Dokkan battle cards to share with others! Click one of the tabs above to get started! Good luck Patrollers! </center></p>


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</html>
