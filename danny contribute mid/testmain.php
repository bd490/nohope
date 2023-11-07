<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main</title>
    <link href="signupstyle.css" rel="stylesheet">
</head>
<!-- php to acquire variables-->
<?php
session_start();
$servername = "sql1.njit.edu";// you need to put your assigned server name
$username = "dsg2";// your ucid
$password = "Thund3rStruck!";// database password
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
    <a href="Todo.php">Team-Builder</a>
    <a href="completedtasks.php">Created Teams</a>
    <a href="wantout.php">Logout</a>
</div>
 <p style="color:darkblue"><?php echo $resultstring2; ?>     <?php echo $resultstring3; ?>  </p>

<h1 class="Center"><u>Hello and welcome to the world of Pokemon.</u></h3>

<scan class="center3"><img src="https://snag.gy/CN1vH.jpg" class="shrink"></img></scan>

<p class="center2"> Hello there! Welcome to the world of Pokemon! My name is Oak! People call me the Pokemon professor! This world is inhabited by creatures called Pokemon! For some people, pokemon are pets. others use them for fights. Myself...I study Pokemon as a profession. Here on this website, you will be able to check out the wonderful world of Pokemon in Kanto! </p>


</body>
</html>
