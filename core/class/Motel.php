<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Motel extends Food{

    public function motelReadmore($motel_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN rwandamotel R ON R. user_id_ = u. user_id WHERE R. motel_id = '$motel_id' ");
        $row= $query->fetch_array();
        return $row;
    }

    public function motelList($pages,$categories,$user_id)
    {
        $pages= $pages;
        $categories= $categories;
        
        if($pages === 0 || $pages < 1){
            $showpages = 0 ;
        }else{
            $showpages = ($pages*6)-6;
        }

        $mysqli= $this->database;
        if($categories == 'featured'){
            $query= $mysqli->query("SELECT * FROM rwandamotel ORDER BY rand() Limit $showpages,6");
        }else{
            $query= $mysqli->query("SELECT * FROM rwandamotel WHERE location_province= '{$categories}' ORDER BY rand() Limit $showpages,6");
        }
        ?>
        <div class="row">
            <div class="col-md-3" >

                    <div class="card">
                        <div class="card-header text-center main-active p-1">
                            <h5 class="card-title">Search</h5>
                        </div>
                        <div class="card-body">
                            <div class="form-row">
                            <div class="col">
                                <label for="">Destination</label>
                                <input type="text"
                                    class="form-control" name="" id="" aria-describedby="helpId" placeholder="Rwanda">
                            </div>
                            <div class="col">
                                <label for="">Check-in date</label>
                                <input type="date"
                                    class="form-control" name="" id="" aria-describedby="helpId" placeholder="Rwanda">
                            </div>
                            <div class="col">
                                <label for="">Check-out date</label>
                                <input type="date"
                                    class="form-control" name="" id="" aria-describedby="helpId" placeholder="Rwanda">
                            </div>
                            </div>
                            <div class="form-group">
                                <label for="">Night-stay</label>
                                <select class="form-control" name="" id="">
                                <option>1 adult</option>
                                <option>2 adults</option>
                                <option>3 adults</option>
                                <option>4 adults</option>
                                <option>5 adults</option>
                                </select>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <select class="form-control" name="" id="">
                                    <option>No children</option>
                                    <option>1 children</option>
                                    <option>2 children</option>
                                    <option>3 children</option>
                                    <option>4 children</option>
                                    <option>5 children</option>
                                    </select>
                                </div>
                                <div class="col">
                                    <select class="form-control" name="" id="">
                                    <option>1 room</option>
                                    <option>2 room</option>
                                    <option>3 room</option>
                                    <option>4 room</option>
                                    <option>5 room</option>
                                    </select>
                                </div><!-- col -->
                            </div><!-- form-row -->
                            <button type="button" class="btn btn-primary float-right mt-3">Search</button>
                    </div><!-- card-body -->
                </div><!-- card -->
                <div class="card mt-3">
                    <div class="card-header text-center main-active p-1">
                        <h5 class="card-title">Filter by:</h5>
                    </div>
                    <div class="card-body">
                    <h5> Your budget</h5>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                    US $0-$100 per night
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                    US $100-$200 per night
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                    US $200-$500 per night
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h5>Popular filters</h5>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                     Motel
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h5>Reservation policy</h5>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                     Free cancellation
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                     Book without credit card
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h5>Meal</h5>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                     Breakfast included
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                     Breakfast & lunch included
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                     Breakfast & dinner included
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h5>Bed preference</h5>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                     Twin beds
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                    Double beds
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h5>Facilities</h5>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                     Parking
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                    restaurent
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                    fitness centre
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                            </div>
                        </div>
                        <hr>
                        <h5>Pool</h5>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                     swimming pool
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                    outdoor pool
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                                <div class="form-check mb-2">
                                    <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="" id="" value="checkedValue" >
                                    beach towels
                                    </label>
                                    <div class="float-right text-muted">200</div>
                                </div>
                            </div>
                        </div>
                    </div><!-- card-body -->
                </div><!-- card -->
            </div><!-- col -->

            <div class="col-md-9">
            
            <div class="card card-primary">
                <div class="card-header main-active">

                   <div class="row">
                     <div class="col-md-4">
                        <div>What is your budget ? </div>
                        <small>Price Per night</small>
                     </div>
                     <div class="col-md-4">
                         <h5  class="text-center">Rwanda Motels </h5>
                          <div class="filter-panel mt-4">
                              <p><input type="hidden" id="price" class="price_range0" value="0,500" /></p>
                              <!-- <input type="button" onclick="filterProducts()" value="FILTER" /> -->
                          </div>
                     </div>
                     <div class="col-md-4">
                        <form class="form-inline float-right  mb-2" style="position:relative;right:0px;top:0px;">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i class="fa fa-search" aria-hidden="true"></i> </span>
                            </div>
                            <input type="text" class="form-control searchmotel"  aria-describedby="helpId" placeholder="Search Accountant, finance ,enginneer">
                        </div>
                    </form>

                       <div class="dropdown float-right">
                         <button class="btn btn-secondary btn-sm dropdown-toggle" type="button" id="triggerId" data-toggle="dropdown" aria-haspopup="true"
                             aria-expanded="false">
                               MOST POPULAR
                             </button>
                         <div class="dropdown-menu" aria-labelledby="triggerId">
                           <a class="dropdown-item" href="#">Action</a>
                           <a class="dropdown-item disabled" href="#">Disabled action</a>
                           <h6 class="dropdown-header">Section header</h6>
                           <a class="dropdown-item" href="#">Action</a>
                           <div class="dropdown-divider"></div>
                           <a class="dropdown-item" href="#">After divider action</a>
                         </div>
                       </div>

                       <div class="float-right h5 mr-2">Sort By </div> 
                     </div>
                   </div>
                    <div class="nav-scroller py-0" style="clear:right;height:2rem;">
                        <nav class="nav d-flex justify-content-between pb-0"  >
                            <a class="p-2" href="javascript:void(0)" onclick="motelCategories('featured',1,<?php echo $user_id; ?>);" >All motel<span class="badge badge-primary"><?php echo $this->motelcountPOSTS('featured');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="motelCategories('kigali city',1,<?php echo $user_id; ?>);" >kigali city<span class="badge badge-primary"><?php echo $this->motelcountPOSTS('kigali city');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="motelCategories('Northern province',1,<?php echo $user_id; ?>);" >Northern province<span class="badge badge-primary"><?php echo $this->motelcountPOSTS('Northern province');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="motelCategories('East province',1,<?php echo $user_id; ?>);" >East province<span class="badge badge-primary"><?php echo $this->motelcountPOSTS('East province');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="motelCategories('West province',1,<?php echo $user_id; ?>);" >West province<span class="badge badge-primary"><?php echo $this->motelcountPOSTS('West province');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="motelCategories('Southern province',1,<?php echo $user_id; ?>);" >Southern province<span class="badge badge-primary"><?php echo $this->motelcountPOSTS('Southern province');?></span></a>
                        </nav>
                    </div> <!-- nav-scroller -->
                </div>
                <div class="card-body">
                <span class="motel-show"></span>
                  <div id="productContainer">
                  <table class="table table-hover table-inverse">
                  <tbody>
                <ul class="timeline timeline-inverse"> 
               <?php while($row= $query->fetch_array()) { ?>
                <li class="time-label">
                    <?php if($row['discount'] != 0){ ?>
                        <?php echo $this->foodPercentageDiscount($row['discount']); ?>
                    <?php }else { echo ''; ?>
                        <!-- <span class="bg-info text-light" style="position: absolute;font-size: 11px; padding: 2px; margin-left: 10px;"> 0% </span>  -->
                    <?php } ?>
                <div class="row timeline-item">

                    <div class="col-md-6">
                       <div class="card flex-md-row h-md-100 border-0 mb-3">
                              <!-- <img class="card-img-left flex-auto d-none d-lg-block" height="120px" width="120px" src="< ?php echo BASE_URL_PUBLIC.'uploads/Rwandamotel/'.$row['photo_']; ?>" alt="Card image cap"> -->
                          <div class='card-img-left flex-auto d-none d-lg-block' style="background: url('<?php echo BASE_URL_PUBLIC.'uploads/Rwandamotel/'.$row['photo_']; ?>')no-repeat center center;background-size:cover;height:120px;width:120px">
                        <?php $banner = $row['banner'];
                        switch ($banner) {
                            case $banner == 'new':
                                # code...
                                echo '<img style="margin-left: -10px;" src="'.BASE_URL_LINK.'image/banner/new.png" height="100px" width="100px">';
                                break;
                            case $banner == 'great_deal':
                                # code...
                                echo '<img style="margin-right: -10px;" src="'.BASE_URL_LINK.'image/banner/great-deal.png" height="100px" width="120px">';
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
                            default:
                                # code...
                                echo '';
                                break;
                            
                        } ?>
                        </div>
                            <div class="card-body d-flex flex-column align-items-start pt-0">
                              <h5 class="text-primary mb-0">
                              <a class="text-primary" href="javascript:void(0)"  id="motel-readmore" data-motel="<?php echo $row['motel_id']; ?>"><?php echo $row['title_']; ?></a>
                              </h5>
                              <div class="text-warning"><i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-half-o" aria-hidden="true"></i> <i class="fa fa-star-half-o" aria-hidden="true"></i></div>
                              <div class="text-left text-muted mb-1"><i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo $row['location_districts'].' districts/'.$row['location_Sector'].' sector'; ?></div>
                              <div class='d-inline text-muted'>
                                <i class="fa fa-utensils"></i> 
                                <i class="fa fa-coffee" aria-hidden="true"></i>
                                <i class="fa fa-cocktail    "></i>
                                <i class="fa fa-glass-martini    "></i>
                                <i class="fa fa-shower" aria-hidden="true"></i>
                                <i class="fa fa-bath    "></i>
                                <i class="fa fa-spa    "></i>
                                <i class="fa fa-swimmer    "></i>
                                <i class="fa fa-car" aria-hidden="true"></i>
                                <i class="fa fa-wifi" aria-hidden="true"></i>
                              </div>
                          </div><!-- card-body -->
                      </div><!-- card -->
                    </div>

                     <div class="col-md-2">
                        <?php if($row['price_discount'] != 0){ ?><h5 class="mt-4 text-danger text-right mb-0" style="text-decoration: line-through;"> US<i class="fa fa-usd" aria-hidden="true"></i><?php echo number_format($row['price_discount']); ?></h5><?php } ?>
                        <h5 class="mt-2 text-success text-right mb-0"> US<i class="fa fa-usd" aria-hidden="true"></i><?php echo number_format($row['price']); ?></h5>
                          <div class="text-muted text-right mt-0">Per night</div> 
                      </div>
                      <div class="col-md-2 text-center">
                           <h5 class="mt-4 text-muted "> Good <span class="badge badge-primary"><?php echo $row['ranges']; ?></span></h5>
                      </div>
                      <div class="col-md-2">
                      <button type="button" name="" id="" class="btn btn-primary btn-md btn-block mt-4"><i class="fa fa-check" aria-hidden="true"></i> Book Now</button>
                      <?php if($user_id == $row['user_id_']){ ?>
                                    <ul class="list-inline ml-2  float-right" style="list-style-type: none;">  

                                            <li  class=" list-inline-item">
                                                <ul class="showcartButt" style="list-style-type: none; margin:0px;" >
                                                    <li>
                                                        <a href="javascript:void(0)" class="more"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                                                        <ul style="list-style-type: none; margin:0px; margin:0px;width:250px;text-align:center;" >
                                                            <li style="list-style-type: none; margin:0px;"> 
                                                            <label class="deletefood"  data-food="<?php echo $row["hotel_id"];?>"  data-user="<?php echo $row["user_id_"];?>">Delete </label>
                                                            </li>

                                                            <li style="list-style-type: none; margin:0px;"> 
                                                            <label for="">
                                                            <div class="form-row">
                                                                <div class="col">
                                                                        Banner
                                                                        <div class="input-group">
                                                                              <select class="form-control" name="banner" id="banner<?php echo $row["hotel_id"];?>">
                                                                                <option value="<?php echo $row['banner']; ?>" selected><?php echo $row['banner']; ?></option>
                                                                                <option value="new">New</option>
                                                                                <option value="new_arrival">New arrival</option>
                                                                                <option value="great_deal">Great deal</option>
                                                                                <option value="empty">empty</option>
                                                                              </select>
                                                                            <div class="input-group-append">
                                                                                <span class="input-group-text" style="padding: 0px 10px;" aria-label="Username" aria-describedby="basic-addon1" >banner</span>
                                                                            </div>
                                                                        </div> <!-- input-group -->
                                                                </div>
                                                            </div>
                                                            </label>
                                                            </li>

                                                          <li style="list-style-type: none; margin:0px;"> 
                                                            <label for="">
                                                            <div class="form-row">
                                                                <div class="col">
                                                                    discount %
                                                                    <div class="input-group">
                                                                        <input  type="number" class="form-control form-control-sm" name="discount_change" id="discount_change<?php echo $row["hotel_id"];?>" value="<?php echo $row["discount"];?>">
                                                                        <div class="input-group-append">
                                                                            <span class="input-group-text" style="padding: 0px 10px;" aria-label="Username" aria-describedby="basic-addon1" >%</span>
                                                                        </div>
                                                                    </div> <!-- input-group -->
                                                                </div>
                                                            </div>
                                                            </label>
                                                            </li>
                                                            
                                                            <li style="list-style-type: none;"> 
                                                            <label for="discount">
                                                            <div class="form-row">
                                                                <div class="col">
                                                                    discount price
                                                                    <div class="input-group">
                                                                        <input  type="number" class="form-control form-control-sm" name="discount_price" id="discount_price<?php echo $row["hotel_id"];?>" value="<?php echo $row["price_discount"];?>">
                                                                        <div class="input-group-append">
                                                                            <span class="input-group-text" style="padding: 0px 10px;" aria-label="Username" aria-describedby="basic-addon1">$</span>
                                                                        </div>
                                                                    </div> <!-- input-group -->
                                                                </div>
                                                                <div class="col">
                                                                        Price
                                                                    <div class="col">
                                                                        </div>
                                                                    <div class="input-group">
                                                                        <input  type="number" class="form-control form-control-sm" name="price" id="price<?php echo $row["hotel_id"];?>" value="<?php echo $row["price"];?>">
                                                                        <div class="input-group-append">
                                                                            <span class="input-group-text" style="padding: 0px 10px;"
                                                                                aria-label="Username" aria-describedby="basic-addon1" >$</span>
                                                                        </div>
                                                                    </div> <!-- input-group -->
                                                                </div>
                                                            </div>
                                                            </label>
                                                            </li>

                                                            <li style="list-style-type: none;"> 
                                                            <label for="discount" class="update-food-btn" data-food="<?php echo $row["hotel_id"];?>" data-user="<?php echo $row["user_id_"];?>">submit</label>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                    </ul>
                                <?php } ?>
                    </div>
                    <hr class="bg-info mt-0 mb-1 " style="width:95%;">
                </div><!-- row -->
            </li>
               <?php } ?>
            <li>
                <i class="fa fa-clock-o bg-info text-light"></i>
            </li>
        </ul>
</tbody>
</table>
                    </div><!-- productContainer -->
                  </div><!-- card-body -->
              </div><!-- card -->
            </div><!-- col -->
        </div><!-- row -->
        <?php
         if($categories == 'featured'){
            $query1= $mysqli->query("SELECT COUNT(*) FROM rwandamotel ");
        }else{
            $query1= $mysqli->query("SELECT COUNT(*) FROM rwandamotel WHERE location_province= '{$categories}' ");
        }

        $row_Paginaion = $query1->fetch_array();
        $total_Paginaion = array_shift($row_Paginaion);
        $post_Perpages = $total_Paginaion/6;
        $post_Perpage = ceil($post_Perpages); 

        if($post_Perpage > 1){ ?>
         <nav>
             <ul class="pagination justify-content-center mt-3">
                 <?php if ($pages > 1) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="motelCategories('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
                 <?php } ?>
                 <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                         if ($i == $pages) { ?>
                      <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="motelCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                      <?php }else{ ?>
                     <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="motelCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php } } ?>
                 <?php if ($pages+1 <= $post_Perpage) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="motelCategories('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
                 <?php } ?>
             </ul>
         </nav>
        <?php } ?>

   <?php }

       public function motelcountPOSTS($categories)
    {
        $mysqli =$this->database;
          if($categories == 'featured'){
            $sql= $mysqli->query("SELECT COUNT(*) FROM rwandamotel ");
        }else{
            $sql= $mysqli->query("SELECT COUNT(*) FROM rwandamotel WHERE location_province= '{$categories}' ");
        }
        $row_post = $sql->fetch_array();
        $total_post= array_shift($row_post);
        $array= array(0,$total_post);
        $total_posts= array_sum($array);
        echo $total_posts;
    }
}

$motel = new Motel();
?>
