<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signout</title>
    <script src="verify.js"></script>
    <link href="signupstyle.css" rel="stylesheet">
</head>
<div class="topnav">
    <a class="active" href="testmain.php">Home</a>
    <a href="Todo.php">To-do Tasks</a>
    <a href="completedtasks.php">Completed Tasks</a>
    <a href="wantout.html">Signout</a>
</div>vim 
<body>
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
?>
<p style="color:darkblue"><?php echo $resultstring2; ?>     <?php echo $resultstring3; ?>  </p>

<button class="signout"><a href="signedout.html">Sign out</a></button>



</body>
</html>

