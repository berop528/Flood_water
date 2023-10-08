<?php

include('connectDB.php');

// $fullname = $_POST['fullname'];
$email = $_POST['user_email'];
// $password = $_POST['password'];

// $username = 'asa';
$sql = "delete from users  WHERE user_email = '" . $email . "'";
// echo $sql;
if ($con->query($sql)) {
	echo json_encode('Success');
} else {
	echo json_encode('Error');
}
?>