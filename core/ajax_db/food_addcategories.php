<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['food_view']) && !empty($_POST['food_view'])) {
    $user_id= $_SESSION['key'];
     ?>

<div class="food-popup">
    <div class="wrap6">
        <span class="colose">
        	<button class="close-imagePopup"><i class="fa fa-times" aria-hidden="true"></i></button>
        </span>
        <div class="img-popup-wrap">
        	<div class="img-popup-body">

            <div class="card">
                <span id="responseSubmitfood"></span>
                <div class="card-header">
                    <h5 class="card-text">blog</h5>
                    <p class="card-text">Add food ? Please fill details below.</p>
                </div>
                <form method="post" id="form-food"  enctype="multipart/form-data" >
                <div class="card-body">
                      <input type="hidden" name="user_id" value="<?php echo $user_id ;?>">
                           <div>Choose your location and categories </div>
                    <div class="form-row">
                      <input type="hidden" name="user_id" value="<?php echo $user_id ;?>">
                      <div class="form-row mt-2">
                        <div class="col">
                          <input type="text" class="form-control" name="country" id="country" placeholder="Country">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="city" id="city" placeholder="City">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="province" id="province" placeholder="Province">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="districts" id="districts" placeholder="districts">
                        </div>
                      </div>
                      <div class="form-row mt-2">
                        <div class="col">
                          <input type="text" class="form-control" name="sector" id="sector" placeholder="sector">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="cell" id="cell" placeholder="cell">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="village" id="village" placeholder="village">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="authors"  id="authors" placeholder="authors">
                        </div>
                      </div>
                      <div class="form-row mt-2">
                        <div class="col">
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2">phone</span>
                            </div>
                            <input type="text" class="form-control" name="phone" id="phone" placeholder="phone number">
                          </div>
                        </div>

                        <div class="col">
                            <div class="form-group">
                              <select class="form-control" name="categories_food" id="categories_food">
                                <option value="">Select what types of categories</option>
                                <option value="food">food</option>
                                <option value="drink">drink</option>
                                <option value="fruits">fruits</option>
                                <option value="vegetables">vegetables</option>
                                <option value="macedone">macedone</option>
                              </select>
                            </div>
                        </div>

                        <div class="col">
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2">code</span>
                            </div>
                            <input type="text" class="form-control" name="code" id="code" placeholder="code of products Example nokia x94">
                          </div>
                        </div>

                        <div class="col">
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2">Frw</span>
                            </div>
                            <input type="text" class="form-control" name="price" id="price" placeholder="Price ">
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="form-row mt-2">

                        <div class="col">
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2">discount</span>
                            </div>
                            <input type="text" class="form-control" name="discount" id="discount" placeholder="discount of 10% 20% 40% ....">
                          </div>
                        </div>

                        <div class="col">
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2">Frw</span>
                            </div>
                            <input type="text" class="form-control" name="price_discount" id="price_discount" placeholder="discount price 40 00 FRW or 13 0303 ">
                          </div>
                        </div>
                      </div>
                    </div>

                      <div class="form-group mt-2">
                        <textarea class="form-control" name="additioninformation" id="addition-information" placeholder="tell us who are you and what help you need and Try to summarize People can understand what helps you need" rows="3"></textarea>
                      </div>

                      <div class="form-row mt-2">
                        <div class="col">
                          <div class="form-group">
                               <div class="btn btn-defaults btn-file" >
                                   <i class="fa fa-paperclip"></i> Attachment
                                   <input type="file"  onChange="displayImage0(this)" name="photo[]" id="photo" multiple>
                                </div>
                                <span>Upload one photo of proof</span><br>
                                <span class="progress progress-hidex mt-1">
                                        <span class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar"
                                            style="width:0%;" id="prox" aria-valuenow="" aria-valuemin="0"
                                            aria-valuemax="100"></span>
                                </span>
                               <small class="help-block">Max. 10MB</small>
                           </div> 
                        </div>

                        <div class="col">
                             <div class="form-group">
                               <div class="btn btn-defaults btn-file" >
                                   <i class="fa fa-paperclip"></i> Attachment
                                   <input type="file" onChange="displayImage(this)" name="otherphoto[]" id="other-photo"  multiple>
                               </div>
                               <span>Other photo</span>
                               <small class="help-block">(e.g show us many photo.) </small><br>
                                <span class="progress progress-hidec mt-1">
                                        <span class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar"
                                            style="width:0%;" id="proc" aria-valuenow="" aria-valuemin="0"
                                            aria-valuemax="100"></span>
                                </span>
                               <small class="help-block">Max. 10MB</small>
                           </div> 
                        </div>
                      </div>
                      <span onclick="fundAddmoreVideo()" id="add-more" class="btn btn-primary btn-md ">+ add more</span>

                    <div id="add-videohelp">
                    </div>
                    <div id="add-photo0" class="row">
                    </div>
                    <!-- collapse addmore-->

                 </div><!-- card-body end-->
                <div class="card-footer text-center">
                    <button type="button" id="submit-blog" class="btn btn-primary btn-lg btn-block text-center">Submit</button>
                </div><!-- card-footer -->
               </form>
            </div><!-- card end-->

          </div><!-- img-popup-body -->
        </div><!-- tweet-show-popup-box -->
    </div> <!-- Wrp4 -->
</div> <!-- apply-popup" -->
<!-- <script src="< ?php echo BASE_URL_LINK ;?>dist/js/jquery.min.js"></script> -->
<script type="text/javascript">
    $('.progress-hidex').hide();
    $('.progress-hidec').hide();
    $('.progress-hidez').hide();
    $('#add-videohelp').hide();
</script>
<?php } 

if (isset($_POST['user_id']) && !empty($_POST['user_id'])) {
    $user_id= $_POST['user_id'];
    $datetime= date('Y-m-d H-i-s');

    $photo= $_FILES['photo'];
    $other_photo= $_FILES['otherphoto'];

    if (!empty($_FILES['video']['name'][0])) {
      $video= $_FILES['video'];
      $video_ = $home->uploadfoodFile($video);
      $youtube=  $users->test_input($_POST['youtube']);
    }else{
      $video_= "";
      $youtube=  "";
    }

    $authors = $users->test_input($_POST['authors']);
    $additioninformation = $users->test_input($_POST['additioninformation']);
    $categories_food=  $users->test_input($_POST['categories_food']);
    $price = $users->test_input($_POST['price']);
    $phone = $users->test_input($_POST['phone']);
    $country = $users->test_input($_POST['country']);
    $city = $users->test_input($_POST['city']);
    $province = $users->test_input($_POST['province']);
    $districts = $users->test_input($_POST['districts']);
    $cell = $users->test_input($_POST['cell']);
    $sector = $users->test_input($_POST['sector']);
    $village = $users->test_input($_POST['village']);
    $code = $users->test_input($_POST['code']);
    $discount = $users->test_input($_POST['discount']);
    $price_discount = $users->test_input($_POST['price_discount']);
 
  if (!empty($_POST['photo-Titleo0'])) {
          $photo_Titleo=  $users->test_input($_POST['photo-Titleo0']);
  }else {
           $photo_Titleo='';
  }
  if (!empty($_POST['photo-Title0'])) {
          $photo_Title0=  $users->test_input($_POST['photo-Title0']);
  }else {
           $photo_Title0='';
  }
  if (!empty($_POST['photo-Title1'])) {
          $photo_Title1=  $users->test_input($_POST['photo-Title1']);
  }else {
           $photo_Title1='';
  }
  if (!empty($_POST['photo-Title2'])) {
          $photo_Title2=  $users->test_input($_POST['photo-Title2']);
  }else {
           $photo_Title2='';
  }
  if (!empty($_POST['photo-Title3'])) {
          $photo_Title3=  $users->test_input($_POST['photo-Title3']);
  }else {
           $photo_Title3='';
  }
  if (!empty($_POST['photo-Title4'])) {
         $photo_Title4=  $users->test_input($_POST['photo-Title4']);
  }else {
           $photo_Title4='';
  }
  if (!empty($_POST['photo-Title5'])) {
         $photo_Title5=  $users->test_input($_POST['photo-Title5']);
  }else {
           $photo_Title5='';
  }
	if (!empty($title) || !empty(array_filter($photo['name'])) || !empty(array_filter($other_photo['name'])) ) {
		if (!empty($photo['name'][0])) {
			# code...
			$photo_ = $home->uploadfoodFile($photo);
      $other_photo_ = $home->uploadfoodFile($other_photo);
		}

		if (strlen($additioninformation ) > 800) {
			exit('<div class="alert alert-danger alert-dismissible fade show text-center">
                    <button class="close" data-dismiss="alert" type="button">
                        <span>&times;</span>
                    </button>
                    <strong>The text is too long !!!</strong> </div>');
		}

	$users->Postsjobscreates('food',array( 
	'authors'=> $authors,
  'photo'=> $photo_, 
	'code'=> $code,
	'quantity'=> 1,
	'other_photo'=> $other_photo_, 
	'video'=> $video_, 
    'youtube'=> $youtube, 
    'price'=> $price,
	'phone'=> $phone,
    'country01'=> $country,
    'photo_Title_main'=> $photo_Titleo,
    'photo_Title'=> $photo_Title0.'='.$photo_Title1.'='.$photo_Title2.'='.$photo_Title3.'='.$photo_Title4.'='.$photo_Title5,
	'city'=> $city,
	'province'=> $province,
	'districts'=> $districts,
	'sector'=> $sector,
	'cell'=> $cell,
	'village'=> $village,
  'text'=> $additioninformation,
  'categories_food'=> $categories_food,
  'discount'=> $discount,
  'price_discount'=> $price_discount,
  'user_id3'=> $user_id,
  'created_on3'=> $datetime ));
    }
} ?> 