<?php
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if(isset($_POST['price_range'])){
    $user_id= $_POST['user_id'];
    
    //Include database configuration file
    
    //set conditions for filter by price range
    $whereSQL = $orderSQL = '';
    $priceRange = $_POST['price_range'];
    if(!empty($priceRange)){
        $priceRangeArr = explode(',', $priceRange);
        $whereSQL = "WHERE price BETWEEN '".$priceRangeArr[0]."' AND '".$priceRangeArr[1]."'";
        $orderSQL = " ORDER BY price ASC ";
    }else{
        $orderSQL = " ORDER BY created DESC ";
    }
    
    //get product rows
    $query = $db->query("SELECT * FROM rwandahotel $whereSQL $orderSQL");
    
    if($query->num_rows > 0){
        echo "<h4 style='padding: 0px 10px;text-align:center;'>FROM <span style='color:red;'> $priceRangeArr[0] US$ </span> TO <span style='color:red;'> $priceRangeArr[1] US$</span> </h4> "; 
        ?>
        <ul class='timeline timeline-inverse'> 
               <?php while($row= $query->fetch_array()) { ?>
                  <li class="time-label">
                    <?php if($row['discount'] != 0){ ?>
                        <?php echo $food->foodPercentageDiscount($row['discount']); ?>
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

<?php }else{
        echo 'Hotel(s) not found';
        // echo 'Product(s) not found';
    }
}


if (isset($_POST['search']) && !empty($_POST['search'])) {
    $user_id= $_POST['user_id'];
    $search= $users->test_input($_POST['search']);
    $result= $home->searchHotel($search);
    echo '<h4 style="padding: 0px 10px;">'.$_POST['search'].'</h4>
        <ul class="timeline timeline-inverse"> ';

    if(count($result) > 0){

     if (is_array($result) || is_object($result)){

     foreach ($result as $row) { ?>
           
                  <li class="time-label">
                    <?php if($row['discount'] != 0){ ?>
                        <?php echo $food->foodPercentageDiscount($row['discount']); ?>
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

    <?php } 
    }else{
        echo 'Hotel(s) not found';
        // echo 'Product(s) not found';
    }
} 
?>