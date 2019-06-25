    <!-- Content Header (Page header) -->
<div class="container">
  
    <section class="content-header">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><i> Home</i></h1>
            </div>

            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">Home</li>
                    <li class="breadcrumb-item">Movies</li>
                </ol>
            </div>

        </div>
    </section>

    <div class="row">
        <div class="col-md-3">
          <?php echo $movies->moviesMayLike(); ?>
            
        </div> <!-- col -->
        <div class="col-md-6">
           <span id="view-more">

            <div class="card">
                <div class="card-header py-1 main-active">
                   <h5 class="text-center" ><i> Watch Movies Online Free</i></h5>
                   <div><i><span class='h5'>Movies</span> - <a class='colorlightLINK' href="javascript:void(0)" onclick="movies_FecthRequest('america-movies',0)">View more >>></a></i></div>
                </div>
                <div class="card-body">
                     <?php echo $movies->moviesList('america-movies'); ?>
                </div>
            </div>
            
            <div class="card">
                <div class="card-header py-1 main-active">
                   <div><i><span class='h5'>Tv Series</span> - <a class='colorlightLINK' href="javascript:void(0)" onclick="movies_FecthRequest('Tv-Series',0)">View more >>></a></i></div>
                </div>
                <div class="card-body">
                     <?php echo $movies->moviesList('Tv-Series'); ?>
                </div>
            </div>
            <div class="card">
                <div class="card-header py-1 main-active">
                   <div><i><span class='h5'>Anime Series</span> - <a class='colorlightLINK' href="javascript:void(0)" onclick="movies_FecthRequest('Anime-Series',<?php echo $pages-1; ?>)">View more >>></a></i></div>
                </div>
                <div class="card-body ">
                    <?php echo $movies->moviesList('Anime-Series'); ?>
                </div>
            </div>
            <div class="card">
                <div class="card-header py-1 main-active">
                   <div><i><span class='h5'>Cartoons Movies</span> - <a class='colorlightLINK' href="javascript:void(0)" onclick="movies_FecthRequest('Cartoons-Movies',<?php echo $pages-1; ?>)">View more >>></a></i></div>
                </div>
                <div class="card-body">
                     <?php echo $movies->moviesList('Cartoons-Movies'); ?>
                </div>
            </div>
            <div class="card">
                <div class="card-header py-1 main-active">
                   <div><i><span class='h5'>Africans Movies</span> - <a class='colorlightLINK' href="javascript:void(0)" onclick="movies_FecthRequest('Africans-Movies',<?php echo $pages-1; ?>)">View more >>></a></i></div>
                </div>
                <div class="card-body">
                   <?php echo $movies->moviesList('Africans-Movies'); ?>
                </div>
            </div>

          </span>
       </div> <!-- col -->

        <div class="col-md-3">

          <ul class="list-group mb-5 border-top-0" style='margin:0 px'>
              <a class="list-group-item list-group-item-action text-center py-1 main-active" href="#"><h5><i> Most Watchest Movies</i></h5></a>
              <a class="list-group-item list-group-item-action" href="#">=> Fast and Furious 8   <div><i class="fa fa-eye" aria-hidden="true"></i> 23 000 000 Viewers</div></a>
              <a class="list-group-item list-group-item-action" href="#">=> Men In Black 8  <div ><i class="fa fa-eye" aria-hidden="true"></i> 3 000 000 Viewers</div></a>
              <a class="list-group-item list-group-item-action" href="#">=> aladdin  <div><i class="fa fa-eye" aria-hidden="true"></i> 30 000 000 Viewers</div> </a>
          </ul><!-- LIST GROUP WITH LINKS -->
        </div><!-- col -->
        
    </div>
      
</div>