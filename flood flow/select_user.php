<?php 

    include ('connectDB.php');
    $email = $_POST['user_email'];
    
   // $sql = "select * from users where '". $username ."'" ;
    $sql = "select * from users where user_email = '". $email ." '" ;
    $query = mysqli_query($con, $sql);
    $result = array();
    while($rs = $query->fetch_assoc()){
        $result[] = $rs;      
    }
    //print_r($result);
    echo json_encode($result);

?>