<?php

include('connectDB.php');

// $fullname = $_POST['fullname'];
$post_id = $_POST['post_id'];
// $password = $_POST['password'];

// $username = 'asa';
$sql = "delete from post  WHERE post_id = '" . $post_id . "'";
// echo $sql;
if ($con->query($sql)) {
	echo json_encode('Success');
} else {
	echo json_encode('Error');
}
?>