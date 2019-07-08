<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['helper_family']) && !empty($_POST['helper_family'])) {
    $user_id= $_SESSION['key'];
     ?>

<!-- <div class="helper-popup">
    <div class="wrap6">
        <span class="colose">
        	<button class="close-imagePopup"><i class="fa fa-times" aria-hidden="true"></i></button>
        </span>
        <div class="img-popup-wrap">
        	<div class="img-popup-body"> -->

            <div class="card ">
                <div class="card-header">
                  <h5><i> <i class="fa fa-check" aria-hidden="true"></i> i'm looking for a domestic helper</h5>
                </div> <!-- /.card-header -->

                <div class="card-body">
                    
                    <div class="form-group">
                      <label for="address" class="text-muted">Your current address</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="full_address" id="full_address" aria-describedby="helpId" placeholder="full address">
                            <div class="input-group-append">
                                <span class="input-group-text" id="basic-addon2"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                            </div>
                        </div>
                        <small id="helpId" class="form-text text-muted">We do not disclose your address to any third parties.</small>
                    </div>

                    <div class="text-center">
                        <input type="button" class="btn btn-primary btn-block" value="Next">
                    </div>
                </div><!-- /.card-body -->
            </div>

<!-- 
           </div>< !-- img-popup-body -- >
        </div>< !-- user-show-popup-box -- >
    </div> < !-- Wrp4 -- >
</div> < !-- apply-popup" -- > -->

<?php } 

if (isset($_POST['job_helper']) && !empty($_POST['job_helper'])) {
    $user_id= $_SESSION['key'];
     ?>

            <div class="card">
                <div class="card-header">
                  <h5><i> <i class="fa fa-check" aria-hidden="true"></i> i'm looking for a job </h5>
                </div> <!-- /.card-header -->

                <div class="card-body">
                    <p>Type</p>
                    <h5> <i class="fa fa-check" aria-hidden="true"></i> Domestic Helper</h5>
                    <div class="form-group">
                      <label for="address" class="text-muted">Your current address</label>
                        <div class="input-group">
                            <input type="text" class="form-control" name="full_address" id="full_address" aria-describedby="helpId" placeholder="full address">
                            <div class="input-group-append">
                                <span class="input-group-text" id="basic-addon2"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                            </div>
                        </div>
                        <small id="helpId" class="form-text text-muted">We do not disclose your address to any third parties.</small>
                    </div>
                    <div class="text-center">
                        <input type="button" class="btn btn-primary btn-block" value="Next">
                    </div>


                </div><!-- /.card-body -->
            </div>

<?php } 