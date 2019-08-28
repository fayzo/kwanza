<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['price']) && !empty($_POST['price'])) {
    $user_ids= $_SESSION['key'];
	$hotel_id= $_POST['hotel_id'];
	$user_id= $_POST['user_id'];
    // $available= $_POST['available'];
    $discount_change= $_POST['discount_change'];
	$discount_price= $_POST['discount_price'];
	$price= $_POST['price'];
	$banner= $_POST['banner'];
    $hotel->update_hotel($banner,$discount_change,$discount_price,$price,$hotel_id);
}

if (isset($_POST['deleteTweetHome']) && !empty($_POST['deleteTweetHome'])) {
    $user_id= $_SESSION['key'];
	$hotel_id= $_POST['deleteTweetHome'];
    $hotel->deleteLikesHotel($hotel_id,$user_id);
}

if (isset($_POST['showpopupdelete']) && !empty($_POST['showpopupdelete'])) {
    $user_id= $_SESSION['key'];
	$hotel_id= $_POST['showpopupdelete'];
	$hotel_user_id= $_POST['deleteEvents'];
    $hotels=$hotel->hotel_getPopupTweet($user_id,$hotel_id,$hotel_user_id);
    ?>
    <div class="hotel-popup">
      <div class="wrap5">
        <div class="post-popup-body-wrap" style="top: 15%;">
            <div class="card">
            <span id='responseDeletePost'></span>
                <div class="card-header">
                    <span class="closeDelete"><button class="close-retweet-popup"><i class="fa fa-times" aria-hidden="true"></i></button></span>
                    <h5 class="text-center text-muted">Are you sure you want to delete this Posts?</h5>
                </div>
                <div class="card-body">

                <div class="shadow-lg">
                    <div class="user-block border-bottom">
                     <div class="user-blockImgBorder">
                            <div class="user-blockImg">
                                     <?php if (!empty($hotels['profile_img'])) {?>
                                     <img src="<?php echo BASE_URL_LINK ;?>image/users_profile_cover/<?php echo $hotels['profile_img'] ;?>" alt="User Image">
                                     <?php  }else{ ?>
                                       <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>" alt="User Image">
                                     <?php } ?>
                               </div>
                            </div>
                        <span class="username">
                            <a style="float:left;padding-right:3px;" href="<?php echo PROFILE ;?>"><?php echo $hotels['firstname']." ".$hotels['lastname'] ;?></a>
                            <!-- //Jonathan Burke Jr. -->
                            <span class="description">Shared publicly - <?php echo $users->timeAgo($hotels['created_on_']); ?></span>
                        </span>
                        <span class="description"></span>
                    </div> <!-- user-block -->
                    
                        <ul class="timeline timeline-inverse"> 
                            <li class="time-label">
                                <?php if($hotels['discount'] != 0){ ?>
                                    <?php echo $food->foodPercentageDiscount($hotels['discount']); ?>
                                <?php }else { echo ''; ?>
                                    <!-- <span class="bg-info text-light" style="position: absolute;font-size: 11px; padding: 2px; margin-left: 10px;"> 0% </span>  -->
                                <?php } ?>
                            
                                <div class=" timeline-item card flex-md-row h-md-100  border-top-0 border-left-0 border-right-0 mb-3 borders-bottoms pb-2">
                                        <!-- <img class="card-img-left flex-auto d-none d-lg-block" height="120px" width="120px" src="< ?php echo BASE_URL_PUBLIC.'uploads/Rwandahotel/'.$hotels['photo_']; ?>" alt="Card image cap"> -->
                                    <div class='card-img-left flex-auto d-none d-lg-block' style="background: url('<?php echo BASE_URL_PUBLIC.'uploads/Rwandahotel/'.$hotels['photo_']; ?>')no-repeat center center;background-size:cover;height:120px;width:120px">
                                    <?php $banner = $hotels['banner'];
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
                                    <div class="row">
                                        <div class="col-md-6 pr-0">

                                        <h5 class="text-primary mb-0">
                                        <a class="text-primary" href="javascript:void(0)"  id="hotel-readmore" data-hotel="<?php echo $hotels['hotel_id']; ?>"><?php echo $hotels['title_']; ?></a>
                                        </h5>
                                        <div class="text-warning"><i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-half-o" aria-hidden="true"></i> <i class="fa fa-star-half-o" aria-hidden="true"></i></div>
                                        <div class="text-left text-muted mb-1"><i class="fa fa-map-marker" aria-hidden="true"></i> <?php echo $hotels['location_districts'].' districts/'.$hotels['location_Sector'].' sector'; ?></div>
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

                                <div class="col-md-3 p-0">
                                    <?php if($hotels['price_discount'] != 0){ ?><h5 class="mt-4 text-danger text-right mb-0" style="text-decoration: line-through;"> US<i class="fa fa-usd" aria-hidden="true"></i><?php echo number_format($hotels['price_discount']); ?></h5><?php } ?>
                                    <h5 class="mt-2 text-success text-right mb-0"> US<i class="fa fa-usd" aria-hidden="true"></i><?php echo number_format($hotels['price']); ?></h5>
                                    <div class="text-muted text-right mt-0">Per night</div> 
                                </div>
                                <div class="col-md-3 text-center pr-0">
                                    <h5 class="mt-4 text-muted "> Good <span class="badge badge-primary"><?php echo $hotels['ranges']; ?></span></h5>
                                </div>
                                <!-- <div class="col-md-2 pr-0">
                                <button type="button" name="" id="" class="btn btn-primary btn-md btn-block mt-4"><i class="fa fa-check text-white" aria-hidden="true"></i> Book Now</button>
                                </div> -->
                        </div><!-- row -->
                     </div><!-- card-body -->
                    </div><!-- card -->

                    </li>

                    <li>
                        <i class="fa fa-clock-o bg-info text-light"></i>
                    </li>
                  </ul>
                   
                </div><!-- shadow -->

                </div><!-- card-body -->
                <div class="card-footer"><!-- card-footer -->
                <button class="delete-it-hotel  btn btn-primary btn-md float-right ml-3" type="submit">Delete</button>
                <button class="cancel-it btn btn-info btn-md  float-right">Cancel</button>
                </div><!-- card-footer -->
            </div><!-- card end -->
       </div> <!-- rehotel-popup-body-wrap -->
     </div><!-- wrp5 -->
  </div><!-- rehotel-popup -->

<?php
}
?>