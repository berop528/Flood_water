<?php
    include('connectDB.php');

    $fullname = $_POST['user_fullname'];
    $phoneNumber = $_POST['user_phoneNumber'];
    $email = $_POST['user_email'];
    $password = $_POST['user_password'];
   

    $sql = "select * from users where user_email = '". $email."'";
    // echo $sql;

    $result = mysqli_query($con, $sql);
    $count = mysqli_num_rows($result);

    if($count == 1){
        echo json_encode('Error');
    }else{

        $sql2 = "insert into users (user_fullname,user_phoneNumber,user_email,user_password) values (?,?,?,?)";
        
        $statement = $con->prepare($sql2);
        $statement->bind_param('ssss',$fullname,$phoneNumber,$email,$password  );
    
        //i: integer, s:string, d:double, b:blob
        
        if($statement->execute()){
            
            echo json_encode('Success');
        }else{
            
            echo json_encode('insertError');
        }
        $statement->close();
    }
?>