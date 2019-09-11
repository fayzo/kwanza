 
  <section class="content-header">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><i>Home</i></h1>
            </div>

            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">Home</li>
                    <li class="breadcrumb-item">Sports</li>
                </ol>
            </div>

        </div>
    </section>

<div class="row">
    <div class="col-6 col-md-6 col-lg-6 ">
      <div id="Football">
          <!-- SLIDER WITH CAPTIONS -->
         <?php echo $sports->sportscarousel('Football'); ?>
         
            <div class="container mb-3">
             <div class="row">
            
                  <div class="float-left mr-2" >
                    <div style="background: url('http://localhost:80/Blog_nyarwanda_CMS/uploads/Blog/2019_42b753.jpg')no-repeat center center;background-size:cover;height:150px;width:210px;position:relative">
                        <div style="position:absolute;bottom:0px;left:0px;background-color:#0000006e;color:white;width: 100%;padding:5px;">
                        AMAKURU
                        </div>
                    </div>
                  </div>

                    <div class="mr-2" style="background: url('http://localhost:80/Blog_nyarwanda_CMS/uploads/Blog/2019_42b753.jpg')no-repeat center center;background-size:cover;height:150px;width:210px;position:relative">
                        <div style="position:absolute;bottom:0px;left:0px;background-color:#0000006e;color:white;width: 100%;padding:5px;">
                        AMAKURU
                        </div>
                    </div>

                    <div style="background: url('http://localhost:80/Blog_nyarwanda_CMS/uploads/Blog/2019_42b753.jpg')no-repeat center center;background-size:cover;height:150px;width:210px;position:relative">
                        <div style="position:absolute;bottom:0px;left:0px;background-color:#0000006e;color:white;width: 100%;padding:5px;">
                        AMAKURU
                        </div>
                    </div>
    
                </div>
            </div>
          <!-- END SLIDER WITH CAPTIONS -->
          <div class="clear-float">
              <?php echo $sports->SportsRecent_Articles(1,'Football'); ?>
          </div>
      </div>
    </div> 
    <div class="col-3 col-md-3 col-lg-3">

               <div class="card d-none d-lg-block mb-3">
                    <div class="card-header main-active py-1">
                    <h5>Latest News</h5>
                    </div>
                    <div class="card-body px-2">
                        <div class="row">
                         
                            <div class="col-md-12 mb-2">
                                <div class="card flex-md-row shadow-sm h-md-100 border-0">
                                 <div class="card-img-left flex-auto d-none d-lg-block" style="background: url('http://localhost:80/Blog_nyarwanda_CMS/uploads/Blog/2019_42b753.jpg')no-repeat center center;background-size:cover;height:80px;width:100px;position:relative">
                                </div>
                                <div class="card-body d-flex flex-column align-items-start pt-0">
                                    <h5 class="text-primary mb-0">
                                <a class="text-primary" href="javascript:void(0)" id="blog-readmore" data-blog=" ">
                                    Title of sports
                                </a>
                                    </h5>
                                    <div class="text-muted">Created on 22 may  By fayzo </div>
                                    <p class="card-text mb-1">
                                        But I must explain to you how all this mistaken idea  </p>
                    
                                </div><!-- card-body -->
                                </div><!-- card -->
                            </div> <!-- col -->

                            <div class="col-md-12 mb-2">
                                <div class="card flex-md-row shadow-sm h-md-100 border-0">
                                 <div class="card-img-left flex-auto d-none d-lg-block" style="background: url('http://localhost:80/Blog_nyarwanda_CMS/uploads/Blog/2019_42b753.jpg')no-repeat center center;background-size:cover;height:80px;width:100px;position:relative">
                                </div>
                                <div class="card-body d-flex flex-column align-items-start pt-0">
                                    <h5 class="text-primary mb-0">
                                <a class="text-primary" href="javascript:void(0)" id="blog-readmore" data-blog=" ">
                                    Title of sports
                                </a>
                                    </h5>
                                    <div class="text-muted">Created on 22 may  By fayzo </div>
                                    <p class="card-text mb-1">
                                        But I must explain to you how all this mistaken idea  </p>
                    
                                </div><!-- card-body -->
                                </div><!-- card -->
                            </div> <!-- col -->

                        </div> <!-- row -->
                    </div> <!-- card-body -->
                </div> <!-- card -->

            <?php echo $football->footballMatchLineup(); ?>
            <?php echo $football->footballMatchFixture(); ?>

    </div> 
    <!-- col -->
      
      <div class="col-3 col-md-3 col-lg-3 px-4">
      
             <?php echo $football->footballMatch_Up_Coming(); ?>

    </div> <!-- col -->
</div> <!-- row -->


    