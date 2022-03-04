<?php 

if(isset($_POST['submitted_report_filename'])){
    
    $filename = $_POST['submitted_report_filename'];
    $filepath = '../submit_report/uploads/'.$filename;

    if(file_exists($filepath)){
        header('Content-Description: File Transfer');
        header('Content-Type: application/octet-stream');
        header('Cache-Control: no-cache, must-revalidate');
        header('Expires: 0');
        header('Content-Disposition: attachment; filename="'.basename($filepath).'"');
        header('Content-Length: '.filesize($filepath));
        header('Pragma: File public');
    
        flush();
    
        readfile($filepath);
    
    }
    else header("location:visiting_supervisor_grade.php");

  
}


