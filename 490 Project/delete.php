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


$idit=$_POST['userID'];


$sql4="DELETE FROM `Todo` WHERE `TodoID`='$idit'";
//$query4 = mysqli_query($conn,$sql4);



$rs = mysqli_query($conn, $sql4);


if($rs){

header("Location: Todo.php");
}
else{
echo "somethings wrong";
}

?>
