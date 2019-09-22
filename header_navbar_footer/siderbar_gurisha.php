        <header class="blog-header  mt-3 py-2 bg-light">
          <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-12 text-center">
           <?php echo $home->links(); ?>
          </div>
        </div>
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4">
          <?php if (isset($_SESSION['key'])) { ?>
            <button type="button" class="btn btn-light" id="add_gurisha" data-gurisha="<?php echo $_SESSION['key']; ?>" > + Add gurisha </button>
           <?php } ?>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Gurisha || Gura</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
           
          </div>
        </div>
      </header>

<div class="container-fluid mb-5">

    <div class="row mt-3">
      <div class="col-4 col-md-2 col-lg-2 ">
          <div class="list-group sticky-top" id="list-tab" role="tablist">
            <a class="list-group-item list-group-item-action active" id="list-Business-list" onclick="cart_gurisha_ItemsCategories('electronics',1,<?php echo $user_id; ?>);" data-toggle="tab" role="tab" aria-controls="list-Community" >Electronics <span class="float-right badge badge-primary"><?php echo $gurisha->cart_gurisha_countPOSTS('electronics');?></span></a>
            <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="cart_gurisha_ItemsCategories('clothes',1,<?php echo $user_id; ?>);" data-toggle="tab"  role="tab" aria-controls="list-Community" >Clothes  <span class="float-right badge badge-primary"><?php echo $gurisha->cart_gurisha_countPOSTS('clothes');?></span></a>
            <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="cart_gurisha_ItemsCategories('sports',1,<?php echo $user_id; ?>);" data-toggle="tab"  role="tab"  aria-controls="list-Community">Sports  <span class="float-right badge badge-primary"><?php echo $gurisha->cart_gurisha_countPOSTS('sports');?></span></a>
            <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="cart_gurisha_ItemsCategories('health_beauty',1,<?php echo $user_id; ?>);" data-toggle="tab"  role="tab" aria-controls="list-Community">Health  <span class="float-right badge badge-primary"><?php echo $gurisha->cart_gurisha_countPOSTS('health_beauty');?></span></a>
            <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="cart_gurisha_ItemsCategories('home_garden',1,<?php echo $user_id; ?>);" data-toggle="tab"  role="tab" aria-controls="list-Community">Home  <span class="float-right badge badge-primary"><?php echo $gurisha->cart_gurisha_countPOSTS('home_garden');?></span></a>
          </div>
      </div>

      <div class="col-8 col-md-10 col-lg-10 ">
          <div class="row">
              <div class="col-md-9" id="sale-hides">
                  <?php echo $gurisha->cart_gurisha_List('electronics',1,$user_id); ?>
              </div> <!-- col -->

              <div class="col-md-3">
               <span id="responseSubmititerm"> </span>
                <div id="responseSubmitcartiterm">
                <?php echo $gurisha->showCart_gurisha_itemSale(); ?>
                </div>
              </div><!-- col -->
          </div><!-- row -->
      </div>

    </div><!-- row -->
</div>
