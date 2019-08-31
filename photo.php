<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="assets/dist/css/lightslider.css"  rel="stylesheet"  />

</head>
<body>
    <div class="row">
    <div class="col-md-3">
        <div class="card-deck">
            <div class="card">
                <img class="card-img-top" src="holder.js/100x180/" alt="">
                <div class="card-body">
                    <h4 class="card-title">Title</h4>
                    <p class="card-text">Text</p>
                </div>
            </div>
            <div class="card">
                <img class="card-img-top" src="holder.js/100x180/" alt="">
                <div class="card-body">
                    <h4 class="card-title">Title</h4>
                    <p class="card-text">Text</p>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-6">
        <div class="clearfix" style="max-width:474px;">
            <ul id="image-gallery10" class="gallery list-unstyled cS-hidden">
                <?php for ($i=1; $i < 25; ++$i) { ?>
                        <li data-thumb="<?php echo 'assets/image/park_travel/'.$i.'.jpg'; ?>"> 
                            <img src="<?php echo 'assets/image/park_travel/'.$i.'.jpg'; ?>" />
                        </li>
                <?php } ?>
            </ul>
        </div>
    </div><!-- /.col -->

</div><!-- /.row -->

   <script src="assets/dist/js/jquery.min.js"></script>
   <script src="assets/dist/js/lightslider.js"></script> 
<script>
    	 $(document).ready(function() {
			$("#content-slider").lightSlider({
                loop:true,
                keyPress:true
            });
            $('#image-gallery10').lightSlider({
                gallery:true,
                item:1,
                thumbItem:9,
                slideMargin: 0,
                speed:500,
                auto:true,
                loop:true,
                onSliderLoad: function() {
                    $('#image-gallery10').removeClass('cS-hidden');
                }  
            });
		});
</script>
</body>
</html>