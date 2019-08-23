<?php
$user_id = $employers['user_id_'];
$employers_id = $employers['employers_id'];
$row= $domestics->employersFetchReadmore($user_id,$employers_id); 
?>

        <div class="container-fuild">
            <div class="row">
                <div class="col-12">
                    <div class="card card-widget widget-user" style="height:150px;">
                        <!-- Add the bg color to the header using any of the bg-* classes -->
                        <!-- < ?php if (!empty($profileData['cover_img'])) { ?>
                            <div class="widget-user-header text-white"
                                style="background: url('< ?php echo BASE_URL_LINK."image/users_profile_cover/".$profileData['cover_img'] ;?>')no-repeat center center;background-size:cover;">
                        < ?php }else{ ?> -->
                            <div class="widget-user-header text-white"
                                style="background: url('<?php echo BASE_URL_LINK.NO_COVER_IMAGE_URL ;?>')no-repeat center center;background-size:cover;">
                    <!-- < ?php  } ?> -->
                            <h3 class="widget-user-username"> looking for helper</h3> 
                            <div class="widget-user-desc"></div>
                            <h5 class="widget-user-desc mt-2"><span class="btn btn-success mr-3">FULL TIME</span><span><i class="fa fa-map-marker"> </i> <?php echo $row['namedistrict']; ?></span></h5>
                        </div>

                    </div>
                    <!-- /. card widget-user -->
                </div>
                <!-- column -->
            </div>
            <!-- row -->
        </div>
        <!-- container-fuild -->

        <div class="card">
            <div class="card-body">
         
            <div class="row mb-3" style="background:#fff">
                <div class="col-md-2 employers">

                    <div class="img-relative"  style="position:absolute; top:-80px;width: 120px;text-align: left;" >
                        <div class="profile-upload">
                            <!-- Hidden upload form -->
                            <iframe id="uploadTarget" name="uploadTarget" src="#" style="width:0;height:0;border:0px solid black;" __idm_frm__="50"></iframe>
                            <!-- Profile image -->
                            <div class="text-center img-placeholder" style="width: 120px; height: 100%;left: 32%;" >
                                <h4>Update image</h4>
                            </div>
                            <!-- Image update link -->
                            <a href="javascript:void(0);" style="top:0%;left:0%;" class="img-upload-iconLinks" id="photo_change_employers" data-employer="<?php echo $_SESSION['employers']; ?>" data-user="<?php echo $employers['user_id_']; ?>">
                            <i style="font-size: 30px;" class="fa fa-camera" aria-hidden="true"></i> </a>
                            <img class="rounded-circle shadow-lg" id="imagePreview" style="width: 120px; height: auto;" src="<?php echo BASE_URL_PUBLIC.'uploads/domesticsEmployers/'.$employers['photo_']; ?>">
                        </div>
                    </div>
                </div>
                <div class="col-md-1-3 border-left ml-2 mr-4 p-2 ">
                    <h4 class="mt-4">Family Type</h4>
                    <div></div>
                </div>
                <div class="col-md-1-3 border-left mr-4 p-2 ">
                    <h4 class="mt-4">Looking For</h4>
                    <div></div>
                     <div>Christian</div>
                </div>
                <div class="col-md-1-3 border-left mr-4 p-2 ">
                    <h4 class="mt-4">Speaking</h4>
                    <div>English</div>
                    <div>Kinyarwanda</div>
                </div>
                <div class="col-md-1-3 border-left mr-4 p-2 ">
                    <h4 class="mt-4">Location</h4>
                    <div> district</div>
                    <div> Sector</div>
                    <div> cell</div>
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
           <div class=" border-1 shadow-lg p-2">
             
                                 Keffiyeh blog actually fashion axe vegan, irony biodiesel. Cold-pressed hoodie chillwave
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

        </div>
</div>