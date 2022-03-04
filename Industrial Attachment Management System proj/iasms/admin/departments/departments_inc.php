<?php

include '../../database_connection/database_connection.php';

if(isset($_POST['btn_drop_department']) && isset($_POST['drop_department_id'])){

    $drop_department_id = $_POST['drop_department_id'];
   
    $my_delete_query = "DELETE FROM `departments` WHERE `id`='$drop_department_id'";
    if($execute_my_delete_query = mysqli_query($conn,$my_delete_query)){				
        echo "<script>alert ('Department Has Been Dropped Successfully');</script>";
        header("location:departments.php");

     }
     else{
     echo "<script>alert ('Please Fill All Required Spaces');</script>";
     }

}

if(isset($_POST['btn_add_department']) && isset($_POST['txt_add_department_name'])){
    
   $add_department_name = $_POST['txt_add_department_name'];

   echo $add_department_name;

   $my_insert_query = "INSERT INTO `departments` (`name`) VALUES ('$add_department_name')";
   if($execute_my_insert_query = mysqli_query($conn,$my_insert_query)){				
       echo "<script>alert ('Department Has Been Added Successfully');</script>";
       header("location:departments.php");

    }
    else{
    echo "<script>alert ('Please Fill All Required Spaces');</script>";
    }

}