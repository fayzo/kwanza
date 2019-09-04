<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Hotel extends Food{

    public function hotelReadmore($hotel_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN rwandahotel R ON R. user_id_ = u. user_id WHERE R. hotel_id = '$hotel_id' ");
        $row= $query->fetch_array();
        return $row;
    }

    public function hotelList($pages,$categories,$user_id)
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
            $query= $mysqli->query("SELECT * FROM rwandahotel ORDER BY rand() Limit $showpages,6");
        }else{
            $query= $mysqli->query("SELECT * FROM rwandahotel WHERE location_province= '{$categories}' ORDER BY rand() Limit $showpages,6");
        }
        ?>
        <div class="row">
            <div class="col-md-3" >

                    <div class="card">
                        <div class="card-header text-center main-active p-1">
                            <h5 class="card-title">Search</h5>
                        </div>
                        <div class="card-body bg-warning text-dark">
                            <div class="form-row">
                            <div class="col">
                                <label for="">Destination</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-map-marker mr-1" aria-hidden="true"></i></span>
                                    </div>
                                     <input type="text" class="form-control" name="" id="" aria-describedby="helpId" placeholder="Rwanda">
                                </div>
                            </div>
                            <div class="col">
                                <label for="">Check-in date</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-calendar mr-1" aria-hidden="true"></i></span>
                                    </div>
                                     <input type="date" class="form-control" name="" id="" aria-describedby="helpId">
                                </div>
                            </div>
                            <div class="col">
                                <label for="">Check-out date</label>
                                 <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-calendar mr-1" aria-hidden="true"></i></span>
                                    </div>
                                     <input type="date" class="form-control" name="" id="" aria-describedby="helpId">
                                </div>
                            </div>
                            </div>
                            <div class="form-group">
                                <label for="">Night-stay</label>
                                 <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-bed mr-1" aria-hidden="true"></i></span>
                                    </div>
                                    <select class="form-control" name="" id="">
                                        <option>1 adult</option>
                                        <option>2 adults</option>
                                        <option>3 adults</option>
                                        <option>4 adults</option>
                                        <option>5 adults</option>
                                    </select>
                                </div>
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
                    <div class="card-body message-color text-dark">
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
                         <h5  class="text-center">Rwanda Hotels </h5>
                         <input type="hidden" class="price_range-user_id" value="<?php echo $user_id; ?>" />
                          <div class="filter-panel mt-4">
                              <p><input type="hidden" id="price" class="price_range" value="0,500" /></p>
                              <!-- <input type="button" onclick="filterProducts()" value="FILTER" /> -->
                          </div>
                     </div>
                     <div class="col-md-4">
                        <form class="form-inline float-right  mb-2" style="position:relative;right:0px;top:0px;">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i class="fa fa-search" aria-hidden="true"></i> </span>
                            </div>
                            <input type="text" class="form-control searchHotel"  aria-describedby="helpId" placeholder="Search Accountant, finance ,enginneer">
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
                            <a class="p-2" href="javascript:void(0)" onclick="hotelCategories('featured',1,<?php echo $user_id ;?>);" >All Hotel<span class="badge badge-primary"><?php echo $this->hotelcountPOSTS('featured');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="hotelCategories('kigali city',1,<?php echo $user_id ;?>);" >kigali city<span class="badge badge-primary"><?php echo $this->hotelcountPOSTS('kigali city');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="hotelCategories('Northern province',1,<?php echo $user_id ;?>);" >Northern province<span class="badge badge-primary"><?php echo $this->hotelcountPOSTS('Northern province');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="hotelCategories('East province',1,<?php echo $user_id ;?>);" >East province<span class="badge badge-primary"><?php echo $this->hotelcountPOSTS('East province');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="hotelCategories('West province',1,<?php echo $user_id ;?>);" >West province<span class="badge badge-primary"><?php echo $this->hotelcountPOSTS('West province');?></span></a>
                            <a class="p-2" href="javascript:void(0)" onclick="hotelCategories('Southern province',1,<?php echo $user_id ;?>);" >Southern province<span class="badge badge-primary"><?php echo $this->hotelcountPOSTS('Southern province');?></span></a>
                        </nav>
                    </div> <!-- nav-scroller -->
                </div>
                <div class="card-body message-color">
                <span class="hotel-show"></span>
                  <div id="productContainer">
                <?php if($query->num_rows > 0){ ?>

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
               
                       <div class="timeline-item card flex-md-row h-md-100 border-top-0 border-left-0 border-right-0 mb-3 borders-bottoms pb-2 mb-3">
                            <!-- <img class="card-img-left flex-auto d-none d-lg-block" height="120px" width="120px" src="< ?php echo BASE_URL_PUBLIC.'uploads/Rwandahotel/'.$row['photo_']; ?>" alt="Card image cap"> -->
                          <div class='card-img-left flex-auto d-none d-lg-block' style="background: url('<?php echo BASE_URL_PUBLIC.'uploads/Rwandahotel/'.$row['photo_']; ?>')no-repeat center center;background-size:cover;height:120px;width:120px">
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
                        <div class="card-body pt-0">
                            <span id="response<?php echo $row["hotel_id"];?>"></span>
                            <div class="row">
                            <div class="col-md-6 pr-0">

                              <h5 class="text-primary mb-0">
                              <a class="text-primary" href="javascript:void(0)"  id="hotel-readmore" data-hotel="<?php echo $row['hotel_id']; ?>"><?php echo $row['title_']; ?></a>
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
                          </div><!-- col -->

                     <div class="col-md-2 p-0">
                          <?php if($row['price_discount'] != 0){ ?><h5 class="mt-4 text-danger text-right mb-0" style="text-decoration: line-through;"> US<i class="fa fa-usd" aria-hidden="true"></i><?php echo number_format($row['price_discount']); ?></h5><?php } ?>
                          <h5 class="mt-2 text-success text-right mb-0"> US<i class="fa fa-usd" aria-hidden="true"></i><?php echo number_format($row['price']); ?></h5>
                          <div class="text-muted text-right mt-0">Per night</div> 
                      </div>
                      <div class="col-md-2 text-center pr-0">
                           <h5 class="text-muted" style="margin-top: 1.5rem!important;"> Good <span class="badge badge-primary"><?php echo $row['ranges']; ?></span></h5>
                      </div>
                      <div class="col-md-2 pr-0">
                      <button type="button" name="" id="" class="btn btn-primary btn-md btn-block" style="margin-top: 1.5rem!important;"><i class="fa fa-check text-white" aria-hidden="true"></i> Book Now</button>
                        
                        <?php if($user_id == $row['user_id_']){ ?>
                                    <ul class="list-inline ml-2  float-right" style="list-style-type: none;">  

                                            <li  class=" list-inline-item">
                                                <ul class="showcartButt" style="list-style-type: none; margin:0px;" >
                                                    <li>
                                                        <a href="javascript:void(0)" class="more"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                                                        <ul style="list-style-type: none; margin:0px; margin:0px;width:250px;text-align:center;" >
                                                            <li style="list-style-type: none; margin:0px;"> 
                                                            <label class="deletehotel"  data-hotel="<?php echo $row["hotel_id"];?>"  data-user="<?php echo $row["user_id_"];?>">Delete </label>
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
                                                            <label for="discount" class="update-hotel-btn" data-hotel="<?php echo $row["hotel_id"];?>" data-user="<?php echo $row["user_id_"];?>">submit</label>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                    </ul>
                                <?php } ?>
                          </div><!-- col -->
                         </div><!-- row -->
                        </div><!-- card-body -->
                      </div><!-- card -->
            </li>
               <?php } ?>
            <li>
                <i class="fa fa-clock-o bg-info text-light"></i>
            </li>
        </ul>

 </tbody>
</table>
<?php }else{
  echo 'No Hotels';
} ?>
                    </div><!-- productContainer -->
                  </div><!-- card-body -->
              </div><!-- card -->
            </div><!-- col -->
        </div><!-- row -->
        <?php
         if($categories == 'featured'){
            $query1= $mysqli->query("SELECT COUNT(*) FROM rwandahotel ");
        }else{
            $query1= $mysqli->query("SELECT COUNT(*) FROM rwandahotel WHERE location_province= '{$categories}' ");
        }

        $row_Paginaion = $query1->fetch_array();
        $total_Paginaion = array_shift($row_Paginaion);
        $post_Perpages = $total_Paginaion/6;
        $post_Perpage = ceil($post_Perpages); 

        if($post_Perpage > 1){ ?>
         <nav>
             <ul class="pagination justify-content-center mt-3">
                 <?php if ($pages > 1) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="hotelCategories('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
                 <?php } ?>
                 <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                         if ($i == $pages) { ?>
                      <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="hotelCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                      <?php }else{ ?>
                     <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="hotelCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php } } ?>
                 <?php if ($pages+1 <= $post_Perpage) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="hotelCategories('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
                 <?php } ?>
             </ul>
         </nav>
        <?php } ?>

   <?php }

       public function hotelcountPOSTS($categories)
    {
        $mysqli =$this->database;
          if($categories == 'featured'){
            $sql= $mysqli->query("SELECT COUNT(*) FROM rwandahotel ");
        }else{
            $sql= $mysqli->query("SELECT COUNT(*) FROM rwandahotel WHERE location_province= '{$categories}' ");
        }
        $row_post = $sql->fetch_array();
        $total_post= array_shift($row_post);
        $array= array(0,$total_post);
        $total_posts= array_sum($array);
        echo $total_posts;
    }

       
    public function hotel_getPopupTweet($user_id,$hotel_id,$hotel_user_id)
    {
        $mysqli= $this->database;
        $result= $mysqli->query("SELECT * FROM users U Left JOIN rwandahotel B ON B. user_id_ = u. user_id WHERE B. hotel_id = $hotel_id AND B. user_id_ = $hotel_user_id ");
        // var_dump('ERROR: Could not able to execute'. $query.mysqli_error($mysqli));
        while ($row= $result->fetch_array()) {
            # code...
            return $row;
        }
    }

    public function update_hotel($banner,$discount_change,$discount_price,$price,$hotel_id)
    {
        $mysqli= $this->database;
        $query= "UPDATE rwandahotel SET banner= '$banner', discount = $discount_change ,price_discount = $discount_price, price = $price WHERE hotel_id= $hotel_id ";
        $mysqli->query($query);

        if($query){
                exit('<div class="alert alert-success alert-dismissible fade show text-center" style="font-size:12px;padding:2px;">
                    <button class="close" data-dismiss="alert" type="button" style="top:-6px;">
                        <span>&times;</span>
                    </button>
                    <strong>SUCCESS</strong> </div>');
            }else{
                exit('<div class="alert alert-danger alert-dismissible fade show text-center" style="font-size:12px;padding:2px;">
                    <button class="close" data-dismiss="alert" type="button"  style="top:-6px;">
                        <span>&times;</span>
                    </button>
                    <strong>Fail to Edit !!!</strong>
                </div>');
        }
    }
     
    public function deleteLikesHotel($hotel_id,$user_id)
    {
        $mysqli= $this->database;
        $query="DELETE FROM rwandahotel WHERE hotel_id = $hotel_id and user_id_ = $user_id ";

        $query1="SELECT * FROM rwandahotel WHERE hotel_id = $hotel_id and user_id_ = $user_id ";

        $result= $mysqli->query($query1);
        $rows= $result->fetch_assoc();

        if(!empty($rows['photo_'])){
            $photo=$rows['photo_'].'='.$rows['other_photo_'];
            $expodefile = explode("=",$photo);
            $fileActualExt= array();
            for ($i=0; $i < count($expodefile); ++$i) { 
                $fileActualExt[]= strtolower(substr($expodefile[$i],-3));
            }
            $allower_ext = array('jpeg', 'jpg', 'png', 'gif', 'bmp', 'pdf' , 'doc' , 'ppt'); // valid extensions
            if (array_diff($fileActualExt,$allower_ext) == false) {
                $expode = explode("=",$photo);
                $uploadDir = $_SERVER['DOCUMENT_ROOT'].'/Blog_nyarwanda_CMS/uploads/Rwandahotel/';
                for ($i=0; $i < count($expode); ++$i) { 
                      unlink($uploadDir.$expode[$i]);
                }
            }else if (array_diff($fileActualExt,$allower_ext)[0] == 'mp4') {
                $uploadDir = $_SERVER['DOCUMENT_ROOT'].'/Blog_nyarwanda_CMS/uploads/Rwandahotel/';
                      unlink($uploadDir.$photo);
            }else if (array_diff($fileActualExt,$allower_ext)[0] == 'mp3') {
                $uploadDir = $_SERVER['DOCUMENT_ROOT'].'/Blog_nyarwanda_CMS/uploads/Rwandahotel/';
                      unlink($uploadDir.$photo);
            }
        }

        $query= $mysqli->query($query);
        // var_dump("ERROR: Could not able to execute $query.".mysqli_error($mysqli));

        if($query){
                exit('<div class="alert alert-success alert-dismissible fade show text-center">
                    <button class="close" data-dismiss="alert" type="button">
                        <span>&times;</span>
                    </button>
                    <strong>SUCCESS DELETE</strong> </div>');
            }else{
                exit('<div class="alert alert-danger alert-dismissible fade show text-center">
                    <button class="close" data-dismiss="alert" type="button">
                        <span>&times;</span>
                    </button>
                    <strong>Fail to delete !!!</strong>
                </div>');
        }
    }
}

$hotel = new Hotel();

/*
===========================================
         Notice
===========================================
# You are free to run the software as you wish
# You are free to help yourself study the source code and change to do what you wish
# You are free to help your neighbor copy and distribute the software
# You are free to help community create and distribute modified version as you wish

We promote Open Source Software by educating developers (Beginners)
use PHP Version 5.6.1 > 7.3.20  
===========================================
         For more information contact
=========================================== 
Kigali - Rwanda
Tel : (250)787384312 / (250)787384312
E-mail : shemafaysal@gmail.com

*/
?>
