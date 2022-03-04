<?php
include '../database_connection/database_connection.php';

if($_SERVER['REQUEST_METHOD'] == 'POST' && !empty($_FILES['file']['name'])){
    $folder = 'uploads/';
    $threshold = count($_FILES['file']['name']);
    for($i = 0; $i<$threshold; $i++){
        $filename = $_FILES['file']['name'][$i];
        $path = $folder.$filename;
        if(strpos($filename,'.php') == true){
            echo "Choose another FIle!";
        }
        elseif (strpos($filename,'.exe') == true){
            echo "Choose another FIle!";
        }
        else {
            if(move_uploaded_file($_FILES['file']['tmp_name'][$i],$path)){
                echo "File ".$i.' Uploaded Success! <br>';

              $index_number_holder = $_POST['index_number_holder'];
               
              $mysql_stmt = "UPDATE `industrial_registration` SET `submitted_report` = '$filename' WHERE `index_number` = '$index_number_holder'";
              $execute_mysql_query = mysqli_query($conn,$mysql_stmt);

              $mysql_stmt = "UPDATE `vira_registration` SET `submitted_report` = '$filename' WHERE `index_number` = '$index_number_holder'";
              $execute_mysql_query = mysqli_query($conn,$mysql_stmt);

            }
            else {
                echo "File $i Upload Failed! :/";
            };
        };
    };
};
?>