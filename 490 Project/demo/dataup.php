<?php
$servername = "sql1.njit.edu";
$username = "dsg2";
$password = "Thund3rStruck!";
$dbname = "dsg2";

$conn = new mysqli($servername, $username, $password, $dbname);


$username = $_POST['Uname'];
$password = $_POST['Pword'];
$Firstname = $_POST['Fname'];
$LastName = $_POST['Lname'];
$college = $_POST['College'];
$major = $_POST['Major'];


#$sql = "INSERT INTO finalTWO ( userID, userPw, userfirstname, userlastname, usercollege, usermajor) VALUES ('$username','$password', '$FirstName','$LastName','$college','$major')";

#$rs = mysqli_query($conn, $sql);

#if($rs){
#	header("Location: fauxlogin.html");
#}
#else{
#	echo "somethings wrong";
#}


require_once('/var/www/gci/sub/path.inc');
require_once('/var/www/gci/sub/get_host_info.inc');
require_once('/var/www/gci/sub/rabbitMQLib.inc');


//$client = new rabbitMQClient("/home/danny/git/rabbitmqphp_example/testRabbitMQ.ini","testServer");
//if (isset($argv[1]))
//{
  //$msg = $argv[1];
//}
//else
//{
 // $msg = "test message there are bugs under your skin";
//}

//$request = array();
//$request['type'] = "Login";
//$request['username'] = "gyro";
//$request['password'] = "joestar";
//$request['message'] = $msg;
//$response = $client->send_request($request);
//$response = $client->publish($request);

//echo "client received response: ".PHP_EOL;
//print_r($response);
//echo "\n\n";

//echo $argv[0]." END".PHP_EOL;



//echo "before creation comes destruction";



?>
