
<?php
$servername = "sql1.njit.edu";// you need to put your assigned server name
$username = "dsg2";// your ucid
$password = "3aWorldisUltimat3!";// database password
$dbname = "dsg2"; // your ucid is your database name



$conn = new mysqli($servername, $username, $password, $dbname);


session_start();

$username= $_SESSION["username"];




$sql2 = "SELECT `userfirstname` FROM `finalTWO` WHERE `userID`='$username'";
$query2 = mysqli_query($conn,$sql2);
$result2 = mysqli_fetch_assoc($query2);
$resultstring2 = $result2['userfirstname'];


$sql3 = "SELECT `userlastname` FROM `finalTWO` WHERE `userID`='$username'";
$query3 = mysqli_query($conn,$sql3);
$result3 = mysqli_fetch_assoc($query3);
$resultstring3 = $result3['userlastname'];

$user = $_POST['user'];
$vote = $_POST['voting'];


$sql = "INSERT INTO voting (user,vote) VALUES ( '$user', '$vote')";


$rs = mysqli_query($conn, $sql);


if($rs){

header("Location: ranking.php");

}
else{
echo "somethings wrong";
}
?>

