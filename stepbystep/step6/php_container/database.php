<?php

// $host = 'db';     // Replace with your MySQL host (e.g., localhost)
// $username = 'lamp_user'; // Replace with your MySQL username
// $password = 'password'; // Replace with your MySQL password
// $database = 'lamp_docker_compose'; // Replace with your MySQL database name

// // Create a connection
// $conn = new mysqli($host, $username, $password, $database);

// // Check the connection
// if ($conn->connect_error) {
//     die("Connection failed: " . $conn->connect_error);
// }

// $mysqli = new mysqli("db","lamp_user","password","lamp_docker_compose");

// // Check connection
// if ($mysqli -> connect_errno) {
//   echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
//   exit();
// }

// function getPersons()
// {
//     $connect = mysqli_connect(
//         'db',
//         'lamp_user',
//         'password',
//         'lamp_docker_compose'
//     );
    
//     $query = 'Select * from Persons';
//     $result = mysqli_query($connect, $query);
//     return $result;
// }

$connect = mysqli_connect(
    'db',
    'lamp_user',
    'password',
    'lamp_docker_compose'
);

$query = 'Select * from Persons';
$result = mysqli_query($connect, $query);

echo '<h1>MySql Persons Table:</h1>';

while($record = mysqli_fetch_assoc($result))
{
    echo '<h2>'.$record['Lastname'].'</h2>';
    echo '<p>'.$record['Firstname'].' - '.$record['age'].'</p>';
    echo '<hr>';
}
?>