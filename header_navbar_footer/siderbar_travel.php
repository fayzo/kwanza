      <header class="blog-header py-2 bg-light">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4">
           <button type="button" class="btn btn-light" id="add_blog" data-blog="<?php echo $_SESSION['key']; ?>" > + Add Blog </button>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Travel</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
          </div>
        </div>
      </header>

<div role="tabpanel">
      <div class="nav-scroller py-1 mb-2 bg-light">
        <nav class="nav d-flex justify-content-between" id="list-tab" role="tablist">
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Technology" role="tab" aria-controls="list-Technology">Home</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Design" role="tab" aria-controls="list-Design">Destination</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Culture" role="tab" aria-controls="list-Culture">Culture</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Business" role="tab" aria-controls="list-Business">Business</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Politics" role="tab" aria-controls="list-Politics">Politics</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Opinion" role="tab" aria-controls="list-Opinion">Opinion</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Health" role="tab" aria-controls="list-Health">Health</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Style" role="tab" aria-controls="list-Style">Style</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Travel" role="tab" aria-controls="list-Travel">Travel</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-History" role="tab" aria-controls="list-History">History</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Science" role="tab" aria-controls="list-Science">Science</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Computer_science" role="tab" aria-controls="list-Computer_science">Computer science</a>
        </nav>
      </div>
  <!-- </div>

<div role="tabpanel">
  <div class="row">
    <div class="col-4 col-md-2 col-lg-2 py-3 px-2">
      <div class="list-group sticky-top" id="list-tab" role="tablist">
        <a class="list-group-item list-group-item-action active" id="list-History-list" data-toggle="tab" href="#list-History" role="tab" aria-controls="list-History">History</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="tab" href="#list-Science" role="tab" aria-controls="list-Science">Science</a>
        <a class="list-group-item list-group-item-action" id="list-Sports-list" data-toggle="tab" href="#list-Computer_science" role="tab" aria-controls="list-Computer_science">Computer science</a>
        <a class="list-group-item list-group-item-action" id="list-profile-list" data-toggle="tab" href="#list-Politics" role="tab" aria-controls="list-Politics">Politics</a>
        <button type="button" class="btn btn-light mt-2" id="add_blog" data-blog="< ?php echo $_SESSION['key']; ?>" > + Add Blog </button>
      </div>
    </div> -->
 
      <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-Technology" role="tabpanel" aria-labelledby="list-Technology-list">
           <?php include "siderbar_blog/Technology.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade" id="list-Design" role="tabpanel" aria-labelledby="list-Design-list">
           <?php include "siderbar_blog/Design.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade" id="list-Culture" role="tabpanel" aria-labelledby="list-Culture-list">
           <?php include "siderbar_blog/Culture.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade " id="list-Business" role="tabpanel" aria-labelledby="list-Business-list">
           <?php include "siderbar_blog/Business.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade " id="list-Politics" role="tabpanel" aria-labelledby="list-Politics-list">
           <?php include "siderbar_blog/politics.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade " id="list-Opinion" role="tabpanel" aria-labelledby="list-Opinion-list">
           <?php include "siderbar_blog/Opinion.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade " id="list-Health" role="tabpanel" aria-labelledby="list-Health-list">
           <?php include "siderbar_blog/Health.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade " id="list-Style" role="tabpanel" aria-labelledby="list-Style-list">
           <?php include "siderbar_blog/Style.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade " id="list-Travel" role="tabpanel" aria-labelledby="list-Travel-list">
           <?php include "siderbar_blog/Travel.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade " id="list-History" role="tabpanel" aria-labelledby="list-History-list">
           <?php include "siderbar_blog/history.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

        <div class="tab-pane fade" id="list-Science" role="tabpanel" aria-labelledby="list-Science-list">
                     <?php include "siderbar_blog/science.php"?>
         </div> <!-- END-OF A LINK OF Comment ID=#  -->

         <div class="tab-pane fade" id="list-Computer_science" role="tabpanel" aria-labelledby="list-Computer_science-list">
            <?php include "siderbar_blog/computer_science.php"?>
         </div> <!-- END-OF A LINK OF profile ID=#  -->
      </div>
      <!-- tab-content -->
</div>
<!-- tabpanel -->