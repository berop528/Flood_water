<?php 

    include('connectDB.php');

	$fullname = $_POST['user_fullname'];
    $phoneNumber = $_POST['user_phoneNumber'];
    $email = $_POST['user_email'];
	

	$sql = "UPDATE users SET user_fullname = ?, user_phoneNumber = ?  WHERE user_email = ?";
	$statement = $con->prepare($sql);
	$statement->bind_param('sss', $fullname, $phoneNumber, $email);

	// $con->query("UPDATE users SET fullname = '{$fullname}',password = '{$password}' WHERE username = '{$username}'");
	if ($statement->execute()) {
		echo json_encode('Success');
	} else {
		 echo json_encode('Error');
	}
	$statement->close();
	// update users 
	// set fullname="pattaraporn",
	// password = "456"
	// where username = "patty"


?>