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
$pokemonid= $_SESSION["id"];

$sql2 = "SELECT `identifier` FROM `pokemon` WHERE `id`='$pokemonid'";
$query2 = mysqli_query($conn,$sql2);
$result2 = mysqli_fetch_assoc($query2);
$resultstring2 = $result2['identifier'];


$sql4="SELECT * FROM `pokemon` WHERE `identifier` ='$resultstring2' ORDER BY `id` ASC";
$query4 = mysqli_query($conn,$sql4);
//echo $resultstring2;
?>
<!--end of php used to establish a connection-->
<body>



<div class="topnav">
     <a class="active" href="testmain.php">Home</a>
    <a href="Todo.php">List of Units</a>
    <a href="builder.php">Team-Builder</a>
    <a href="createdteams.php">Created Teams</a>
    <a href="wantout.html">News</a>
    <a href="wantout.html">Custom</a>
    <a href="wantout.html">Signout</a>
</div>
</div>
<h1 style="color:darkblue"><?php echo $resultstring2; ?>     <?php echo $resultstring3; ?>  </h1>

<h2> This is the Pokemon Lookup Page</h2>

<?php

$result = mysqli_query($conn, $sql4); // First parameter is just return of "mysqli_connect()" function
echo "<br>";
echo "<table border='1' style=background-color:black>";
echo"<tr style=background-color:lime><th>PokemonID</th><th>Pokemon Name </th> <th>Species ID</th> <th>Height</th> <th>Weight</th> <th>Base Experience</th> <th>Order</th> <th>Is Default</th></tr>";
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
<h3>Search</h3>
<form action="update2.php" method="get">
        Search by ID:<br>
        <input type="text" value="" id="c" name="id"><br>
        Search by name:<br>
        <input type="text" value="" id="c" name="identifier"><br>
        <input type="submit" value="Search"><br>
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
