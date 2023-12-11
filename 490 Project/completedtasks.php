<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main</title>
    <link href="signupstyle.css" rel="stylesheet">
</head>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main</title>
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

$sql4="SELECT * FROM `completed` WHERE `Firstname` ='$resultstring2' AND `Lastname`='$resultstring3' ORDER BY `Duedateandtime` ASC";
$query4 = mysqli_query($conn,$sql4);
//echo $resultstring2;
?>
<!--end of php used to establish a connection-->
<body>



<div class="topnav">
     <a class="active" href="testmain.php">Home</a>
    <a href="Todo.php">Team-Builder</a>
    <a href="completedtasks.php">Created Teams</a>
    <a href="wantout.html">News</a>
    <a href="wantout.html">Custom</a>
    <a href="wantout.html">Signout</a>
</div>
<h1 style="color:darkblue"><?php echo $resultstring2; ?>     <?php echo $resultstring3; ?>  </h1>

<h2> This is what you have accomplished</h2>

<div id="move2">
<?php

$result = mysqli_query($conn, $sql4); // First parameter is just return of "mysqli_connect()" function
echo "<br>";
echo "<table border='1' style=background-color:black>";
echo"<tr style=background-color:lime><th>itemID</th><th>First name </th> <th>Last name</th> <th>Due date and time</th> <th>Title</th> <th> description</th></tr>";
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
<h3>Update</h3>
<form action="update2.php" method="post">
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
<form action="delete2.php" method="post">
    Which task are you deleting?(enter ItemID):<br>
    <input type="text" value="" id="c" name="userID"><br>
    <input type="submit" value="delete"><br>
</form>


<br>
<hr>

<h3>Uncheckoff</h3>
<form action="checkoff2.php" method="post">
    Which task have you completed(enter ItemID):<br>
    <input type="text" value="" id="c" name="userID"><br>
    <input type="submit" value="complete"><br>
</form>







</body>
</html>
