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
<br>

<h3>New To-Do</h3>
<form action="specialmemecannon.php" method="post">
        Due date and time: <br>
        <input type="text" value="" id="c" name="duedate"><br>
        title: <br>
        <input type="text" value="" id="d" name="title"><br>
        description:<br>
        <input type="text" value="" id="e" name="description" maxlength="144"><br>
        <input type="submit" value="new"><br>
    </form>
<br>

<hr>



<h3>Update</h3>
<form action="update.php" method="post">
        Which task are you updating (Please enter it's itemID):<br>
        <input type="text" value="" id="c" name="userID"><br>
        what are you updating: <br>
        <select id="cats" name="cats" size="1"><br>
        <option value = "duedateandtime"> Due Date and Time </option>
        <option value = "title"> title </option>
        <option value = "description"> Description </option>
        </select><br>
        please enter the modified data:<br>
        <input type ="text" value="" id="c" name="changenow"><br>
        <input type="submit" value="edit"><br>
    </form>

<br>

<hr>

<h3>Delete</h3>
<form action="delete.php" method="post">
    Which task are you deleting?(enter ItemID):<br>
    <input type="text" value="" id="c" name="userID"><br>
    <input type="submit" value="delete"><br>
</form>


<br>

<hr>

<h3>Check Off</h3>
<form action="checkoff.php" method="post">
    Which task have you completed(enter ItemID):<br>
    <input type="text" value="" id="c" name="userID"><br>
    <input type="submit" value="complete"><br>
</form>


</body>

</html>
