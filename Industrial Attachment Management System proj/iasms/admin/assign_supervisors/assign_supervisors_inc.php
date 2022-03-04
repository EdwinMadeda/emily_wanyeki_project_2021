<?php 
include '../../database_connection/database_connection.php';

if(isset($_POST["btn_drop_lecturer"]) && isset($_POST["drop_lecturer_id"])){
    $id = $_POST["drop_lecturer_id"];
    if(!$id) exit;

    // echo '<pre style="background : red; color : white; margin: 0 20%; font-size: 25px; position: absolute; top: 30%">';
    // var_dump($id);
    // echo '</pre>';
    
    
    $my_delete_query = "DELETE FROM visiting_lecturers WHERE id = '$id'";
    if(mysqli_query($conn,$my_delete_query)){	
        echo "<script>alert ('Lecturer Has Been Deleted Successfully');</script>";
    }    
    else{
    	echo "<script>alert ('Error! Lecturer not Deleted');</script>";
    }

    header("Location:assign_supervisors.php");

}