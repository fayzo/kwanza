<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class House extends home {

     public function houseList($categories,$pages)
    {
        $pages= $pages;
        $categories= $categories;
        
        if($pages === 0 || $pages < 1){
            $showpages = 0 ;
        }else{
            $showpages = ($pages*10)-10;
        }
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM house WHERE categories_house ='$categories' ORDER BY buy='sold' ,rand() Desc Limit $showpages,10");
        ?>
        <div class="card card-primary mb-3 ">
         <div class="card-header main-active p-1">
            <form class="form-inline float-right">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-search" aria-hidden="true"></i> </span>
                    </div>
                    <input type="text" class="form-control search0"  aria-describedby="helpId" placeholder="Search Accountant, finance ,enginneer">
                </div>
            </form>
            <h5 class="card-title text-center"><i> House to Search</i></h5>

            <div class="nav-scroller  py-0" style="clear:right;height:2rem;">
                <nav class="nav d-flex justify-content-between pb-0">
                <a class="p-2" href="javascript:void(0)" onclick="houseCategories('House_For_sale',1);">House For sale<span class="badge badge-primary"><?php echo $this->housecountPOSTS('House_For_sale');?></span></a>
                <a class="p-2" href="javascript:void(0)" onclick="houseCategories('House_For_rent',1);">House For rent<span class="badge badge-primary"><?php echo $this->housecountPOSTS('House_For_rent');?></span></a>
                <a class="p-2" href="javascript:void(0)" onclick="houseCategories('House_Land',1);">Land & Plots<span class="badge badge-primary"><?php echo $this->housecountPOSTS('House_Land');?></span></a>
                <a class="p-2" href="javascript:void(0)" onclick="houseCategories('Apartment_For_sale',1);">Apartment For sale<span class="badge badge-primary"><?php echo $this->housecountPOSTS('Apartment_For_sale');?></span></a>
                <a class="p-2" href="javascript:void(0)" onclick="houseCategories('Apartment_For_rent',1);">Apartment For rent<span class="badge badge-primary"><?php echo $this->housecountPOSTS('Apartment_For_rent');?></span></a>
                <a class="p-2" href="javascript:void(0)" onclick="houseCategories('Offices_stores',1);">Offices<span class="badge badge-primary"><?php echo $this->housecountPOSTS('Offices_stores');?></span></a>
                </nav>
            </div> <!-- nav-scroller -->
        </div> <!-- card-header -->

        <div class="card-body">
        <span class="job-show"></span>
        <div class="job-hide">
            <ul class="timeline timeline-inverse">  
          <?php while($house= $query->fetch_array()) { ?>
                    <li class="time-label">
                        <?php echo $this->buychangesColor($house['buy']); ?>

                        <div class="timeline-item card flex-md-row shadow-sm h-md-100 border-0">
                        <img class="card-img-left flex-auto d-none d-lg-block" height="100px" width="100px" src="<?php echo BASE_URL_PUBLIC.'uploads/house/'.$house['photo'] ;?>" alt="Card image cap">
                        <div class="card-body pt-0">
                           <div class="text-primary mb-0">
                              <a class="text-primary float-left" href="javascript:void(0)" id="house-readmore" data-house="<?php echo $house['house_id']; ?>" ><i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo $house['cell']."/".$house['sector']; ?></a>
                               <span class="float-right"> <?php echo $house['price']; ?> Frw</span>
                            </div> 
                            <div class="text-muted clear-float">
                                <span class="float-left"><i class="fa fa-home" aria-hidden="true"></i>  <?php echo $categories; ?></span>
                                <span class="float-right mr-5"><i class="fa fa-heart" aria-hidden="true"></i></span></div>
                            <div class="text-muted clear-float">
                                <span><i class="fa fa-clock-o" aria-hidden="true"></i> Created on <?php echo $this->timeAgo($house['created_on3'])." By ".$house['authors']; ?></span>
                            </div>
                            <p class="card-text clear-float">200 m square feet Garden,4 bedroom,2 bathroom, kitchen and cabinet, car parking dapibuseget quame... Continue reading... </p>

                        </div><!-- card-body -->
                        </div><!-- card -->
                    </li>
                    <!-- END timeline item -->
                    <?php }
                    
                    $query1= $mysqli->query("SELECT COUNT(*) FROM house WHERE categories_house ='$categories' ");
                    $row_Paginaion = $query1->fetch_array();
                    $total_Paginaion = array_shift($row_Paginaion);
                    $post_Perpages = $total_Paginaion/10;
                    $post_Perpage = ceil($post_Perpages); ?>    
                    <li>
                        <i class="fa fa-clock-o bg-info text-light"></i>
                    </li>
                  </ul>
           </div>
          </div> <!-- /.card-body -->
       </div> <!-- /.card -->

        <?php if($post_Perpage > 1){ ?>
         <nav>
             <ul class="pagination justify-content-center mt-3">
                 <?php if ($pages > 1) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="houseCategories('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
                 <?php } ?>
                 <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                         if ($i == $pages) { ?>
                      <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="houseCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                      <?php }else{ ?>
                     <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="houseCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php } } ?>
                 <?php if ($pages+1 <= $post_Perpage) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="houseCategories('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
                 <?php } ?>
             </ul>
         </nav>
        <?php } 
    }

      public function housecountPOSTS($categories)
    {
        $db =$this->database;
        $sql= $db->query("SELECT COUNT(*) FROM house WHERE categories_house ='$categories' ");
        $row_post = $sql->fetch_array();
        $total_post= array_shift($row_post);
        $array= array(0,$total_post);
        $total_posts= array_sum($array);
        echo $total_posts;
    }


    public function buychangesColor($variable){

    switch ($variable) {
        case $variable == 'available' :
            # code...
            return '<span class="bg-success text-light" style="position: absolute;font-size: 11px; padding: 2px; margin-left: 10px;"> '.$variable.' </span> ';
            break;

        case $variable == 'sold' :
            # code...
            return '<span class="bg-danger text-light" style="position: absolute;font-size: 11px; padding: 2px; margin-left: 10px;"> '.$variable.' </span> ';
            break;
        }
    }

      public function houseReadmore($house_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN house H ON H. user_id3 = u. user_id WHERE H. house_id = '$house_id' ");
        $row= $query->fetch_array();
        return $row;
    }
}

$house = new House();
?>