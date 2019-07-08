        <header class="blog-header py-2 bg-light">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4">
            <button type="button" class="btn btn-light" id="add_house" data-house="<?php echo $_SESSION['key']; ?>" > + Add house </button>
          </div>
          <div class="col-4 text-center">
            <a class="blog-header-logo text-dark" href="#">Shopping Items</a>
          </div>
          <div class="col-4 d-flex justify-content-end align-items-center">
           
          </div>
        </div>
      </header>

    <div class="row mt-3">
      <div class="col-4 col-md-2 col-lg-2 py-3 px-2">
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
      </div>

      <div class="col-8 col-md-10 col-lg-10 ">
          <div class="row">
              <div class="col-md-9" id="sale-hides">
                  <?php echo $sale->cartList('electronics',1); ?>
              </div> <!-- col -->

              <div class="col-md-3">
               <span id="responseSubmititerm"> </span>
                <div id="responseSubmitcartiterm">
                <?php echo $sale->showCart_itemSale();?>
                </div>
              </div><!-- col -->
          </div><!-- row -->
      </div>

    </div><!-- row -->
