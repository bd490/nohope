<?php
$servername = "sql1.njit.edu";// you need to put your assigned server name
$username = "dsg2";// your ucid
$password = "Thund3rStruck!";// database password
$dbname = "dsg2"; // your ucid is your database name


//$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
//$conn = mysqli_connect("mysql:host=$servername;dbname=$dbname", $username, $password);
$conn = new mysqli($servername, $username, $password, $dbname);

$username = $_POST['Uname'];
$password = $_POST['Pword'];
$FirstName= $_POST['Fname'];
$LastName = $_POST['Lname'];
$college  = $_POST['College'];
$major    = $_POST['Major'];

$sql = "INSERT INTO finalTWO ( userID,userPW, userfirstname, userlastname,usercollege,usermajor) VALUES
( '$username','$password', '$FirstName','$LastName','$college','$major')";

$rs = mysqli_query($conn, $sql);


if($rs){

header("Location: fauxlogin.html");
}
else{
echo "somethings wrong";
}
?>

