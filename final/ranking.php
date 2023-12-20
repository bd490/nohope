<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Weekly Ranking</title>
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


//$sql4="SELECT * FROM `dokkan` ORDER BY `id` ASC";
//$sql4= "SELECT * FROM `Todo` WHERE `userfirstname`='$resultstring2' AND `userlastname`='$resultstring3'";
//$sql4= "SELECT * FROM `Todo` ORDER BY 'duedateandtime' ASC WHERE `userfirstname`='$resultstring2' AND `userlastname`='$resultstring3'";
//$query4 = mysqli_query($conn,$sql4);
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

<h1 style="color:darkblue"><?php echo $resultstring2; ?>     <?php echo $resultstring3; ?>  </h1>

<h2> Weekly Ranking</h2>
<h4><center>This page is dedicated to ranking your favorite characters and choosing which one is better. This will update weekly so be sure to come back and vote every week.</center></h4>


<br>
</div>

<?php
//$result = mysqli_query($conn, $sql4);
//echo "<table border='1' style=background-color:black>";
//echo"<center><tr style=background-color:lime><th>Unit Name</th> <th>Rarity</th> <th>Class</th> <th>Type</th> <th>GLB Release</th> <th>JPN Release</th> <th>GLB EZA Release</th> <th>JPN EZA Release</th> <th>GLB EZA</th> <th>JPN EZA</th> <th>HP 55%</th> <th>ATK 55%</th> <th>DEF 55%</th> <th>HP 100%</th> <th>ATK 100%</th> <th>DEF 100%</th> <th>HP 55% EZA</th> <th>ATK 55% EZA</th> <th>DEF 55% EZA</th> <th>HP 100% EZA</th> <th>ATK 100 EZA%</th> <th>DEF 100% EZA</th> <th>Categories</th> <th>ID</th> <th>URL</th> </tr></center>";
$sql5="SELECT * FROM `dokkan` WHERE `id`='11708'";
$query5 = mysqli_query($conn,$sql5);
$sql6="SELECT * FROM `dokkan` WHERE `id`='11334'";
$query6 = mysqli_query($conn,$sql6);
//echo $result5;
//echo $result6;
//echo "</table>";

echo "<br>";
echo "<table border='2' style=background-color:black>";
echo"<center><tr style=background-color:lime><th>Unit Name</th> <th>Rarity</th> <th>Class</th> <th>Type</th> <th>GLB Release</th> <th>JPN Release</th> <th>GLB EZA Release</th> <th>JPN EZA Release</th> <th>GLB EZA</th> <th>JPN EZA</th> <th>HP 55%</th> <th>ATK 55%</th> <th>DEF 55%</th> <th>HP 100%</th> <th>ATK 100%</th> <th>DEF 100%</th> <th>HP 55% EZA</th> <th>ATK 55% EZA</th> <th>DEF 55% EZA</th> <th>HP 100% EZA</th> <th>ATK 100 EZA%</th> <th>DEF 100% EZA</th> <th>Categories</th> <th>ID</th> <th>URL</th> </tr></center>";
while ($row = mysqli_fetch_assoc($query5)) { // Important line !!! Check summary get row on array ..
    echo "<tr style=background-color:white>";
    foreach ($row as $field => $value) { // I you want you can right this line like this: foreach($row as $value) {
        echo "<td>" . $value . "</td>"; // I just did not use "htmlspecialchars()" function.
    }
    echo "</tr>";
}
echo "</table>";

echo "<br>";
echo "<center> <h1> VS </h1> </center>";
echo "<table border='2' style=background-color:black>";
echo"<center><tr style=background-color:lime><th>Unit Name</th> <th>Rarity</th> <th>Class</th> <th>Type</th> <th>GLB Release</th> <th>JPN Release</th> <th>GLB EZA Release</th> <th>JPN EZA Release</th> <th>GLB EZA</th> <th>JPN EZA</th> <th>HP 55%</th> <th>ATK 55%</th> <th>DEF 55%</th> <th>HP 100%</th> <th>ATK 100%</th> <th>DEF 100%</th> <th>HP 55% EZA</th> <th>ATK 55% EZA</th> <th>DEF 55% EZA</th> <th>HP 100% EZA</th> <th>ATK 100 EZA%</th> <th>DEF 100% EZA</th> <th>Categories</th> <th>ID</th> <th>URL</th> </tr></center>";
while ($row = mysqli_fetch_assoc($query6)) { // Important line !!! Check summary get row on array ..
    echo "<tr style=background-color:white>";
    foreach ($row as $field => $value) { // I you want you can right this line like this: foreach($row as $value) {
        echo "<td>" . $value . "</td>"; // I just did not use "htmlspecialchars()" function.
    }
    echo "</tr>";
}
echo "</table>";

?>
<br><br><br>
<h4><center>Who is your favorite character?</center></h4>

<form action="specialmemecannon3.php" method="post">
	  Your username: <br>
        <input type="text" value="" name="user"><br>
	  <select id="voting" name="voting">
          <option value="1">1 - Resilient Will to Protect the Future Trunks (Teen) (Future)</option>
          <option value="2">2 - Resolute Execution Cooler (Final Form)</option>
        <input type="submit" value="Vote"><br>
    </form>
 <?php  
 $sql4="SELECT * FROM `voting`";
//$sql4= "SELECT * FROM `Todo` WHERE `userfirstname`='$resultstring2' AND `userlastname`='$resultstring3'";
//$sql4= "SELECT * FROM `Todo` ORDER BY 'duedateandtime' ASC WHERE `userfirstname`='$resultstring2' AND `userlastname`='$resultstring3'";
$query4 = mysqli_query($conn,$sql4);

$result = mysqli_query($conn, $sql4); // First parameter is just return of "mysqli_connect()" function
echo "<br>";
echo "<center><table border='1' style=background-color:black>";
echo"<center><tr style=background-color:lime><th>User Name</th> <th>Unit Voted</th></tr></center>";
while ($row = mysqli_fetch_assoc($result)) { // Important line !!! Check summary get row on array ..
    echo "<tr style=background-color:white>";
    foreach ($row as $field => $value) { // I you want you can right this line like this: foreach($row as $value) {
        echo "<td>" . $value . "</td>"; // I just did not use "htmlspecialchars()" function.
    }
    echo "</tr>";
}
echo "</table></center>";

?>
<br>

<hr>

<br>


</body>

</html>
