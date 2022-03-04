<?php

include '../../database_connection/database_connection.php';

if(isset($_POST['btn_drop_region']) && isset($_POST['drop_region_id'])){

    $drop_region_id = $_POST['drop_region_id'];
   
    $my_delete_query = "DELETE FROM `regions` WHERE `id`='$drop_region_id'";
    if($execute_my_delete_query = mysqli_query($conn,$my_delete_query)){				
        echo "<script>alert ('Region Has Been Dropped Successfully');</script>";
        header("location:regions.php");

     }
     else{
     echo "<script>alert ('Please Fill All Required Spaces');</script>";
     }

}

if(isset($_POST['btn_add_region']) && isset($_POST['txt_add_region_name'])){
   $add_region_name = $_POST['txt_add_region_name'];

   $my_insert_query = "INSERT INTO `regions` (`region_name`) VALUES ('$add_region_name')";
   if($execute_my_insert_query = mysqli_query($conn,$my_insert_query)){				
       echo "<script>alert ('Region Has Been Added Successfully');</script>";
       header("location:regions.php");

    }
    else{
    echo "<script>alert ('Please Fill All Required Spaces');</script>";
    }

}