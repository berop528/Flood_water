<?php 

    include ('connectDB.php');
    
    $sql = "SELECT  u.user_fullname, p.post_topic, p.post_detail, p.post_pic FROM posts p INNER JOIN users u ON p.user_id = u.user_id;";
    $query= mysqli_query($con, $sql);
    $result = array();
    while($rs = $query->fetch_assoc()){
        $result[] = $rs;      
    }
    //print_r($result);
    echo json_encode($result);

?>