<div role="tabpanel">
  <div class="row">
    <div class="col-4 col-md-2 col-lg-2 py-3 px-2">
      <div class="list-group sticky-top" id="list-tab" role="tablist">
        <a class="list-group-item list-group-item-action active" id="list-home-list" data-toggle="tab" href="#list-Electronics" role="tab" aria-controls="list-Electronics">Electronics</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="tab" href="#list-Clothes" role="tab" aria-controls="list-Clothes">Clothes</a>
        <a class="list-group-item list-group-item-action" id="list-Sports-list" data-toggle="tab" href="#list-Sports" role="tab" aria-controls="list-messages">Sports</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="tab" href="#list-HealthBeauty" role="tab" aria-controls="list-HealthBeauty">Health & Beauty</a>
        <a class="list-group-item list-group-item-action" id="list-Sports-list" data-toggle="tab" href="#list-House" role="tab" aria-controls="list-messages">House</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="tab" href="#list-Motors" role="tab" aria-controls="list-profile">Motors</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="tab" href="#list-Cars" role="tab" aria-controls="list-Cars">cars</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="tab" href="#list-HomeGarden" role="tab" aria-controls="list-HomeGarden">Home & Garden</a>
        <button type="button" class="btn btn-light mt-2" id="add_sale" data-sale="<?php echo $_SESSION['key']; ?>" > + Add sale </button>
      </div>
    </div>

    <div class="col-8 col-md-10 col-lg-10 ">
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-Electronics" role="tabpanel" aria-labelledby="list-Electronics-list">
           <?php include "siderbar_sale/Electronics.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade" id="list-Clothes" role="tabpanel" aria-labelledby="list-Clothes-list">
                     <?php include "siderbar_sale/Clothes.php"?>
         </div> <!-- END-OF A LINK OF Comment ID=#  -->

         <div class="tab-pane fade" id="list-Sports" role="tabpanel" aria-labelledby="list-Sports-list">
            <?php include "siderbar_sale/Sports.php"?>
         </div> <!-- END-OF A LINK OF profile ID=#  -->

        <div class="tab-pane fade" id="list-HealthBeauty" role="tabpanel" aria-labelledby="list-HealthBeauty-list">
            <?php include "siderbar_sale/Health_Beauty.php"?>
        </div> <!-- END-OF A LINK OF add_post ID=#  -->

        <div class="tab-pane fade" id="list-House" role="tabpanel" aria-labelledby="list-House-list">
           <?php include "siderbar_sale/House.php"?>
        </div> 
        <!-- END-OF A LINK OF setting ID=#  -->
        
        <div class="tab-pane fade" id="list-Cars" role="tabpanel" aria-labelledby="list-Cars-list">
            <?php include "siderbar_sale/Cars.php"?>
        </div> <!-- END-OF A LINK OF logout ID=#  -->

        <div class="tab-pane fade" id="list-Motors" role="tabpanel" aria-labelledby="list-Motors-list">
           <?php include "siderbar_sale/Motors.php"?>
        </div> <!-- END-OF A LINK OF Comment ID=#  -->


        <div class="tab-pane fade" id="list-HomeGarden" role="tabpanel" aria-labelledby="list-HomeGarden-list">
           <?php include "siderbar_sale/Home_Garden.php"?>
        </div> <!-- END-OF A LINK OF Messages ID=#  -->

      </div>
      
    </div>
  </div>
</div>
<!-- Use any element to open the sidenav -->
<!-- <span>open</span> -->

<!-- Add all page content inside this div if you want the side nav to push page content to the right (not used if you only want the sidenav to sit on top of the page -->
<!-- <div id="main">
  ...
</div> -->