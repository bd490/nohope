<?php
$servername = "sql1.njit.edu";// you need to put your assigned server name
$username = "dsg2";// your ucid
$password = "3aWorldisUltimat3!";// database password
$dbname = "dsg2"; // your ucid is your database name


//$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
//$conn = mysqli_connect("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn = new mysqli($servername, $username, $password, $dbname);

$username = $_POST['Uname'];
$password = $_POST['Pword'];

$sql = "SELECT `userPW` FROM `finalTWO` WHERE `userID`='$username'";
$query = mysqli_query($conn,$sql);
$result = mysqli_fetch_assoc($query);
$resultstring = $result['userPW'];


$sql2 = "SELECT `userPW` FROM `finalTWO` WHERE `userID`='$username'";
$query = mysqli_query($conn,$sql);
$result = mysqli_fetch_assoc($query);
$resultstring = $result['userPW'];


//$rs = mysqli_query($conn, $sql);

//Cookie information,to keep track of username

session_start();


$_SESSION["username"]=$username;
//$_SESSION["lastname"]=$lastname;

///end of cookie information



if($password==$resultstring){

//header("Location: main page.html");
header("Location: testmain.php");
exit();
}
else{
echo "you done goofed";
}

mysqli_close($conn);
?>
