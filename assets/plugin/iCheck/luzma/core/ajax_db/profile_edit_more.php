<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['key']) && !empty($_POST['key'])) {
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
    $user_id = $_POST['user_id'];
    // $user= $home->userData($user_id);

    $query= $db->query("SELECT * FROM users D 
        Left JOIN provinces P ON D. province = P. provincecode
        Left JOIN districts M ON D. districts = M. districtcode
        Left JOIN sectors T ON D. sector = T. sectorcode
        Left JOIN cells C ON D. cell = C. codecell
        Left JOIN vilages V ON D. village = V. CodeVillage 
    WHERE D. user_id = $user_id ");

    $user= $query->fetch_array();

    $get_province = mysqli_query($db,"SELECT * FROM provinces");   
     ?>
<style>
.img-popup-bodys {
    border-radius: 4px;
    overflow: hidden;
}
</style>

<div class="profile-popup">
    <div class="wrap6">
        <span class="colose">
        	<button class="close-imagePopup"><i class="fa fa-times" aria-hidden="true"></i></button>
        </span>
        <div class="img-popup-wrap">
        	<div class="img-popup-bodys">

            <div class="card">
                <div class="card-header">
                   <div class="user-block">
                        <div class="user-blockImgBorder">
                         <div class="user-blockImg">
                               <?php if (!empty($user['profile_img'])) {?>
                               <img src="<?php echo BASE_URL_LINK ;?>image/users_profile_cover/<?php echo $user['profile_img'] ;?>" alt="User Image">
                               <?php  }else{ ?>
                                 <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>" alt="User Image">
                               <?php } ?>
                         </div>
                         </div>
                         <span class="username">
                             <a
                                 href="<?php echo BASE_URL_PUBLIC.$user['username'] ;?>"><?php echo $user['firstname']." ".$user['lastname'] ;?></a>
                             <!-- //Jonathan Burke Jr. -->
                         </span>
                         <span class="description">Last Edit - <?php echo $users->timeAgo($user['last_profile_edit']) ;?></span>
                     </div> <!-- /.user-block -->
                </div> <!-- /.card-header -->

                <div class="card-body">
                <span id="respone-profile"></span>
                   <form method="post" id="form-Profile-edit"  enctype="multipart/form-data" >

                      <input type="hidden" name="user_id" id="user_id" value="<?php echo $user_id ;?>">

                      <div class="form-row mt-2">
                        <div class="col" style="background: #00000047;">
                             <label for="">Person information</label>
                        </div>
                      </div>
                      
                      <div class="form-row">
                        <div class="col">
                          <label for="" >Firstname</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-user" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="firstnameProfile" id="firstnameProfile" value="<?php echo $user['firstname']; ?>" placeholder="firstname">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >Lastname</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-user" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="lastnameProfile" id="lastnameProfile" value="<?php echo $user['lastname']; ?>" placeholder="lastname">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >Date of birth</label>
                         <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="datestart" id="datestart"  value="<?php echo $user['date_birth']; ?>" placeholder="date start">
                          </div>
                        </div>

                     </div>
                      
                      <div class="form-row">
                        <div class="col">
                          <label for="" >Telephone</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-phone" aria-hidden="true"></i></span>
                            </div>
                            <input type="number" class="form-control" name="telephoneProfile" value="<?php echo $user['phone']; ?>" id="telephoneProfile" placeholder="number">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >Email</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-email" aria-hidden="true"></i></span>
                            </div>
                            <input type="email" class="form-control" name="emailProfile" id="emailProfile" value="<?php echo $user['email']; ?>" placeholder="email">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >Status</label>
                          <select class="form-control" name="statusProfile" id="statusProfile">
                            <?php if(!empty($user['status'])) { ?>
                            <option value="<?php echo $user['status']; ?>" selected><?php echo $user['status']; ?></option>
                            <?php } ?>
                            <option>Select</option>
                            <option value="single">single</option>
                            <option value="married">married</option>
                          </select>
                        </div>

                     </div>

                      <label for="" >About me</label>
                      <textarea name="aboutProfile" value="<?php echo $user['about']; ?>"  id="aboutProfile" cols="30" rows="4"><?php echo $user['about']; ?></textarea>      

                      <div class="form-row mt-2">
                        <div class="col" style="background: #00000047;">
                             <label for="">Address</label>
                        </div>
                      </div>


                     <div class="form-row mt-2">
                        <div class="col">
                                <label for="">Province</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-map-marker mr-1" aria-hidden="true"></i></span>
                                    </div>
                                    <select name="provincecode"  id="provincecode" onchange="showResult();" class="form-control provincecode">
                                        <?php if(!empty($user['province'])) { ?>
                                        <option value="<?php echo $user['province']; ?>" selected><?php echo $user['provincename']; ?></option>
                                        <?php } ?>
                                        <option value="">----Select province----</option>
                                        <?php while($show_province = mysqli_fetch_array($get_province)) { ?>
                                        <option value="<?php echo $show_province['provincecode'] ?>"><?php echo $show_province['provincename'] ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <label for=""> District</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-map-marker mr-1" aria-hidden="true"></i></span>
                                    </div>
                                    <select class="form-control districtcode" name="districtcode" id="districtcode" onchange="showResult2();" >
                                        <?php if(!empty($user['districts'])) { ?>
                                        <option value="<?php echo $user['districts']; ?>" selected><?php echo $user['namedistrict']; ?></option>
                                        <?php } ?>
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <label for="Sector" >Sector</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-map-marker mr-1" aria-hidden="true"></i></span>
                                    </div>
                                    <select class="form-control sectorcode" name="sectorcode" id="sectorcode"  onchange="showResult3();">
                                        <?php if(!empty($user['sector'])) { ?>
                                        <option value="<?php echo $user['sector']; ?>" selected><?php echo $user['namesector']; ?></option>
                                        <?php } ?>
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <label for="Cell" >Cell</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-map-marker mr-1" aria-hidden="true"></i></span>
                                    </div>
                                    <select name="codecell" id="codecell" class="form-control codecell" onchange="showResult4();">
                                        <?php if(!empty($user['cell'])) { ?>
                                        <option value="<?php echo $user['cell']; ?>" selected><?php echo $user['nameCell']; ?></option>
                                        <?php } ?>
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                      
                             <div class="col">
                                <label for="Village">Village</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-map-marker mr-1" aria-hidden="true"></i></span>
                                    </div>
                                      <select name="CodeVillage" id="CodeVillage" class="form-control CodeVillage">
                                       <?php if(!empty($user['village'])) { ?>
                                        <option value="<?php echo $user['village']; ?>" selected><?php echo $user['VillageName']; ?></option>
                                        <?php } ?>
                                          <option> </option>
                                      </select>
                                </div>
                            </div>
                      </div>
                      
                      <div class="form-row mt-2">
                        <div class="col" style="background: #00000047;">
                             <label for="">Education</label>
                        </div>
                      </div>

                      <div class="form-row mt-2">
                        <div class="col">
                        <label for="" >Primary Education</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-home" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="educationProfile" value="<?php echo $user['primary_education']; ?>" id="educationProfile" placeholder="education">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date start</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="datestartEduc" id="datestartEduc" value="<?php echo $user['primary_date_start']; ?>"  placeholder="date start">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date end</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="dateendEduc" id="dateendEduc" value="<?php echo $user['primary_date_end']; ?>" placeholder="date end">
                          </div>
                        </div>
                        
                      </div>

                      <div class="form-row mt-2">
                        <div class="col">
                        <label for="" >Secondary Education</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-building" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="education2" id="education2" value="<?php echo $user['secondary_education']; ?>" placeholder="education">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date start</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="datestart2" id="datestart2" value="<?php echo $user['secondary_date_start']; ?>" placeholder="date start">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date end</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="dateend02" id="dateend02"  value="<?php echo $user['secondary_date_end']; ?>" placeholder="date end">
                          </div>
                        </div>

                      </div>

                      <div class="form-row mt-2">
                        <div class="col">
                        <label for="" >University Education</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-university" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="education3" id="education3"  value="<?php echo $user['university_education']; ?>"  placeholder="education">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date start</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="datestart3" id="datestart3"  value="<?php echo $user['university_date_start']; ?>"  placeholder="date start">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date end</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="dateend03" id="dateend03"  value="<?php echo $user['university_date_end']; ?>"  placeholder="date end">
                          </div>
                        </div>

                      </div>


                      <div class="form-row mt-2">
                        <div class="col" style="background: #00000047;">
                             <label for="">Working Experience</label>
                        </div>
                      </div>

                      <div class="form-row mt-2">

                        <div class="col">
                          <label for="" >date start</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="datestartExp" id="datestartExp"  value="<?php echo $user['experience_date_start']; ?>" placeholder="date start">
                          </div>
                        </div>

                        <div class="col">
                        <label for="" >working</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-home" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="working" id="working"  value="<?php echo $user['experience_working']; ?>" placeholder="working">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >duties</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="duties" id="duties"  value="<?php echo $user['experience_duties']; ?>" placeholder="duties">
                          </div>
                        </div>
                        
                      </div>

                      <div class="form-row mt-2">
                        <div class="col" style="background: #00000047;">
                             <label for="">Experience Skills</label>
                        </div>
                      </div>

                      <div class="form-row mt-2">

                        <div class="col">
                        <label for="" >field</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-home" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="field" value="<?php echo $user['experience_field']; ?>" id="field" placeholder="field">
                          </div>
                        </div>
                        
                        <div class="col">
                        <label for="" >field</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-home" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="field1" id="field1"  value="<?php echo $user['experience_field1']; ?>" placeholder="field">
                          </div>
                        </div>

                        <div class="col">
                        <label for="" >field</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-home" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="field2" id="field2"  value="<?php echo $user['experience_field2']; ?>" placeholder="field">
                          </div>
                        </div>
                      
                        <div class="col">
                          <label for="" >are you emplyoment</label>
                           <select class="custom-select" name="employment" id="employment">
                            <?php if(!empty($user['unemployment'])) { ?>
                            <option value="<?php echo $user['unemployment']; ?>" selected><?php echo $user['unemployment']; ?></option>
                            <?php } ?>

                             <option>Select one</option>
                             <option value="yes">Yes</option>
                             <option value="no">no</option>
                           </select>
                        </div> 

                      </div>


                   <br>
                   <button type="button" onclick="profile_edit_more('profile');" class="btn btn-primary btn-block ">Submit</button>
                   <br>
                   </form>

                </div><!-- /.card-body -->
              </div><!-- /.card -->

           </div><!-- img-popup-body -->
        </div><!-- user-show-popup-box -->
    </div> <!-- Wrp4 -->
</div> <!-- apply-popup" -->

<?php } 

if (isset($_POST['profile_edit']) && !empty($_POST['profile_edit'])) {

  $user_id= $_POST['user_id'];
  $datetime= date('Y-m-d H-i-s');

  $firstname= $users->test_input($_POST['firstname']);
  $lastname= $users->test_input($_POST['lastname']);
  $birth= $users->test_input($_POST['birth']);
  $telephone= $users->test_input($_POST['telephone']);
  $email= $users->test_input($_POST['email']);
  $status= $users->test_input($_POST['status']);
  $about= $users->test_input($_POST['about']);
  $province= $users->test_input($_POST['province']);
  $districts= $users->test_input($_POST['districts']);
  $sector= $users->test_input($_POST['sector']);
  $cell= $users->test_input($_POST['cell']);
  $village= $users->test_input($_POST['village']);
  $education= $users->test_input($_POST['education']);
  $datestartEduc= $users->test_input($_POST['datestartEduc']);
  $dateendEduc= $users->test_input($_POST['dateendEduc']);
  $education2= $users->test_input($_POST['education2']);
  $datestart2= $users->test_input($_POST['datestart2']);
  $dateend02= $users->test_input($_POST['dateend02']);
  $education3= $users->test_input($_POST['education3']);
  $datestart3= $users->test_input($_POST['datestart3']);
  $dateend03= $users->test_input($_POST['dateend03']);
  $datestartExp= $users->test_input($_POST['datestartExp']);
  $working= $users->test_input($_POST['working']);
  $duties= $users->test_input($_POST['duties']);
  $field= $users->test_input($_POST['field']);
  $field1= $users->test_input($_POST['field1']);
  $field2= $users->test_input($_POST['field2']);
  $employment= $users->test_input($_POST['employment']);
   

	if (!empty($employment)) {
		

		if (strlen($about) > 400) {
			exit('<div class="alert alert-danger alert-dismissible fade show text-center">
                    <button class="close" data-dismiss="alert" type="button">
                        <span>&times;</span>
                    </button>
                    <strong>The text is too long !!!</strong> </div>');
		}

	$users->updateReal('users',array( 
  'firstname' => $firstname,
  'lastname' => $lastname,
  'date_birth' => $birth,
  'phone' => $telephone,
  'email' => $email,
  'status' => $status,
  'about' => $about,
  'province' => $province,
  'districts' => $districts,
  'sector' => $sector,
  'cell' => $cell,
  'village' => $village,
  'primary_education' => $education,
  'primary_date_start' => $datestartEduc,
  'primary_date_end' => $dateendEduc,
  'secondary_education' => $education2,
  'secondary_date_start' => $datestart2,
  'secondary_date_end' => $dateend02,
  'university_education' => $education3,
  'university_date_start' => $datestart3,
  'university_date_end' => $dateend03,
  'experience_date_start' => $datestartExp,
  'experience_working' => $working,
  'experience_duties' => $duties,
  'experience_field' => $field,
  'experience_field1' => $field1,
  'experience_field2' => $field2,
  'unemployment' => $employment), 
  array('user_id' => $user_id));

    }
} ?> 