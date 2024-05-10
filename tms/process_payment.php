<?php
include 'db_connection.php';

$name = $_POST['name'];
$email = $_POST['email'];
$amount = $_POST['amount'];

$sql = "INSERT INTO payments (name, email, amount) VALUES ('$name', '$email', '$amount')";
if ($conn->query($sql) === TRUE) {
    echo "Payment recorded successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>