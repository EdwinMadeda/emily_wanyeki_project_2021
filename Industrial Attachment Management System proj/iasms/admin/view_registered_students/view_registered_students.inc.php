<?php 
include '../../database_connection/database_connection.php';

if(isset($_POST["btn_drop_industrial_registration_student"]) && isset($_POST["drop_industrial_registration_student_id"])){
   
    $id = $_POST["drop_industrial_registration_student_id"];
    $my_delete_query = "DELETE FROM industrial_registration WHERE id='$id'";

    if(mysqli_query($conn,$my_delete_query)){	
        echo "<script>alert ('Industrial student Has Been Deleted Successfully');</script>";
    }    
    else{
    	echo "<script>alert ('Error! Student not Deleted');</script>";
    }


}

if(isset($_POST["btn_drop_vira_registration_student"]) && isset($_POST["drop_vira_registration_student_id"])){
   
    $id = $_POST["drop_vira_registration_student_id"];
    $my_delete_query = "DELETE FROM vira_registration WHERE id = '$id'";

    if(mysqli_query($conn,$my_delete_query)){
        echo "<script>alert ('Vira student Has Been Deleted Successfully');</script>";
    }    
    else{
    	echo "<script>alert ('Error! Student not Deleted');</script>";
    }

}
?>
<script>
    alert('bingo', window.location('view_registered_students.php'));
</script>




