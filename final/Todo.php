<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <title>Character List</title>
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
    <a href="news.php">News</a>
    <a href="custom.php">Custom</a>
    <a href="ranking.php">Weekly Ranking</a>
    <a href="wantout.html">Signout</a>
</div>

<body>

<h4 style="color:darkblue"><?php echo $resultstring2; ?>     <?php echo $resultstring3; ?>  </h4>

<h2><center> This is a list of characters</center></h2>

<h3>Search Characters</h3>

<form action="search.php" method="post">
        <label for="rarity">Choose a Rarity:</label>
        <select id="rarity" name="rarity">
          <option value="R">R</option>
          <option value="SR">SR</option>
  	  <option value="SSR">SSR</option>
  	  <option value="UR">UR</option>
  	  <option value="LR">LR</option>
 	 </select><br>
        <label for="class">Choose a Class:</label>
        <select id="class" name="class">
  	  <option value="SUPER">SUPER</option>
  	  <option value="EXTREME">EXTREME</option>
 	 </select><br>
 	 <label for="type">Choose a type:</label>
        <select id="type" name="type">
  	  <option value="STR">STR</option>
  	  <option value="AGL">AGL</option>
  	  <option value="PHY">PHY</option>
  	  <option value="INT">INT</option>
  	  <option value="TEQ">TEQ</option>
 	 </select><br>
        <input type="submit" value="new"><br>
    </form>
<br>
<br>
<?php

$result = mysqli_query($conn, $sql4); // First parameter is just return of "mysqli_connect()" function
echo "<br>";
echo "<table border='1' style=background-color:black>";
echo"<center><tr style=background-color:lime><th>Unit Name</th> <th>Rarity</th> <th>Class</th> <th>Type</th> <th>GLB Release</th> <th>JPN Release</th> <th>GLB EZA Release</th> <th>JPN EZA Release</th> <th>GLB EZA</th> <th>JPN EZA</th> <th>HP 55%</th> <th>ATK 55%</th> <th>DEF 55%</th> <th>HP 100%</th> <th>ATK 100%</th> <th>DEF 100%</th> <th>HP 55% EZA</th> <th>ATK 55% EZA</th> <th>DEF 55% EZA</th> <th>HP 100% EZA</th> <th>ATK 100 EZA%</th> <th>DEF 100% EZA</th> <th>Categories</th> <th>ID</th> <th>URL</th> </tr></center>";
while ($row = mysqli_fetch_assoc($result)) { // Important line !!! Check summary get row on array ..
    echo "<tr style=background-color:white>";
    foreach ($row as $field => $value) { // I you want you can right this line like this: foreach($row as $value) {
        echo "<td>" . $value . "</td>"; // I just did not use "htmlspecialchars()" function.
    }
    echo "</tr>";
}
echo "</table>";

?>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>

</html>
