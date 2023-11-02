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
$server->process_requests('requestProcessor');

 	//$servername = "sql1.njit.edu";
       // $username = "dsg2";
       // $password = "Thund3rStruck";
       // $dbname = "dsg2";
       // $conn = new mysqli($servername, $username, $password, $dbname);

       // $trusername = $request['username'];
       // $trpassword = $request['password'];
       // $trfirstname= $request['first'];
       // $trlastname = $request['last'];
       // $trcollege =  $request['college'];
       // $trmajor =    $request['major'];

        //$sql = "INSERT INTO finalTWO ( userID, userPw, userfirstname, userlastname, usercollege, usermajor) VALUES ('$trusername','$trpassword', '$trfirstname','$trlastname','$trcollege','$trmajor')";

//2$servername = "sql1.njit.edu";
//3$username = "dsg2";
//4$password = "Thund3rStruck";
//5$dbname = "dsg2";
//6$conn = new mysqli($servername, $username, $password, $dbname);
echo "Its not gojover yet";
echo "testRabbitMQServer END".PHP_EOL;
exit();
?>

