   <header class="blog-header mt-3 py-2 bg-light">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4">
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Domestics jobs</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
            <a href="<?php echo LOGOUT;?>" class="btn btn-danger btn-sm float-right">Sign out</a>
          </div>
        </div>
      </header>

<div class="container-fluid  mt-3 mb-5">

    <div class="row">

        <div class="col-3">
        <div class="card" style="background:none;">
            <div class="card-header text-center py-2 main-active">
                <h5>Employers Profile</h5>
            </div>
            <div class="card-body employers">

                <div class="img-relative">
                    <div class="profile-upload">
                        <!-- Hidden upload form -->
                        <iframe id="uploadTarget" name="uploadTarget" src="#" style="width:0;height:0;border:0px solid black;" __idm_frm__="12"></iframe>
                        <!-- Profile image -->
                        <div class="text-center img-placeholder">
                            <h4>Update image</h4>
                        </div>
                        <!-- Image update link -->
                        <a href="javascript:void(0);" class="img-upload-iconLinks" id="photo_change_employers" data-domestics="<?php echo $_SESSION['domestics']; ?>" data-user="<?php echo $employers['user_id_']; ?>">
                            <i class="fa fa-camera" aria-hidden="true"></i> </a>
                            <img class="rounded-circle" id="imagePreview" src="<?php echo BASE_URL_PUBLIC.'uploads/domesticsEmployers/'.$employers['photo_']; ?>">
                    </div>
                </div>

            </div><!-- card-body -->
        </div>
                 <div class="list-group sticky-top mb-3" id="list-tab" role="tablist">
                    <a class="list-group-item list-group-item-action active" id="list-Business-list" href="#list-home" data-toggle="tab" role="tab" aria-controls="list-Community" >Home</a>
                    <a class="list-group-item list-group-item-action" id="list-Community-list" href="#list-profile" data-toggle="tab"  role="tab" aria-controls="list-Community" >profile</a>
                    <a class="list-group-item list-group-item-action" id="list-Community-list" href="#list-inbox" data-toggle="tab"  role="tab"  aria-controls="list-Community">Inbox  <span class="float-right badge badge-primary">35</a>
                    <a class="list-group-item list-group-item-action" id="add_employers_profile" href="javascript:void();" data-toggle="tab"  role="tab" aria-controls="list-Community">Request domestics</a>
                </div>
        </div>
        <div class="col-6 ">
            <div class="card">
                <div class="card-header p-1">
                    <!-- < ?php echo $_SESSION['domestics'];?> -->
                    <form class="form-inline float-right">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon2"><i class="fa fa-search" aria-hidden="true"></i> </span>
                            </div>
                            <input type="text" class="form-control search" name="search" id="search" aria-describedby="helpId"
                                placeholder="Find A Location">
                            </div>
                            <div class="search-result">			
                            </div>
                    </form>
                    <h5>Recent jobs for Domestics Helpers </h5>
                </div>
                <div class="card-body">
                            <div class="card flex-md-row h-md-100 border-0 mb-3">
                                    <img class="card-img-left flex-auto d-none d-lg-block" height="80px" width="80px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/domestics/images.jpg" alt="Card image cap">
                                <div class="card-body pt-0">
                                    <a class="text-primary h5" href="javascript:void(0)" id="employers-view" data-domestics="1">Musanze Family looking for Helper</a>
                                    <div class="text-muted float-right"><i class="fa fa-map-marker" aria-hidden="true"></i> Musanze  <span class="text-success ml-2"> FULL TIME</span></div>
                                    <div class="text-muted">Created on 10 MAY </div>
                                    <div class="text-muted mb-1" style="font-size:12px;">Musanze District/ kanombe Sector/ Majyambere cell</div>
                                    <div>Know to take care children , knows to cook ,knows to watch car ,knows to take care older</div>
                                </div><!-- card-body -->
                            </div><!-- card -->
                         <hr class="bg-info mt-0 mb-1" style="width:95%;">
                </div><!-- card-body -->
            </div><!-- card -->
        </div><!-- col -->

    </div>
</div>