<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
</head>
<body>

<?php
$host = "10.10.3.2";
$username = "root";
$password = "super-secret-passwd";
$dbname = "woodytoys";


$conn = new mysqli($host, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM Jeux";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Nom</th><th>Description</th><th>Prix</th></tr>";

    while($row = $result->fetch_assoc()) {
        echo "<tr><td>" . $row["ID"]. "</td><td>" . $row["Nom"]. "</td><td> " . $row["Description"]. "</td><td> " . $row["Prix"].  " €</td></tr>";
    }
    echo "</table>";
} else {
    echo "Jeux indisponibles";
}

$conn->close();
?>

</body>
</html>
