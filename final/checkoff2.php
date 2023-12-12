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

$idit=$_POST['userID'];


$sql3 = "SELECT `userlastname` FROM `finalTWO` WHERE `userID`='$username'";
$query3 = mysqli_query($conn,$sql3);
$result3 = mysqli_fetch_assoc($query3);
$resultstring3 = $result3['userlastname'];


$sql5 = "SELECT `Duedateandtime` FROM `completed` WHERE `completeID`='$idit'";
$query5 = mysqli_query($conn,$sql5);
$result5 = mysqli_fetch_assoc($query5);
$resultstring5 = $result5['Duedateandtime'];

$sql6 = "SELECT `title` FROM `completed` WHERE `completeID`='$idit'";
$query6 = mysqli_query($conn,$sql6);
$result6 = mysqli_fetch_assoc($query6);
$resultstring6 = $result6['title'];


$sql7 = "SELECT `description` FROM `completed` WHERE `completeID`='$idit'";
$query7 = mysqli_query($conn,$sql7);
$result7 = mysqli_fetch_assoc($query7);
$resultstring7 = $result7['description'];


$sql8 = "INSERT INTO `Todo`(`userfirstname`, `userlastname`, `duedateandtime`, `title`, `description`) VALUES ('$resultstring2','$resultstring3','$resultstring5','$resultstring6','$resultstring7')";
$queary8 = mysqli_query($conn,$sql8);







$sql4="DELETE FROM `completed` WHERE `completeID`='$idit'";
//$query4 = mysqli_query($conn,$sql4);



$rs = mysqli_query($conn, $sql4);


if($rs){

header("Location: completedtasks.php");
}
else{
echo "somethings wrong";
}

?>
