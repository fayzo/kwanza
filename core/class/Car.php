<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Car extends House {

     public function carList($categories,$pages)
    {
        $pages= $pages;
        $categories= $categories;
        
        if($pages === 0 || $pages < 1){
            $showpages = 0 ;
        }else{
            $showpages = ($pages*10)-10;
        }
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM car WHERE categories_car ='$categories' ORDER BY buy='sold' ,rand() Desc Limit $showpages,10");
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
            <h5 class="card-title text-center"><i> Car to Search</i></h5>

            <div class="nav-scroller  py-0" style="clear:right;height:2rem;">
                <nav class="nav d-flex justify-content-between pb-0">
                <a class="p-2" href="javascript:void(0)" onclick="carCategories('car_For_sale',1);">Car For sale<span class="badge badge-primary"><?php echo $this->carcountPOSTS('car_For_sale');?></span></a>
                <a class="p-2" href="javascript:void(0)" onclick="carCategories('car_For_rent',1);">Car For rent<span class="badge badge-primary"><?php echo $this->carcountPOSTS('car_For_rent');?></span></a>
                <a class="p-2" href="javascript:void(0)" onclick="carCategories('camion_For_sale',1);">Camion For sale<span class="badge badge-primary"><?php echo $this->carcountPOSTS('camion_For_sale');?></span></a>
                <a class="p-2" href="javascript:void(0)" onclick="carCategories('motor_For_sale',1);">Motor-cyle<span class="badge badge-primary"><?php echo $this->carcountPOSTS('motor_For_sale');?></span></a>
                <a class="p-2" href="javascript:void(0)" onclick="carCategories('bicycle_For_sale',1);">Bicycle For sale<span class="badge badge-primary"><?php echo $this->carcountPOSTS('bicycle_For_sale');?></span></a>
                </nav>
            </div> <!-- nav-scroller -->
        </div> <!-- card-header -->

        <div class="card-body">
        <span class="job-show"></span>
        <div class="job-hide">
            <ul class="timeline timeline-inverse">  
                <li class="time-label" style="margin-bottom: 0px;">
                        <span style="margin-left: -10px;"> <img src="<?php echo BASE_URL_LINK.'image/banner/discount.png' ;?>" width="80px"> </span>
                        <?php switch ($categories) {
                            case $categories == 'car_For_sale':
                                # code...
                                echo '<img src="'.BASE_URL_LINK.'image/banner/banners1.png" width="200px">
                                      <img style="float: right;margin-top:15px;margin-right:25px;" src="'.BASE_URL_LINK.'image/banner/weekPrice.png" width="200px">
                                    ';
                                break;
                            case $categories == 'car_For_rent':
                                # code...
                                echo '<img src="'.BASE_URL_LINK.'image/img/photo1.png" width="200px">
                                      <img style="float: right;margin-top:15px;margin-right:25px;" src="'.BASE_URL_LINK.'image/banner/weekPrice.png" width="200px">
                                    ';
                                break;
                            case $categories == 'camion_For_sale':
                                # code...
                                echo '<img src="'.BASE_URL_LINK.'image/img/photo2.png" width="200px">
                                      <img style="float: right;margin-top:15px;margin-right:25px;" src="'.BASE_URL_LINK.'image/banner/weekPrice.png" width="200px">
                                    ';
                                break;
                            case $categories == 'motor_For_sale':
                                # code...
                                echo '<img src="'.BASE_URL_LINK.'image/img/photo3.jpg" width="200px">
                                      <img style="float: right;margin-top:15px;margin-right:25px;" src="'.BASE_URL_LINK.'image/banner/weekPrice.png" width="200px">
                                    ';
                                break;
                            case $categories == 'bicycle_For_sale':
                                # code...
                                echo '<img src="'.BASE_URL_LINK.'image/img/photo4.jpg" width="200px">
                                      <img style="float: right;margin-top:15px;margin-right:25px;" src="'.BASE_URL_LINK.'image/banner/weekPrice.png" width="200px">
                                    ';
                                break;
                        } ?>
                          
                </li>
          <?php while($car= $query->fetch_array()) { ?>
                    <li class="time-label">
                        <?php echo $this->buychangesColor($car['buy']); ?>
                        
                         <?php if($car['discount'] != 0){ ?>
                            <?php echo $this->PercentageDiscount($car['discount']); ?>
                        <?php }else { ?>
                            <span class="bg-info text-light" style="position: absolute;font-size: 11px; padding: 2px;margin-left: 10px;margin-top: 40px;"> 0% </span> 
                        <?php } ?>

                        <div class="timeline-item card flex-md-row shadow-sm h-md-100 border-0">
                        <!-- <img class="card-img-left flex-auto d-none d-lg-block" height="100px" width="100px" src="< ?php echo BASE_URL_PUBLIC.'uploads/car/'.$car['photo'] ;?>" alt="Card image cap"> -->
                        <div class='card-img-left flex-auto d-none d-lg-block' style="background: url('<?php echo BASE_URL_PUBLIC.'uploads/car/'.$car['photo']; ?>')no-repeat center center;background-size:cover;height:100px;width:100px">
                        <?php $banner = $car['banner'];
                        switch ($banner) {
                            case $banner == 'new':
                                # code...
                                echo '<img style="margin-left: -10px;" src="'.BASE_URL_LINK.'image/banner/new.png" height="100px" width="100px">';
                                break;
                            case $banner == 'great_deal':
                                # code...
                                echo '<img style="margin-right: -10px;" src="'.BASE_URL_LINK.'image/banner/great-deal.png" height="100px" width="100px">';
                                break;
                            case $banner == 'new_arrival':
                                # code...
                                echo '<img style="margin-right: -10px;" src="'.BASE_URL_LINK.'image/banner/new-arrival.png" height="100px" width="100px">';
                                break;
                            case $banner == 'vegetables':
                                # code...
                                echo '<img style="margin-right: -10px;" src="'.BASE_URL_LINK.'image/banner/new-arrival5.png" height="100px" width="100px">';
                                break;
                            case $banner == 'macedone':
                                # code...
                                echo '<img style="margin-right: -10px;" src="'.BASE_URL_LINK.'image/banner/new-arrival5.png" height="100px" width="100px">';
                                break;
                            
                        } ?>
                          
                        </div>
                        <div class="card-body pt-0">
                           <div class="text-primary mb-0">
                              <a class="text-primary float-left" href="javascript:void(0)" id="car-readmore" data-car="<?php echo $car['car_id']; ?>" ><i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo $car['cell']."/".$car['sector']; ?></a>
                               <span class="float-right"> <?php if($car['price_discount'] != 0){ ?><span class="mr-2 text-danger " style="text-decoration: line-through;"><?php echo number_format($car['price_discount'], 2); ?> Frw</span> <?php } ?><span class="text-primary" > <?php echo number_format($car['price'], 2); ?> Frw</span></span>
                            </div> 
                            <div class="text-muted clear-float">
                                <span class="float-left"><i class="fa fa-home" aria-hidden="true"></i>  <?php echo $categories; ?></span>
                                <span class="float-right mr-5"><i class="fa fa-heart" aria-hidden="true"></i></span></div>
                            <div class="text-muted clear-float">
                                <span><i class="fa fa-clock-o" aria-hidden="true"></i> Created on <?php echo $this->timeAgo($car['created_on3'])." By ".$car['authors']; ?></span>
                            </div>
                            <p class="card-text clear-float">200 m square feet Garden,4 bedroom,2 bathroom, kitchen and cabinet, car parking dapibuseget quame... Continue reading... </p>

                        </div><!-- card-body -->
                        </div><!-- card -->
                    </li>
                    <!-- END timeline item -->
                    <?php }
                    
                    $query1= $mysqli->query("SELECT COUNT(*) FROM car WHERE categories_car ='$categories' ");
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
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="carCategories('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
                 <?php } ?>
                 <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                         if ($i == $pages) { ?>
                      <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="carCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                      <?php }else{ ?>
                     <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="carCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php } } ?>
                 <?php if ($pages+1 <= $post_Perpage) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="carCategories('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
                 <?php } ?>
             </ul>
         </nav>
        <?php } 
    }

      public function carcountPOSTS($categories)
    {
        $db =$this->database;
        $sql= $db->query("SELECT COUNT(*) FROM car WHERE categories_car ='$categories' ");
        $row_post = $sql->fetch_array();
        $total_post= array_shift($row_post);
        $array= array(0,$total_post);
        $total_posts= array_sum($array);
        echo $total_posts;
    }


      public function carReadmore($car_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN car C ON C. user_id3 = u. user_id WHERE C. car_id = '$car_id' ");
        $row= $query->fetch_array();
        return $row;
    }
}

$car = new Car();
?>