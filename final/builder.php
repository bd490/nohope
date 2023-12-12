<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Things To Do</title>
    <link href="signupstyle.css" rel="stylesheet">
</head>
<!-- php to acquire variables-->
<?php
session_start();
$servername = "sql1.njit.edu";// you need to put your assigned server name
$username = "dsg2";// your ucid
$password = "3aWorldisUltimat3!";// database password
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


$sql4="SELECT * FROM `dokkan` ORDER BY `id` ASC";
//$sql4= "SELECT * FROM `Todo` WHERE `userfirstname`='$resultstring2' AND `userlastname`='$resultstring3'";
//$sql4= "SELECT * FROM `Todo` ORDER BY 'duedateandtime' ASC WHERE `userfirstname`='$resultstring2' AND `userlastname`='$resultstring3'";
$query4 = mysqli_query($conn,$sql4);
//$result4 = mysqli_fetch_assoc($query4);
//$resultstring4 = $result4['userfirstname'];
//$endit = $result4['userlastname'];
//$eon = $result4['duedateandtime'];
//$title =$result4['title'];
//$description = $result4['description'];





?>




<!--end of php used to establish a connection-->


<div class="topnav">
     <a class="active" href="testmain.php">Home</a>
    <a href="Todo.php">List of Units</a>
    <a href="builder.php">Team-Builder</a>
    <a href="createdteams.php">Created Teams</a>
    <a href="wantout.html">News</a>
    <a href="wantout.html">Custom</a>
    <a href="wantout.html">Signout</a>
</div>

<body>

<h1 style="color:darkblue"><?php echo $resultstring2; ?>     <?php echo $resultstring3; ?>  </h1>

<h2> This is a list of characters</h2>


<br>
</div>
<br>

<hr>

<h3>Team Builder</h3>

<form action="specialmemecannon.php" method="post">
	Name of unit (Please Choose Same Name as List): <br>
        <input type="text" value="" id="c" name="name"><br>
        <label for="rarity">Choose a Rarity:</label>
        <select id="rarity" name="rarity">
  	  <option value="ssr">SSR</option>
  	  <option value="ur">UR</option>
  	  <option value="lr">LR</option>
 	 </select><br>
        <label for="class">Choose a Class:</label>
        <select id="class" name="class">
  	  <option value="super">SUPER</option>
  	  <option value="extreme">EXTREME</option>
 	 </select><br>
 	 <label for="type">Choose a type:</label>
        <select id="type" name="type">
  	  <option value="str">STR</option>
  	  <option value="agl">AGL</option>
  	  <option value="phy">PHY</option>
  	  <option value="int">INT</option>
  	  <option value="teq">TEQ</option>
 	 </select><br>
        <input type="submit" value="new"><br>
    </form>
<br>


</body>

</html>
