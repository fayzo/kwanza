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
    $user= $home->userData($user_id);
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
                   <form method="post" id="form-blog"  enctype="multipart/form-data" >

                      <input type="hidden" name="user_id" value="<?php echo $user_id ;?>">

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
                            <input type="text" class="form-control" name="firstname" id="firstname" placeholder="firstname">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >Lastname</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-user" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="lastname" id="lastname" placeholder="lastname">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >Date of birth</label>
                         <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="date-start" id="datestart" placeholder="date start">
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
                            <input type="number" class="form-control" name="number" id="number" placeholder="number">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >Email</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-email" aria-hidden="true"></i></span>
                            </div>
                            <input type="email" class="form-control" name="email" id="email" placeholder="email">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >Status</label>
                          <select class="form-control" name="status" id="status">
                            <option selected>Select</option>
                            <option value="single">single</option>
                            <option value="married">married</option>
                          </select>
                        </div>

                     </div>

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
                            <input type="text" class="form-control" name="education" id="education" placeholder="education">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date start</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="date-start" id="datestart" placeholder="date start">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date end</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="date-end" id="dateend" placeholder="date end">
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
                            <input type="text" class="form-control" name="education" id="education" placeholder="education">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date start</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="date-start" id="datestart" placeholder="date start">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date end</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="date-end" id="dateend" placeholder="date end">
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
                            <input type="text" class="form-control" name="education" id="education" placeholder="education">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date start</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="date-start" id="datestart" placeholder="date start">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >date end</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="date-end" id="dateend" placeholder="date end">
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
                            <input type="date" class="form-control" name="date-start" id="datestart" placeholder="date start">
                          </div>
                        </div>

                        <div class="col">
                        <label for="" >working</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-home" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="working" id="working" placeholder="working">
                          </div>
                        </div>

                        <div class="col">
                          <label for="" >duties</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-calendar" aria-hidden="true"></i></span>
                            </div>
                            <input type="date" class="form-control" name="duties" id="duties" placeholder="duties">
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
                            <input type="text" class="form-control" name="field" id="field" placeholder="field">
                          </div>
                        </div>
                        
                        <div class="col">
                        <label for="" >field</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-home" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="field" id="field" placeholder="field">
                          </div>
                        </div>

                        <div class="col">
                        <label for="" >field</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i style="font-size:20px;" class="fa fa-home" aria-hidden="true"></i></span>
                            </div>
                            <input type="text" class="form-control" name="field" id="field" placeholder="field">
                          </div>
                        </div>
                      
                        <div class="col">
                        <label for="" >are you emplyoment</label>
                           <select class="custom-select" name="employment" id="employment">
                             <option selected>Select one</option>
                             <option value="yes">Yes</option>
                             <option value="no">no</option>
                           </select>
                        </div> 

                      </div>

                      <div class="form-row mt-2">
                        <div class="col">
                        <label for="" >About you</label>
                          <textarea name="about1" id="about1" cols="30" rows="4"></textarea>                        </div>
                         </div>
                      </div>

                   <button type="button" class="btn btn-primary btn-block ">Submit</button>
                   <br>
                   </form>

                </div><!-- /.card-body -->

            </div><!-- /.card -->


           </div><!-- img-popup-body -->
        </div><!-- user-show-popup-box -->
    </div> <!-- Wrp4 -->
</div> <!-- apply-popup" -->

<?php } 