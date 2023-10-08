<?php
    include('connectDB.php');

    $user_id = $_POST['user_id'];
    $topic = $_POST['post_topic'];
    $detail = $_POST['post_detail'];
    $picture = $_POST['post_pic'];
    // echo $sql;

        $sql2 = "insert into post (user_id,post_topic,post_detail,post_pic) values (?,?,?,?)";
        
        $statement = $con->prepare($sql2);
        $statement->bind_param('isss',$user_id, $topic,$detail,$picture);
    
        //i: integer, s:string, d:double, b:blob
        
        if($statement->execute()){
            
            echo json_encode('Success');
        }else{
            
            echo json_encode('insertError');
        }
        $statement->close();
    
?>