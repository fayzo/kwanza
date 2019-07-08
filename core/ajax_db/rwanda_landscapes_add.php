<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['landscapes_view']) && !empty($_POST['landscapes_view'])) {
    $user_id= $_SESSION['key'];
     ?>

<div class="landscapes-popup">
    <div class="wrap6">
        <span class="colose">
        	<button class="close-imagePopup"><i class="fa fa-times" aria-hidden="true"></i></button>
        </span>
        <div class="img-popup-wrap">
        	<div class="img-popup-body">

            <div class="card">
                <span id="responseSubmitlandscapes"></span>
                <div class="card-header">
                    <h5 class="card-text">Rwanda landscapes</h5>
                    <p class="card-text">Do you want to add rwanda landscapes ? Please fill details below.</p>
                </div>
                <form method="post" id="form-landscapes"  enctype="multipart/form-data" >
                <div class="card-body">
                    <div>Choose your location and categories </div>
                      <input type="hidden" name="user_id" value="<?php echo $user_id ;?>">
                      <div class="form-row mt-2">
                        <div class="col">
                          <input type="text" class="form-control" name="country" id="country" placeholder="Country">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="city" id="city" placeholder="City">
                        </div>
                      </div>
                      <div class="form-row mt-2">
                        <div class="col">
                          <input type="text" class="form-control" name="province" id="province" placeholder="Province">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="districts" id="districts" placeholder="districts">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="sector" id="sector" placeholder="sector">
                        </div>
                      </div>
                      <div class="form-row mt-2">
                        <div class="col">
                          <input type="text" class="form-control" name="cell" id="cell" placeholder="cell">
                        </div>
                        <div class="col">
                          <input type="text" class="form-control" name="village" id="village" placeholder="village">
                        </div>

                        <div class="col">
                            <div class="form-group">
                              <select class="form-control" name="categories_of_landscapes" id="categories_of_landscapes">
                                <option value="">Select what types of Rwanda landscapes</option>
                                <option value="Kigali-city">Kigali city</option>
                                <option value="Province">Province</option>
                                <option value="Landscapes">Landscapes</option>
                              </select>
                            </div>
                        </div>
                      </div>

                      <div class="form-group mt-2">
                        <textarea class="form-control" name="additioninformation" id="addition-information" placeholder="tell us is products in good shape is it original or not and add more details and Try to summarize People can understand what products you try to sale" rows="3"></textarea>
                      </div>

                      <div class="form-row mt-2">
                        
                        <div class="col">
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2">name</span>
                            </div>
                            <input type="text" class="form-control" name="title" id="title" placeholder="name of products Example Samsung v8">
                          </div>
                        </div>
                        
                        <div class="col">
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2">name</span>
                            </div>
                            <input type="text" class="form-control" name="author" id="author" placeholder="name of author">
                          </div>
                        </div>

                      
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
                              <select class="form-control" name="location_province" id="location_province">
                                <option value="">Select what Location of photos is taken</option>
                                <option value="Kigali-city">Kigali city</option>
                                <option value="Province">Province</option>
                              </select>
                            </div>
                        </div>

                      </div>

                      <div class="form-row mt-2">
                       <div class="col">
                            <div class="form-group">
                              <select class="form-control" name="location_districts" id="location_districts">
                                <option value="">Select what Location of districts is taken</option>
                                <option value="Gasabo">Gasabo</option>
                                <option value="Nyarugenge">Nyarugenge</option>
                                <option value="Kicukiro">Kicukiro</option>
                                <option value="Rubavu">Rubavu</option>
                                <option value="Nyabihu">Nyabihu</option>
                                <option value="Musanze">Musanze</option>
                                <option value="Burera">Burera</option>
                                <option value="Gicumbi">Gicumbi</option>
                                <option value="Nyagatare">Nyagatare</option>
                              </select>
                            </div>
                        </div>

                       <div class="col">
                            <div class="form-group">
                              <select class="form-control" name="location_Sector" id="location_Sector">
                                <option value="">Select what Location of Sector is taken</option>
                                <option value="kimihurura">kimihurura</option>
                                <option value="kimihurura1">kimihurura1</option>
                                <option value="Kicukiro">Kicukiro</option>
                                <option value="Kicukiro">Kicukiro</option>
                                <option value="MUhima">MUhima</option>
                                <option value="kabeza">kabeza</option>
                                <option value="Remera">Remera</option>
                                <option value="kiyovu">kiyovu</option>
                                <option value="Nyamirambo">Nyamirambo</option>
                              </select>
                            </div>
                        </div>

                       <div class="col">
                            <div class="form-group">
                              <select class="form-control" name="location_cell" id="location_cell">
                                <option value="">Select what Location of cell is taken</option>
                                <option value="Rugando">Rugando</option>
                                <option value="kimihurura1">kimihurura1</option>
                                <option value="Kicukiro">Kicukiro</option>
                                <option value="muhobe">muhobe</option>
                                <option value="Rutsiro">Rutsiro</option>
                                <option value="rutondo">rutondo</option>
                              </select>
                            </div>
                        </div>
                      </div>

                       <div class="col">
                            <div class="form-group">
                              <select class="form-control" name="location_village" id="location_village">
                                <option value="">Select what Location of village is taken</option>
                                <option value="gasange">gasange</option>
                                <option value="amajyambere">amajyambere</option>
                                <option value="henza">henza</option>
                                <option value="Kicukiro">Kicukiro</option>
                                <option value="kamuhima">kamuhima</option>
                                <option value="rugombe">rugombe</option>
                                <option value="mujabana">mujabana</option>
                              </select>
                            </div>
                        </div>
                      </div>

                      <div class="form-row mt-2">
                        <div class="col">
                          <div class="form-group">
                               <div class="btn btn-defaults btn-file" >
                                   <i class="fa fa-paperclip"></i> Attachment
                                   <input type="file" name="photo[]" id="photo" multiple>
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
                                   <input type="file" name="otherphoto[]" id="other-photo"  multiple>
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
                    <!-- collapse addmore-->

                 </div><!-- card-body end-->
                <div class="card-footer text-center">
                    <button type="button" id="submit-sale" class="btn btn-primary btn-lg btn-block text-center">Submit</button>
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
      $video_ = $home->uploadRwandaLandscapesFile($video);
      $youtube=  $users->test_input($_POST['youtube']);
    }else{
      $video_= "";
      $youtube=  "";
    }

    $title = $users->test_input($_POST['title']);
    $author = $users->test_input($_POST['author']);
    $phone = $users->test_input($_POST['phone']);
    $country = $users->test_input($_POST['country']);
    $city = $users->test_input($_POST['city']);
    $province = $users->test_input($_POST['province']);
    $districts = $users->test_input($_POST['districts']);
    $cell = $users->test_input($_POST['cell']);
    $sector = $users->test_input($_POST['sector']);
    $village = $users->test_input($_POST['village']);
    $additioninformation = $users->test_input($_POST['additioninformation']);
    $categories_of_landscapes=  $users->test_input($_POST['categories_of_landscapes']);
    $location_province=  $users->test_input($_POST['location_province']);
    $location_districts=  $users->test_input($_POST['location_districts']);
    $location_Sector=  $users->test_input($_POST['location_Sector']);
    $location_cell=  $users->test_input($_POST['location_cell']);
    $location_village=  $users->test_input($_POST['location_village']);


	if (!empty($phone) || !empty(array_filter($photo['name'])) || !empty(array_filter($other_photo['name'])) ) {
		if (!empty($photo['name'][0])) {
			# code...
			$photo_ = $home->uploadRwandaLandscapesFile($photo);
            $other_photo_ = $home->uploadRwandaLandscapesFile($other_photo);
		}

		if (strlen($additioninformation ) > 400) {
			exit('<div class="alert alert-danger alert-dismissible fade show text-center">
                    <button class="close" data-dismiss="alert" type="button">
                        <span>&times;</span>
                    </button>
                    <strong>The text is too long !!!</strong> </div>');
		}

	$users->Postsjobscreates('rwandalandscapes',array( 
	'title_'=> $title,
	'author_'=> $author,
	'phone_'=> $phone,
	'country_'=> $country,
	'city_'=> $city,
	'province_'=> $province,
	'districts_'=> $districts,
	'sector_'=> $sector,
	'cell_'=> $cell,
	'village_'=> $village,
	'photo_'=> $photo_,
	'other_photo_'=> $other_photo_, 
	'video_'=> $video_, 
	'youtube_'=> $youtube, 
    'text_'=> $additioninformation,
    'categories_of_landscapes'=> $categories_of_landscapes,
    'location_province'=> $location_province,
    'location_districts'=> $location_districts,
    'location_Sector'=> $location_Sector,
    'location_cell'=> $location_cell,
    'location_village'=> $location_village,
    'user_id_'=> $user_id,
    'created_on_'=> $datetime ));

    }
} ?> 