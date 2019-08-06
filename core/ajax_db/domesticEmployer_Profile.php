<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['employer_id']) && !empty($_POST['employer_id'])) {
      if (isset($_SESSION['key'])) {
        # code...
        $user_id= $_SESSION['key'];
    }
    $employer_id = $_POST['employer_id'];
    // $user= $domesticEmployerraising->domesticEmployerFecthReadmore($employer_id);
     ?>
<style>
.img-popup-body img {
    width: 80px;
    height: 80px;
}
.list-group-item {
    text-align: normal !important;
}
.list-group-items {
    position: relative;
    display: block;
    padding: .75rem 1.25rem;
    margin-bottom: -1px;
    background-color: #fff;
    border: 1px solid rgba(0,0,0,.125);
    background-color: white;
    text-align: normal;
}
.list-group-items.active {
    color: #ecf1ec !important;
    background-color: #165dc7 !important;
    border-color: #165dc7 !important;
}
</style>
<div class="employer-popup">
    <div class="wrap6">
        <span class="colose">
        	<button class="close-imagePopup"><i class="fa fa-times" aria-hidden="true"></i></button>
        </span>
        <div class="img-popup-wrap">
        	<div class="img-popup-body">

            <div class="container-fuild">
                <div class="row">
                    <div class="col-12">
                        <div class="card card-widget widget-user" style="height:150px;">
                            <!-- Add the bg color to the header using any of the bg-* classes -->
                            <?php if (!empty($profileData['cover_img'])) { ?>
                                <div class="widget-user-header text-white"
                                    style="background: url('<?php echo BASE_URL_LINK."image/users_profile_cover/".$profileData['cover_img'] ;?>')no-repeat center center;background-size:cover;">
                            <?php }else{ ?>
                                <div class="widget-user-header text-white"
                                    style="background: url('<?php echo BASE_URL_LINK.NO_COVER_IMAGE_URL ;?>')no-repeat center center;background-size:cover;">
                        <?php  } ?>
                                <h3 class="widget-user-username">Western family looking for helper</h3> 
                                <div class="widget-user-desc">British family</div>
                                <h5 class="widget-user-desc mt-2"><span class="btn btn-success mr-3">FULL TIME</span><span><i class="fa fa-map-marker"> Gasabo</i></span></h5>
                            </div>

                        </div>
                        <!-- /. card widget-user -->
                    </div>
                    <!-- column -->
                </div>
                <!-- row -->
            </div>
            <!-- container-fuild -->

            <div class="row mb-3" style="background:#fff">
                <div class="col-md-2 ">
                        <img style="position:absolute; top:-40px;width: 120px; height: auto;border: 3px solid #ffffff;"" class="rounded-circle" src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>" alt="User Avatar">
                </div>
                <div class="col-md-1-3 mr-3 p-2 ">
                    <h4 class="mt-4">Require skills</h4>
                    <div>Cooking</div>
                    <div>Housekeeping</div>
                    <div>Pet care</div>
                </div>
                <div class="col-md-1-3 border-left mr-4 p-2 ">
                    <h4 class="mt-4">Family Type</h4>
                    <div>Couple</div>
                </div>
                <div class="col-md-1-3 border-left mr-4 p-2 ">
                    <h4 class="mt-4">Looking For</h4>
                    <div>Domestics Helpers</div>
                     <div>Christian</div>
                </div>
                <div class="col-md-1-3 border-left mr-4 p-2 ">
                    <h4 class="mt-4">Speaking</h4>
                    <div>English</div>
                    <div>Kinyarwanda</div>
                </div>
                <div class="col-md-1-3 border-left mr-4 p-2 ">
                    <h4 class="mt-4">Location</h4>
                    <div>Gasabo</div>
                </div>
            </div>

            <section class="content-header container" style="background:#e8e1e1">
                <div class="row mb-2">
                    <div class="col-sm-12">
                        <div class="float-sm-right pt-3">
                            <ul class="list-inline ">
                                <li class="list-inline-item h4 btn btn-outline-primary"><i><i class="fa fa-arrow-circle-up" aria-hidden="true"></i> Request</i></li>
                                <li class="list-inline-item h4 btn btn-outline-success"><i>Apply For Job</i></li>
                            </ul>
                        </div>

                        <div class="text-center pt-3">
                            <ul class="list-inline">
                                <li class="list-inline-item h4 btn btn-outline-primary"><i> Child care</i></li>
                                <li class="list-inline-item h4 btn btn-outline-primary"><i> Cooking</i></li>
                                <li class="list-inline-item h4 btn btn-outline-primary"><i> Housekeeping</i></li>
                            </ul>
                        </div>

                    </div>
                </div>
            </section>

              <section class="container" >
             <h3>Overview</h3>
           <div class=" border-1 shadow-lg">
             
                             <p>Keffiyeh blog actually fashion axe vegan, irony biodiesel. Cold-pressed hoodie chillwave
                                 put a
                                 bird
                                 on it aesthetic, bitters brunch meggings vegan iPhone. Dreamcatcher vegan scenester
                                 mlkshk.
                                 Ethical
                                 master cleanse Bushwick, occupy Thundercats banjo cliche ennui farm-to-table mlkshk
                                 fanny pack
                                 gluten-free. Marfa butcher vegan quinoa, bicycle rights disrupt tofu scenester
                                 chillwave 3 wolf
                                 moon
                                 asymmetrical taxidermy pour-over. Quinoa tote bag fashion axe, Godard disrupt migas
                                 church-key
                                 tofu
                                 blog locavore. Thundercats cronut polaroid Neutra tousled, meh food truck selfies
                                 narwhal
                                 American
                                 Apparel.</p>
                </div>
            </section>

            
            <section class="container mb-4" >
             <h3> Experience Skills</h3>
                <div class="row">
                    <div class="col-md-3">
                        
                        <ul class="list-group border shadow-lg" style="height: 270px;">
                            <li class="list-group-items active">Salary & Accomodation<div><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></div></li>
                            <li class="list-group-item border-0"># <span style="font-weight: 700;">Monthly Salary </span> to be discussed</li>
                            <li class="list-group-item border-0"># Accomodation Private room</li>
                            <li class="list-group-item border-0"># <a style="font-weight: 700;">Day off</a> To be discussed</li>
                            <li class="list-group-item border-0"># Working Status any Sitution</li>
                        </ul>
                    </div><!-- col -->
                    <div class="col-md-3">
                        <ul class="list-group border shadow-lg" style="height: 270px;">
                            <li class="list-group-items active">Cooking Skills <div><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></div></li>
                            <li class="list-group-item border-0"># Afican food</li>
                            <li class="list-group-item border-0"># bread </li>
                            <li class="list-group-item border-0"># sambusa</li>
                        </ul>
                    </div><!-- col -->
                    <div class="col-md-3">
                        <ul class="list-group border shadow-lg" style="height: 270px;">
                            <li class="list-group-items active">Main Duties <div><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></div></li>
                            <li class="list-group-item  border-0"># Baby Care</li>
                            <li class="list-group-item  border-0"># Child Care</li>
                            <li class="list-group-item  border-0"># Groceries</li>
                            <li class="list-group-item  border-0"># Housekeeping</li>
                        </ul>
                    </div><!-- col -->
                    
                     <div class="col-md-3">
                        <ul class="list-group border shadow-lg" style="height: 270px;">
                            <li class="list-group-items active">Other required skills <div><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star text-light" aria-hidden="true"></i><i class="fa fa-star-half-o" aria-hidden="true"></i></div></li>
                            <li class="list-group-item border-0"># Car wash</li>
                            <li class="list-group-item border-0"># Housework</li>
                        </ul>
                    </div><!-- col -->
                </div>
            
            </section>

            <div style="height: 25px;background:white;"></div>

            <div class="container">
            <div class="card border-1  shadow-lg mb-3">
                <div class="card-header p-1">
                    <!-- < ?php echo $_SESSION['domesticsEmployers'];?> -->
                    <h5>Recent jobs for Domestics Helpers <button type="button" class="btn btn-primary">MORE JOB OFFERS VIEW MORE >>></button> </h5>
                </div>
                <div class="card-body">
                       <div class="row">
                        <div class="col-md-8">
                            <div class="card flex-md-row h-md-100 border-0 mb-3">
                                    <img class="card-img-left flex-auto d-none d-lg-block" height="40px" width="40px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/domesticsEmployers/images.jpg" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-start pt-0">
                                    <h5 class="text-primary mb-0">
                                    <a class="text-primary" href="javascript:void(0)"  id="districts-view">Musanze Family looking for Helper</a>
                                    </h5>
                                    <div class="text-muted">Created on 10 MAY </div>
                                    <div class="text-muted mb-1">Musanze District/ kanombe Sector/ Majyambere cell</div>
                                    <div>Know to take care children , knows to cook ,knows to watch car ,knows to take care older</div>
                                </div><!-- card-body -->
                            </div><!-- card -->
                        </div>
                        <div class="col-md-2">
                           <h5 class="mt-4 text-muted"><i class="fa fa-map-marker" aria-hidden="true"></i> Musanze</h5>
                        </div>
                        <div class="col-md-2">
                            <button type="button" name="" id="" class="btn btn-success btn-md btn-block mt-4"> FULL TIME</button>
                        </div>
                    </div>
                   
                <hr class="bg-info mt-0 mb-1" style="width:95%;">
                       <div class="row">
                        <div class="col-md-8">
                            <div class="card flex-md-row h-md-100 border-0 mb-3">
                                    <img class="card-img-left flex-auto d-none d-lg-block" height="40px" width="40px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/domesticsEmployers/images.jpg" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-start pt-0">
                                    <h5 class="text-primary mb-0">
                                    <a class="text-primary" href="javascript:void(0)"  id="districts-view">Musanze Family looking for Helper</a>
                                    </h5>
                                    <div class="text-muted">Created on 10 MAY </div>
                                    <div class="text-muted mb-1">Musanze District/ kanombe Sector/ Majyambere cell</div>
                                    <div>Know to take care children , knows to cook ,knows to watch car ,knows to take care older</div>
                                </div><!-- card-body -->
                            </div><!-- card -->
                        </div>
                        <div class="col-md-2">
                           <h5 class="mt-4 text-muted"><i class="fa fa-map-marker" aria-hidden="true"></i> Musanze</h5>
                        </div>
                        <div class="col-md-2">
                            <button type="button" name="" id="" class="btn btn-success btn-md btn-block mt-4"> FULL TIME</button>
                        </div>
                    </div>
                   
                <hr class="bg-info mt-0 mb-1" style="width:95%;">
                       <div class="row">
                        <div class="col-md-8">
                            <div class="card flex-md-row h-md-100 border-0 mb-3">
                                    <img class="card-img-left flex-auto d-none d-lg-block" height="40px" width="40px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/domesticsEmployers/images.jpg" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-start pt-0">
                                    <h5 class="text-primary mb-0">
                                    <a class="text-primary" href="javascript:void(0)"  id="districts-view">Musanze Family looking for Helper</a>
                                    </h5>
                                    <div class="text-muted">Created on 10 MAY </div>
                                    <div class="text-muted mb-1">Musanze District/ kanombe Sector/ Majyambere cell</div>
                                    <div>Know to take care children , knows to cook ,knows to watch car ,knows to take care older</div>
                                </div><!-- card-body -->
                            </div><!-- card -->
                        </div>
                        <div class="col-md-2">
                           <h5 class="mt-4 text-muted"><i class="fa fa-map-marker" aria-hidden="true"></i> Musanze</h5>
                        </div>
                        <div class="col-md-2">
                            <button type="button" name="" id="" class="btn btn-success btn-md btn-block mt-4"> FULL TIME</button>
                        </div>
                    </div>
                   
                <hr class="bg-info mt-0 mb-1" style="width:95%;">
                       <div class="row">
                        <div class="col-md-8">
                            <div class="card flex-md-row h-md-100 border-0 mb-3">
                                    <img class="card-img-left flex-auto d-none d-lg-block" height="40px" width="40px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/domesticsEmployers/images.jpg" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-start pt-0">
                                    <h5 class="text-primary mb-0">
                                    <a class="text-primary" href="javascript:void(0)"  id="districts-view">Musanze Family looking for Helper</a>
                                    </h5>
                                    <div class="text-muted">Created on 10 MAY </div>
                                    <div class="text-muted mb-1">Musanze District/ kanombe Sector/ Majyambere cell</div>
                                    <div>Know to take care children , knows to cook ,knows to watch car ,knows to take care older</div>
                                </div><!-- card-body -->
                            </div><!-- card -->
                        </div>
                        <div class="col-md-2">
                           <h5 class="mt-4 text-muted"><i class="fa fa-map-marker" aria-hidden="true"></i> Musanze</h5>
                        </div>
                        <div class="col-md-2">
                            <button type="button" name="" id="" class="btn btn-success btn-md btn-block mt-4"> FULL TIME</button>
                        </div>
                    </div>
                   
                <hr class="bg-info mt-0 mb-1" style="width:95%;">
                       <div class="row">
                        <div class="col-md-8">
                            <div class="card flex-md-row h-md-100 border-0 mb-3">
                                    <img class="card-img-left flex-auto d-none d-lg-block" height="40px" width="40px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/domesticsEmployers/images.jpg" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-start pt-0">
                                    <h5 class="text-primary mb-0">
                                    <a class="text-primary" href="javascript:void(0)"  id="districts-view">Musanze Family looking for Helper</a>
                                    </h5>
                                    <div class="text-muted">Created on 10 MAY </div>
                                    <div class="text-muted mb-1">Musanze District/ kanombe Sector/ Majyambere cell</div>
                                    <div>Know to take care children , knows to cook ,knows to watch car ,knows to take care older</div>
                                </div><!-- card-body -->
                            </div><!-- card -->
                        </div>
                        <div class="col-md-2">
                           <h5 class="mt-4 text-muted"><i class="fa fa-map-marker" aria-hidden="true"></i> Musanze</h5>
                        </div>
                        <div class="col-md-2">
                            <button type="button" name="" id="" class="btn btn-success btn-md btn-block mt-4"> FULL TIME</button>
                        </div>
                    </div>
                   
                <hr class="bg-info mt-0 mb-1" style="width:95%;">
                       <div class="row">
                        <div class="col-md-8">
                            <div class="card flex-md-row h-md-100 border-0 mb-3">
                                    <img class="card-img-left flex-auto d-none d-lg-block" height="40px" width="40px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/domesticsEmployers/images.jpg" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-start pt-0">
                                    <h5 class="text-primary mb-0">
                                    <a class="text-primary" href="javascript:void(0)"  id="districts-view">Musanze Family looking for Helper</a>
                                    </h5>
                                    <div class="text-muted">Created on 10 MAY </div>
                                    <div class="text-muted mb-1">Musanze District/ kanombe Sector/ Majyambere cell</div>
                                    <div>Know to take care children , knows to cook ,knows to watch car ,knows to take care older</div>
                                </div><!-- card-body -->
                            </div><!-- card -->
                        </div>
                        <div class="col-md-2">
                           <h5 class="mt-4 text-muted"><i class="fa fa-map-marker" aria-hidden="true"></i> Musanze</h5>
                        </div>
                        <div class="col-md-2">
                            <button type="button" name="" id="" class="btn btn-success btn-md btn-block mt-4"> FULL TIME</button>
                        </div>
                    </div>
                   
                <hr class="bg-info mt-0 mb-1" style="width:95%;">
                       <div class="row">
                        <div class="col-md-8">
                            <div class="card flex-md-row h-md-100 border-0 mb-3">
                                    <img class="card-img-left flex-auto d-none d-lg-block" height="40px" width="40px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/domesticsEmployers/images.jpg" alt="Card image cap">
                                <div class="card-body d-flex flex-column align-items-start pt-0">
                                    <h5 class="text-primary mb-0">
                                    <a class="text-primary" href="javascript:void(0)"  id="districts-view">Musanze Family looking for Helper</a>
                                    </h5>
                                    <div class="text-muted">Created on 10 MAY </div>
                                    <div class="text-muted mb-1">Musanze District/ kanombe Sector/ Majyambere cell</div>
                                    <div>Know to take care children , knows to cook ,knows to watch car ,knows to take care older</div>
                                </div><!-- card-body -->
                            </div><!-- card -->
                        </div>
                        <div class="col-md-2">
                           <h5 class="mt-4 text-muted"><i class="fa fa-map-marker" aria-hidden="true"></i> Musanze</h5>
                        </div>
                        <div class="col-md-2">
                            <button type="button" name="" id="" class="btn btn-success btn-md btn-block mt-4"> FULL TIME</button>
                        </div>
                    </div>
                   
                <hr class="bg-info mt-0 mb-1" style="width:95%;">
                </div><!-- card-body -->
            </div>
            </div>


            </div><!-- img-popup-body -->
        </div><!-- user-show-popup-box -->
    </div> <!-- Wrp4 -->
</div> <!-- apply-popup" -->

<?php } 