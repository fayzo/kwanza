      <header class="blog-header py-2 bg-light">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 pt-1">
            <button type="button" class="btn btn-light" id="add_house" data-house="<?php echo $_SESSION['key']; ?>" > + Add house </button>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">House</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
           
          </div>
        </div>
      </header>

     <div class="row mt-4">
         <div class="col-md-3">
             <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Title</h4>
                    <p class="card-text">Text</p>
                </div>
                <div class="card-body">
                    <h4 class="card-title">Title</h4>
                    <p class="card-text">Text</p>
                </div>
            </div> <!-- card -->
         </div> <!-- col -->

         <div class="col-md-6 " id="house-hides">
            <?php echo $house->houseList('House_For_sale',1,$user_id); ?>
         </div> <!-- col -->

         <div class="col-md-3">

           <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Title</h4>
                    <p class="card-text">Text</p>
                </div>
                <div class="card-body">
                    <h4 class="card-title">Title</h4>
                    <p class="card-text">Text</p>
                </div>
            </div> <!-- card -->
             
         </div> <!-- col -->
         
     </div>
  