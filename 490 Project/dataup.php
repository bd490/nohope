<?php

//require_once('path.inc');
//require_once('get_host_info.inc');
//require_once('rabbitMQLib.inc');

//$client = new rabbitMQClient("testRabbitMQ.ini","testServer");
//if (isset($argv[1]))
//{
//  $msg = $argv[1];
//}
//else
//{
//  $msg = "test message";
//}



$servername = "sql1.njit.edu";// you need to put your assigned server name
$username = "dsg2";// your ucid
$password = "3aWorldisUltimat3!";// database password
$dbname = "dsg2"; // your ucid is your database name


$conn = new mysqli($servername, $username, $password, $dbname);



$username = $_POST['Uname'];
$password = $_POST['Pword'];
$FirstName= $_POST['Fname'];
$LastName = $_POST['Lname'];
$college  = $_POST['College'];
$major    = $_POST['Major'];

$hashed_password = password_hash($password, PASSWORD_DEFAULT);


//$request = array();
//$request['usernm'] = $username;
//$request['pword'] = "$password;
//$request['fname'] = $FirstName;
//$request['lname'] = $LastName;
//$request['college'] = "$college;
//$request['major'] = $major;
//$request['message'] = $msg;
//$response = $client->send_request($request);


//echo "client received response: ".PHP_EOL;
//print_r($response);
//echo "\n\n";

//echo $argv[0]." END".PHP_EOL;

$sql = "INSERT INTO finalTHREE ( userID,userPW, userfirstname, userlastname,usercollege,usermajor, hashPW) VALUES
( '$username','$password', '$FirstName','$LastName','$college','$major','$hashed_password')";

$rs = mysqli_query($conn, $sql);


if($rs){

header("Location: fauxlogin.html");
}
else{
echo "somethings wrong";
}
?>
