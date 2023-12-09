<?php
$servername = "sql1.njit.edu";
$username = "dsg2";
$password = "Thund3rStruck!";
$dbname = "dsg2";

//$conn = new mysqli($servername, $username, $password, $dbname);


$username = $_POST['Uname'];
$password = $_POST['Pword'];
$FirstName = $_POST['Fname'];
$LastName = $_POST['Lname'];
$college = $_POST['College'];
$major = $_POST['Major'];
$hashed_password = password_hash($password, PASSWORD_DEFAULT);



//$sql = "INSERT INTO finalTWO ( userID, userPw, userfirstname, userlastname, usercollege, usermajor) VALUES ('$username','$password', '$FirstName','$LastName','$college','$major')";

//$rs = mysqli_query($conn, $sql);

//if($rs){
//	header("Location: fauxlogin.html");
//}
//else{
//	echo "somethings wrong";
//}


require_once('sub/path.inc');
require_once('sub/get_host_info.inc');
require_once('sub/rabbitMQLib.inc');
//
//
//require_once('/home/manwinder/git/rabbitmqphp_example/path.inc');
//require_once('/home/manwinder/git/rabbitmqphp_example/get_host_info.inc');
//require_once('/home/manwinder/git/rabbitmqphp_example/rabbitMQLib.inc');





$client = new rabbitMQClient("sub/testRabbitMQ.ini","testServer");
//$client = new rabbitMQClient("/home/manwinder/git/rabbitmqphp_example/testRabbitMQ.ini","testServer");
if (isset($argv[1]))
{
  $msg = $argv[1];
}
else
{
  $msg = "test message there are bugs under your skin";
}

$request = array();
$request['type'] = "Login";
//$request['username'] = "gyro";
//$request['password'] = "joestar";
//$request['message'] = $msg;
$request['username'] = $username;
$request['password'] = $password;
$request['message'] = $msg;
$request['first'] = $FirstName;
$request['last'] = $LastName;
$request['college'] = $college;
$request['major'] = $major;





$response = $client->send_request($request);
$response = $client->publish($request);



if ($response == 1){

	$servername = "sql1.njit.edu";
	$username = "dsg2";
	$password = "3aWorldisUltimat3!";
	$dbname = "dsg2";
	$conn = new mysqli($servername, $username, $password, $dbname);

	$username = $_POST['Uname'];
	$password = $_POST['Pword'];
	$FirstName = $_POST['Fname'];
	$LastName = $_POST['Lname'];
	$college = $_POST['College'];
	$major = $_POST['Major'];




	//finalTWO
	$sql = "INSERT INTO finalTHREE ( userID, userPw, userfirstname, userlastname, usercollege, usermajor, hashPW) VALUES ('$username','$password', '$FirstName','$LastName','$college','$major', '$hashed_password')";

$rs = mysqli_query($conn, $sql);

if($rs){
      header("Location: fauxlogin.html");
}
else{
      echo "somethings wrong";
}
}
else {
	echo "rabbit mq sent back" + $response;
}

echo "client received response: ".PHP_EOL;
print_r($response);
echo "\n\n";

echo $argv[0]." END".PHP_EOL;


?>

