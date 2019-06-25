<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['events_view']) && !empty($_POST['events_view'])) {
    $user_id= $_SESSION['key'];
     ?>

<div class="events-popup">
    <div class="wrap6">
        <span class="colose">
        	<button class="close-imagePopup"><i class="fa fa-times" aria-hidden="true"></i></button>
        </span>
        <div class="img-popup-wrap">
        	<div class="img-popup-body">

            <div class="card">
                <span id="responseSubmitevents"></span>
                <div class="card-header">
                    <h5 class="card-text">Events</h5>
                    <p class="card-text">Add Events? Please fill details below.</p>
                </div>
                <form method="post" id="form-events"  enctype="multipart/form-data" >
                <div class="card-body">
                      <input type="hidden" name="user_id" value="<?php echo $user_id ;?>">
                      <div class="form-row">
                         <div class="col">
                           <input type="text" class="form-control" name="country" id="country" placeholder="which country events will take place ">
                         </div>

                         <div class="col">
                           <input type="text" class="form-control" name="location_events" id="location_events" placeholder="Where location of that events ">
                         </div>
                      </div>

                      <div class="form-row mt-2">
                         <div class="col">
                           <input type="text" class="form-control" name="name_place" id="name_place" placeholder="which name a place events will take place Example stadium, Hotel or Arena etc..... ">
                         </div>

                         <div class="col">
                           <input type="date" class="form-control" name="date0" id="date0" >
                         </div>

                         <div class="col">
                           <input type="text" class="form-control" name="start_events" id="start_events" placeholder="What times events will start 07h , 09h or 11h etc...">
                         </div>

                         <div class="col">
                            <div class="form-group">
                              <select class="form-control" name="categories_events" id="categories_events">
                                <option value="">Select what types of Events</option>
                                <option value="Party">Party</option>
                                <option value="Training">Training</option>
                                <option value="Anime-Series">Education</option>
                                <option value="Government">Government</option>
                                <option value="Memorial">Memorial</option>
                                <option value="Religion">Muslim</option>
                                <option value="Religion">christian</option>
                              </select>
                            </div>
                        </div>

                    </div>

                      <div class="form-group mt-2">
                        <textarea class="form-control" name="additioninformation" id="addition-information" placeholder="tell us a liltte bit events is all about and Try to summarize People can understand" rows="3"></textarea>
                      </div>

                      <div class="form-row mt-2">
                        <div class="col">
                          <div class="form-group">
                               <div class="btn btn-defaults btn-file" >
                                   <i class="fa fa-paperclip"></i> Attachment
                                   <input type="file" name="photo[]" id="photo" multiple>
                                </div>
                                <span>Upload Cover photo of movies</span><br>
                                <span class="progress progress-hidex mt-1">
                                        <span class="progress-bar progress-bar-striped progress-bar-animated bg-info" role="progressbar"
                                            style="width:0%;" id="prox" aria-valuenow="" aria-valuemin="0"
                                            aria-valuemax="100"></span>
                                </span>
                               <small class="help-block">Max. 10MB</small>
                           </div> 
                        </div>

                         <div class="col">
                            <span onclick="AddVideo()" id="add-more" class="btn btn-primary btn-md ">+ add video</span>
                             <div id="add-video">
                             </div>
                         </div>

                          <div class="col">
                            <span onclick="Addyoutube()" id="add-more1" class="btn btn-primary btn-md ">+ add youtube Link</span>
                             <div id="add-youtube">
                             </div>
                         </div>

                      </div>

                    <!-- collapse addmore-->

                 </div><!-- card-body end-->
                <div class="card-footer text-center">
                    <button type="button" id="submit-events" class="btn btn-primary btn-lg btn-block text-center">Submit</button>
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

    if (!empty($_FILES['video']['name'][0])) {
      $video= $_FILES['video'];
      $video_ = $home->uploadEventsFile($video);
    }else{
      $video_= "";
    }

    if (!empty($_POST['youtube'])) {
      $youtube=  $users->test_input($_POST['youtube']);
    }else{
      $youtube=  "";
    }

    $country = $users->test_input($_POST['country']);
    $additioninformation = $users->test_input($_POST['additioninformation']);
    $categories_events =  $users->test_input($_POST['categories_events']);
    $name_place =  $users->test_input($_POST['name_place']);
    $location_events =  $users->test_input($_POST['location_events']);
    $start_events =  $users->test_input($_POST['start_events']);
    $date0 =  $users->test_input($_POST['date0']);

	if (!empty($title_movies) || !empty(array_filter($photo['name'])) ) {
		if (!empty($photo['name'][0])) {
			# code...
			$photo_ = $home->uploadEventsFile($photo);
		}

		if (strlen($additioninformation ) > 800) {
			exit('<div class="alert alert-danger alert-dismissible fade show text-center">
                    <button class="close" data-dismiss="alert" type="button">
                        <span>&times;</span>
                    </button>
                    <strong>The text is too long !!!</strong> </div>');
		}

	$users->Postsjobscreates('events',array( 
	'country'=> $country,
	'name_place'=> $name_place,
	'location_events'=> $location_events,
	'start_events'=> $start_events,
	'date0'=> $date0,
	'additioninformation'=> $additioninformation, 
	'categories_events'=> $categories_events, 
	'photo'=> $photo_, 
	'video'=> $video_, 
	'youtube'=> $youtube, 
  'user_id3'=> $user_id,
  'created_on3'=> $datetime ));
    }
} ?> 