<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tp";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$name = $_POST['name'];
$email = $_POST['email'];
$address = $_POST['address'];
$city = $_POST['city'];
$state = $_POST['state'];
$zip = $_POST['zip'];
$cardName = $_POST['cardName'];
$cardNum = $_POST['cardNum'];
$expMonth = $_POST['expMonth'];
$expYear = $_POST['expYear'];
$cvv = $_POST['cvv'];



$sql = "INSERT INTO payment_data (name, email, address, city, state, zip, card_name, card_number, exp_month, exp_year, cvv)
        VALUES ('$name', '$email', '$address', '$city', '$state', '$zip', '$cardName', '$cardNum', '$expMonth', '$expYear', '$cvv')";

if ($conn->query($sql) === TRUE) {
    header("location:daataPaymentSuccess.php");
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>