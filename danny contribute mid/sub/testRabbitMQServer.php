#!/usr/bin/php
<?php
require_once('path.inc');
require_once('get_host_info.inc');
require_once('rabbitMQLib.inc');





function doLogin($username,$password)
{
    // lookup username in databas
    // check password
    return true;
    //return false if not valid
}





function requestProcessor($request)
{
  echo "received request".PHP_EOL;
  var_dump($request);


  if ($request['type'] == "Login"){
	  //$servername = "sql1.njit.edu";
	 $servername = "128.235.208.157";
	 $rusername = "dsg2";
	 $rpassword = "Thund3rStruck";
	 $dbname = "dsg2";
  	// $conn = new mysqli($servername, $rusername, $rpassword, $dbname);


	$dusername = $request['username'];
	$dpassword = $request['password'];
	$dFirstName = $request['first'];
	$dLastName = $request['last'];
	$dcollege = $request['college'];
	$dmajor = $request['major'];


$sql = "INSERT INTO finalTWO ( userID, userPw, userfirstname, userlastname, usercollege, usermajor) VALUES ('$dusername','$dpassword', '$dFirstName','$dLastName','$dcollege','$dmajor')";

//$rs = mysqli_query($conn, $sql);

//if($rs){
//	header("Location: fauxlogin.html");
//}
//else{
//	echo "somethings wrong";
//}

	
  } 


  if(!isset($request['type']))
  {
    return "ERROR: unsupported message type";
  }
  switch ($request['type'])
  {
    case "login":
	 return doLogin($request['username'],$request['password']);
    case "validate_session":
      return doValidate($request['sessionId']);
  }
  return array("returnCode" => '0', 'message'=>"Server received request and processed");
}

$server = new rabbitMQServer("testRabbitMQ.ini","testServer");

echo "testRabbitMQServer BEGIN".PHP_EOL;
 	//$trusername = $request['username'];
       // $trpassword = $request['password'];
       // $trfirstname= $request['first'];
       // $trlastname = $request['last'];
       // $trcollege =  $request['college'];
       // $trmajor =    $request['major'];

       // $sql = "INSERT INTO finalTWO ( userID, userPw, userfirstname, userlastname, usercollege, usermajor) VALUES ('$trusername','$trpassword', '$trfirstname','$trlastname','$trcollege','$trmajor')";

$server->process_requests('requestProcessor');
echo "Its not gojover yet";
echo "testRabbitMQServer END".PHP_EOL;
exit();
?>

