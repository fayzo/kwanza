<div class="container mt-2">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><i> Cars</i></h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">Cars</li>
                    <li class="breadcrumb-item active"><i>Products Sale</i></li>
                </ol>
            </div>
        </div>
    </section>

      <div class="row">
        <div class="col-md-9">
            <?php echo $sale->categories_sale('cars'); ?>
        </div> <!-- col -->

        <div class="col-md-3">
           <?php echo $sale->showCart_itemSale();?>
        </div><!-- col -->
        
    </div><!-- row -->


    <!-- < ?php echo $fundraising->fundraisings('business'); ?> -->
</div>