<?php
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_REQUEST['sectorcode']) && !empty($_REQUEST['sectorcode'])) {

$get_cell = mysqli_query($db,"SELECT * FROM  cells WHERE sectorcode ='".$_REQUEST['sectorcode']."'");

	echo "<select name=\"codecell\" id=\"codecell\" class=\"form-control\">" ;
	if(mysqli_fetch_array($get_cell)==0){
		echo "<option value=\"No Cell Available\">No Cell Available</option>";
	}else{
	
	    echo "<option value=\"\">------Select cell------</option>";
		while($row=mysqli_fetch_array($get_cell)){
			echo "<option value=\"".$row['codecell']."\">".$row['nameCell']."</option>";
		}
	}
	echo "</select><br>";

}

if (isset($_POST['cell']) && !empty($_POST['cell'])) {
	$query= $db->query("SELECT * FROM school WHERE type_of_school= '{$_POST['type_of_school']}' and location_province= '{$_POST['province']}' and location_districts= '{$_POST['district']}' and location_Sector= '{$_POST['sector']}' and location_cell= '{$_POST['cell']}' ORDER BY created_on_ Desc , rand() Limit 0,5");
	echo '<h5><span class="text-success">'.$_POST['province'].'</span > Province/<span class="text-warning">'.$_POST['district'].'</span> district/<span class="text-info">'.$_POST['sector'].'</span> Sector/<span class="text-danger">'.$_POST['cell'].'</span> Cell</h5>' ;
	// var_dump($query);
	if (!empty($mysqli_result["num_rows"])) {
		# code...
    while($row= $query->fetch_array()) { ?>

            <div class="card flex-md-row shadow-sm h-md-100 border-0 mb-3">
                    <img class="card-img-left flex-auto d-none d-lg-block" height="150px" width="150px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/schoolFile/<?php echo $row['photo_']; ?>" alt="Card image cap">
                <div class="card-body d-flex flex-column align-items-start pt-0">
                    <h5 class="text-primary mb-0">
                    <a class="text-primary" href="javascript:void(0)"  id="districts-view" data-districts="<?php echo $row['location_districts'] ;?>"><?php echo $row['title_'] ;?></a>
                    </h5>
                    <div class="text-muted">Created on <?php echo $home->timeAgo($row['created_on_']) ;?> By <?php echo $row['author_'] ;?> </div>
                    <div class="text-muted"><?php echo $row['location_districts'] ;?> District/ <?php echo $row['location_Sector'] ;?> Sector/  <?php echo $row['location_cell'] ;?> cell</div>
                    <p class="card-text mb-1">vIEW Different Landscapes of <?php echo $row['location_districts'] ;?> Districts</p>
                </div><!-- card-body -->
            </div><!-- card -->
		  <hr class="bg-info mt-0 mb-1" style="width:95%;">
		  
	<?php } 

	}else {
		echo ' No school found';
	}

}

	?>
	
