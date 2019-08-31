<header class="blog-header mt-3 py-2 bg-light">
  <div class="row flex-nowrap justify-content-between align-items-center">
    <div class="col-12 text-center">
      <?php echo $home->links(); ?>
    </div>
  </div>
  <div class="row flex-nowrap justify-content-between align-items-center">
    <div class="col-4">
    <?php if (isset($_SESSION['key'])) { ?>
      <button type="button" class="btn btn-light" id="add_blog" data-blog="<?php echo $_SESSION['key']; ?>" > + Add Blog </button>
      <?php } ?>
    </div>
    <div class="col-4 text-center">
      <a class="blog-header-logo text-dark" href="#">Safari Travel</a>
    </div>
    <div class="col-4 d-flex justify-content-end align-items-center">
    </div>
  </div>
</header>

<div role="tabpanel">
      <div class="nav-scroller py-1 mb-2 bg-light">
        <nav class="nav d-flex justify-content-between" id="list-tab" role="tablist">
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Travel" role="tab" aria-controls="list-Travel">Park Safari</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Beach" role="tab" aria-controls="list-Beach">Beach time</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Destination" role="tab" aria-controls="list-Destination">Destination</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Culture" role="tab" aria-controls="list-Culture">Culture</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Style" role="tab" aria-controls="list-Style">LifeStyle</a>
        </nav>
      </div>

      <div class="container-fluid mb-5">
          <div class="tab-content" id="nav-tabContent">

            <div class="tab-pane fade show active" id="list-Travel" role="tabpanel" aria-labelledby="list-Travel-list">
              <?php include "siderbar_travel/Travel.php"?>
            </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

            <div class="tab-pane fade" id="list-Beach" role="tabpanel" aria-labelledby="list-Design-list">
              <?php include "siderbar_travel/Beach.php"?>
            </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->
            
            <div class="tab-pane fade" id="list-Destination" role="tabpanel" aria-labelledby="list-Culture-list">
              <?php include "siderbar_travel/Destination.php"?>
            </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

            <div class="tab-pane fade" id="list-Culture" role="tabpanel" aria-labelledby="list-Culture-list">
              <?php include "siderbar_travel/Culture.php"?>
            </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

            <div class="tab-pane fade" id="list-Style" role="tabpanel" aria-labelledby="list-Science-list">
                        <?php include "siderbar_travel/Lifestyle.php"?>
            </div> <!-- END-OF A LINK OF Comment ID=#  -->

          </div><!-- tab-content -->
      </div><!-- container-fluid -->                                                                                                                                   
</div><!-- tabpanel -->   