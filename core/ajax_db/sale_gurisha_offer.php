<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['sale']) && !empty($_POST['sale'])) {
      if (isset($_SESSION['key'])) {
        # code...
        $user_id= $_SESSION['key'];
    }else {
        # code...
        $username= $users->test_input('jojo');
        $uprofileId= $home->usersNameId($username);
        $profileData= $home->userData($uprofileId['user_id']);
        $user_id= $profileData['user_id'];
    }
    
    $sale_id = $_POST['sale'];
    $user= $gurisha->gurishaReadmore($sale_id);
     ?>

<div class="gurisha-popup">
    <div class="wrap6">
        <span class="colose">
        	<button class="close-imagePopup"><i class="fa fa-times" aria-hidden="true"></i></button>
        </span>
        <div class="img-popup-wrap">
        	<div class="img-popup-body">

            <div class="card">
                <div class="card-body">
                 <div class="row reusercolor p-2">

                       <div class="col-md-6">
                         <h2 class='text-center'><?php echo $user['title']; ?></h2>
                            <div class="clearfix" style="max-width:474px;">
                                <ul id="image-gallery" class="gallery list-unstyled cS-hidden">
                                <?php 
                                        $file = $user['photo']."=".$user['other_photo'];
                                        $expode = explode("=",$file);
                                        // $splice = array_expode ($expode,0,10);
                                        for ($i=0; $i < count($expode); ++$i) { 
                                            ?>
                                            <li data-thumb="<?php echo BASE_URL_PUBLIC.'uploads/sale-gurisha/'.$expode [$i]; ?>" > 
                                               <img src="<?php echo BASE_URL_PUBLIC.'uploads/sale-gurisha/'.$expode [$i]; ?>" />
                                            </li>
                                      <?php } ?>
                                </ul>
                            </div>  
                       </div> <!-- col-md-6  -->
                       <div class="col-md-6">
                            <h4 class="mt-2"><i>Details of sale</i></h4>
                            <ul>
                                <li>200 m square feet Garden,</li>
                                <li>4 bedroom,</li>
                                <li>2 bathroom, </li>
                                <li>kitchen and cabinet,</li>
                                <li>car parking ,</li>
                                <li>dapibuseget quame</li>
                            </ul>    
                            <div> condition : Used  </div>
                           <p><?php echo $user['text']; ?></p>

                            <form action="" method="post" class="retweetcolor">
                            <table class="table table-striped table-hover table-inverse">
                                    <tbody>
                                        <tr>
                                            <td>stating bid: </td>
                                            <td><?php echo number_format($user['price']) ." Frw"; ?></td>
                                            <td class="text-primary">[ 0 bids]</td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>
                                                <div class="input-group">
                                                    <div class="input-group-prepend">
                                                        <span class="input-group-text" id="basic-addon2">Frw</span>
                                                    </div>
                                                    <input type="text" class="form-control" name="title" id="title" placeholder="458">
                                                </div>
                                            </td>
                                            <td><button type="button" class="btn btn-primary">Place bid</button></td>
                                        </tr>
                                        <tr>
                                            <td>Best Offer:</td>
                                            <td></td>
                                            <td><button type="button" onclick="cart_gurisha_add('add','<?php echo 'form-cartitem'.$user['code'].'add'; ?>','<?php echo $user['code']; ?>');" class="btn btn-primary">Make Offer</button></td>
                                        </tr>
                                    </tbody>
                            </table>
                            </form>
                       </div><!-- /.col -->
            <?php 
            $file = $user['photo']."=".$user['other_photo'];
            $expodefile = explode("=",$file); 
            $fileActualExt= array();
                for ($i=0; $i < count($expodefile); ++$i) { 
                    $fileActualExt[]= strtolower(substr($expodefile[$i],-3));
                }
                $allower_ext = array('jpeg', 'jpg', 'png', 'gif'); // valid extensions
                
             if (array_diff($fileActualExt,$allower_ext) == false) {

                        $file = $user['photo']."=".$user['other_photo'];
                        $expode = explode("=",$file);  
                        $count = count($expode); 
                        $rowCount = 0;

                switch ($count) {
                    case 1:
                            $numOfCols = 1; ?>
                            <div class="row">
                            <?php $expode = explode("=",$file);
                            // $splice= array_splice($expode,0,2);
                            $splice= $expode;
                            $title= $user['photo_Title_main']."=".$user["photo_Title"];
                            $photo_title=  explode("=",$title);
                            for ($i=0; $i < count($splice); ++$i) { 
                            ?>
                        <div class="col-md-<?php echo 12/$numOfCols; ?>">
                             <div class="imagesaleViewPopup more"  data-sale="<?php echo $user["sale_id"] ;?>">
                                <img src="<?php echo BASE_URL_PUBLIC."uploads/sale-gurisha/".$splice[$i] ;?>"
                                    alt="Photo" >
                                </div>
                            <div class="h5"><i><?php echo $photo_title[$i]; ?></i></div>
                        </div><!-- col -->
                    <?php
                        $rowCount++;
                        if($rowCount % $numOfCols == 0) echo '</div><div class="row">';
                    } ?>
                    </div> 
                    <?php 
                    break;
                default:
                        # code...
                            $numOfCols = 2; ?>
                            <div class="row">
                            <?php $expode = explode("=",$file);
                            // $splice= array_splice($expode,0,2);
                            $splice= $expode;
                            $title= $user['photo_Title_main']."=".$user["photo_Title"];
                            $photo_title=  explode("=",$title);
                            for ($i=0; $i < count($splice); ++$i) { 
                            ?>
                        <div class="col-md-<?php echo 12/$numOfCols; ?>">
                            <div class="imagesaleViewPopup more"  data-sale="<?php echo $user["sale_id"] ;?>">
                                <img src="<?php echo BASE_URL_PUBLIC."uploads/sale-gurisha/".$splice[$i] ;?>"
                                    alt="Photo" >
                                </div>
                            <div class="h5"><i><?php echo $photo_title[$i]; ?></i></div>
                        </div><!-- col -->
                    <?php
                        $rowCount++;
                        if($rowCount % $numOfCols == 0) echo '</div><div class="row">';
                    }
                    ?>
                    </div> <?php
                        break;
                    } } ?>

                </div><!-- card-body -->
                <div class="card-footer text-center">
                      <p class="mb-1"><?php echo $users->copyright(2018); ?></p>
                </div>
            </div>

           </div><!-- img-popup-body -->
        </div><!-- user-show-popup-box -->
    </div> <!-- Wrp4 -->
</div> <!-- apply-popup" -->

  <script>
    	 $(document).ready(function() {
			$("#content-slider").lightSlider({
                loop:true,
                keyPress:true
            });
            $('#image-gallery').lightSlider({
                gallery:true,
                item:1,
                thumbItem:9,
                slideMargin: 0,
                speed:500,
                auto:true,
                loop:true,
                onSliderLoad: function() {
                    $('#image-gallery').removeClass('cS-hidden');
                }  
            });
		});
    </script>
<?php } 