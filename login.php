<?php



//thesemight be fixable
$servername = "sql1.njit.edu";
$username = "dsg2";
$password = "3aWorldisUltimat3!";
$dbname = "dsg2";
$conn = new mysqli($servername, $username, $password, $dbname);



$newusername = $_POST['Uname'];
$newpassword = $_POST['Pword'];




require_once('sub/path.inc');
require_once('sub/get_host_info.inc');
require_once('sub/rabbitMQLib.inc');




$client = new rabbitMQClient("sub/testRabbitMQ.ini","testServer");


$request = array();
$request['type'] = "Login";
$request['username'] = $newusername;
$request['password'] = $newpassword;
$request['first'] = "worthless";
$request['last'] = "used to avoid errors";
$request['college'] = "mr universe";
$request['major'] = "ive lost all ambitions";








$response = $client->send_request($request);
$response = $client->publish($request);








///$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
///$conn = mysqli_connect("mysql:host=$servername;dbname=$dbname", $username, $password);
///$conn = new mysqli($servername, $username, $password, $dbname);

///$username = $_POST['Uname'];
///$password = $_POST['Pword'];



if ($response == 1){

$servername = "sql1.njit.edu";
$username = "dsg2";
$password = "3aWorldisUltimat3!";
$dbname = "dsg2";
$conn = new mysqli($servername, $username, $password, $dbname);
$sql = "SELECT `hashPW` FROM `finalTHREE` WHERE `userID`='$newusername'";




$query = mysqli_query($conn,$sql);
$result = mysqli_fetch_assoc($query);
///$resultstring = $result['userPW'];
$resultstring = $result['hashPW'];



//$rs = mysqli_query($conn, $sql);

//if($rs){
  //    $result = mysqli_fetch_assoc($query);
	//	$resultstring = $result['userPW'];

//	echo "its cooking";
//}
//else{
 //     echo"its not";
//}

//$sql2 = "SELECT `userPW` FROM `finalTWO` WHERE `userID`='$newusername'";
//$query = mysqli_query($conn,$sql);
//$result = mysqli_fetch_assoc($query);
	//$resultstring = $result['userPW'];
	
}
else{
	$resultstring = "I have many mistakes";
}


//echo"trouble";


///$rs = mysqli_query($conn, $sql);

///Cookie information,to keep track of username

/////////echo "cooking";

session_start();

$_SESSION["username"]=$newusername;
$_SESSION["lastname"]=$lastname;

////end of cookie information



////////if($newpassword==$resultstring){
//

//echo password_verify($newpassword, $resultstrin);
$verify = password_verify($newpassword, $resultstring);


if($verify == 1){

header("Location: testmain.php");

}
else{
echo "you done goofed";
}

//mysqli_close($conn);
?>

