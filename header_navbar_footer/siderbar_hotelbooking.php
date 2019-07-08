      <header class="blog-header py-3 bg-light">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <a class="text-muted" href="#">Subscribe</a>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Hotel Booking</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
           <form class="form-inline">
                 <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-search" aria-hidden="true"></i> </span>
                    </div>
                    <input type="text" class="form-control" name="searches" id="searches" aria-describedby="helpId"
                        placeholder="Search">
                </div>
              </form>
          </div>
        </div>
      </header>

<div role="tabpanel">
      <div class="nav-scroller py-1 mb-2 bg-light">
        <nav class="nav d-flex justify-content-between" id="list-tab" role="tablist">
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Home" role="tab" aria-controls="list-Home">Home</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Action" role="tab" aria-controls="list-Action">Action</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Thriller" role="tab" aria-controls="list-Thriller">Thriller</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Africans_movies" role="tab" aria-controls="list-Africans_movies">Africans movies</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Tv_series" role="tab" aria-controls="list-Tv_series">Tv series</a>
           <a class="p-2 text-muted" data-toggle="tab" href="#list-Anime_series" role="tab" aria-controls="list-Anime_series">Anime series</a>
           <button type="button" class="btn btn-light mt-2" id="add_movies" data-movies="<?php echo $_SESSION['key']; ?>" > + Add movies </button>
        </nav>
      </div>

       <div class="tab-content" id="nav-tabContent">
        <div class="tab-pane fade show active" id="list-Home" role="tabpanel" aria-labelledby="list-Home-list">
           <?php include "siderbar_movies/Home.php"?>
        </div> <!-- END-OF A LINK OF DASH_BOARD ID=#  -->

         <div class="tab-pane fade" id="list-Tv_series" role="tabpanel" aria-labelledby="list-Tv_series-list">
            <?php include "siderbar_movies/Tv_series.php"?>
         </div> <!-- END-OF A LINK OF profile ID=#  -->

         <div class="tab-pane fade" id="list-Anime_series" role="tabpanel" aria-labelledby="list-Anime_series-list">
            <?php include "siderbar_movies/Anime_series.php"?>
         </div> <!-- END-OF A LINK OF profile ID=#  -->
      </div>
      <!-- tab-content -->
</div>
<!-- tabpanel -->