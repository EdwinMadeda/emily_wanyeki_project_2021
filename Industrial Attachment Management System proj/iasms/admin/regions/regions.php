<?php

include '../../database_connection/database_connection.php';

 ?>


<!DOCTYPE html>
<html lang="en" class="bg-pink">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>IASMS</title>

  <link rel="stylesheet" href="../../css/bootstrap-theme.min.css"/>
  <link rel="stylesheet" href="../../css/bootstrap.min.css"/>
  <link rel="stylesheet" href="../../css/main_page_style.css"/>
  <link rel="stylesheet" href="regions.css"/>

  <script type="text/javascript" src="../../js/jquery-3.1.1.min.js"/></script>
  <script type="text/javascript" src="../../js/bootstrap.min.js"/></script>


</head>
<body>

<div id="top-navigation">
<div id="header_logo"><img src="../../img/header_log.png" class="img-responsive" alt="logo" style="float:left;width:150px; height:50px;position:relative;left:20px"/></div>
<div id="student_name"><span style="color:rgb(255, 198, 0);font-size:1.1em"><em>Welcome,</em>&nbsp; </span><span style="font-family:serif"><?php echo "Admin"?></span></div>
</div>

<div id="left_side_bar">
<ul id="menu_list">
  <a class="menu_items_link" href="../regions/regions.php"><li class="menu_items_list" style="background-color:orange;padding-left:16px">Regions</li></a>
  <a class="menu_items_link" href="../departments/departments.php"><li class="menu_items_list">Departments</li></a>
  <a class="menu_items_link" href="../view_registered_students/view_registered_students.php"><li class="menu_items_list">Registered Students</li></a>
  <a class="menu_items_link" href="../students_assumptions/students_assumptions.php"><li class="menu_items_list" >Student Assumptions</li></a>
  <a class="menu_items_link" href="../assign_supervisors/assign_supervisors.php"><li class="menu_items_list">Assign Supervisors</li></a>
  <a class="menu_items_link" href="../visiting_score/visiting_supervisors_score.php"><li class="menu_items_list">Visiting Superviors Score</li></a>
  <a class="menu_items_link" href="../company_score/company_supervisor_score.php"><li class="menu_items_list">Company Supervisor Score</li></a>
  <a class="menu_items_link" href="../change_password/change_password.php"><li class="menu_items_list">Change Supervisor Password</li></a>
  <a class="menu_items_link" href="../../index.php"><li class="menu_items_list">Logout</li></a>
</ul>
</div>

<div class="container-fluid">
<div id="main_content">

    <div class = "panel">
        <div class = "panel-heading phead">
                <h2 class = "panel-title ptitle"> Registered Regions</h2>
        </div>
        <div class = "panel-body pbody">

            <table class="table table-bordered table-hover">

                <thead>
                    <tr>

                        <th></th>
                        <th style="text-align:center">Region name</th>
                        <th></th>

                    </tr>

                </thead>

                <tbody>
                    <?php

                
                    echo "<tr style='text-align:center;font-size:1.1em' width='100%'>";

                        $mysql_query_command_1 = "SELECT * FROM regions";
                        $execute_result_query = mysqli_query($conn,$mysql_query_command_1);
                        while($row_set = mysqli_fetch_assoc($execute_result_query)){

                            echo "<tr style='text-align:center;font-size:1.1em'>";

                                echo "<td style='width: 80px;'>".$row_set['id']."</td>";
                                echo "<td>".$row_set['region_name']."</td>";
                                echo '<td style="width: 200px;">
                                            <form method="post" action="regions_inc.php">
                                                <input type="hidden" name="drop_region_id" value="'.$row_set['id'].'"/>
                                                <input type="submit" value="Drop" name="btn_drop_region" class="btn btn-primary"/>
                                            </form>
                                        </td>';

                            echo "</tr>";

                        }


                    echo "</tr>";

                    ?>
                </tbody>
            </table>
        </div>
    </div>
  
   <div class="panel">
        <div class="panel-heading phead phead-adjusted">
            <h2 class = "panel-title ptitle"> Add Region</h2>
        </div>
        <div class = "panel-body">

                <form method="post" action="regions_inc.php">

                    <div class="row">
                        <div class="col-md-12">

                            <div class="col-md-5 col-md-offset-1">
                            <input type="text" placeholder="Enter Name" name="txt_add_region_name" class="form-control"/>
                            </div>
                            <div class="col-md-5">
                            <input type="submit" value="Add" name="btn_add_region" class="btn btn-primary"/>
                            </div>
                            
                        </div>
                    </div>
                </form>	
    </div>
</div>


</body>
</html>
