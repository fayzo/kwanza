
  <div class="row">
      <div class="col-md-8">
      
     <div id="jssor_3" style="position:relative;margin:0;top:0px;left:0px;width:840px;height:380px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
            <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="<?php echo BASE_URL_LINK."image/img/"?>img/spin.svg" />
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:840px;height:380px;overflow:hidden;">
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/045.jpg" />
                <div u="thumb">Slide Description 001</div>
            </div>
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/043.jpg" />
                <div u="thumb">Slide Description 002</div>
            </div>
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/046.jpg" />
                <div u="thumb">Slide Description 003</div>
            </div>
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/047.jpg" />
                <div u="thumb">Slide Description 004</div>
            </div>
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/048.jpg" />
                <div u="thumb">Slide Description 005</div>
            </div>
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/044.jpg" />
                <div u="thumb">Slide Description 006</div>
            </div>
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/050.jpg" />
                <div u="thumb">Slide Description 007</div>
            </div>
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/049.jpg" />
                <div u="thumb">Slide Description 008</div>
            </div>
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/052.jpg" />
                <div u="thumb">Slide Description 009</div>
            </div>
            <div>
                <img data-u="image" src="<?php echo BASE_URL_LINK."image/img/"?>img/051.jpg" />
                <div u="thumb">Slide Description 010</div>
            </div>
        </div>
        <!-- Thumbnail Navigator -->
        <div u="thumbnavigator" style="position:absolute;bottom:0px;left:0px;width:840px;height:50px;color:#FFF;overflow:hidden;cursor:default;background-color:rgba(0,0,0,.5);">
            <div u="slides">
                <div u="prototype" style="position:absolute;top:0;left:0;width:840px;height:50px;">
                    <div u="thumbnailtemplate" style="position:absolute;top:0;left:0;width:100%;height:100%;font-family:arial,helvetica,verdana;font-weight:normal;line-height:50px;font-size:16px;padding-left:10px;box-sizing:border-box;"></div>
                </div>
            </div>
        </div>
        <!-- Arrow Navigator -->
        <div data-u="arrowleft" class="jssora061" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <path class="a" d="M11949,1919L5964.9,7771.7c-127.9,125.5-127.9,329.1,0,454.9L11949,14079"></path>
            </svg>
        </div>
        <div data-u="arrowright" class="jssora061" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <path class="a" d="M5869,1919l5984.1,5852.7c127.9,125.5,127.9,329.1,0,454.9L5869,14079"></path>
            </svg>
        </div>
    </div>
    <script type="text/javascript">jssor_3_slider_init();</script>
    
          <div class="card mt-3">
              <div class="card-header">
                  <h5 class="card-title">recent articles</h5>
              </div>
              <div class="card-body mb-2">
                 <!-- The timeline -->
              <ul class="timeline timeline-inverse">
               <?php echo $news->NewsList(); ?>
                <li >
                    <i class="fa fa-clock-o bg-info text-light"></i>
                </li>
            </ul>
        </div><!-- card-body -->
    </div><!-- card -->
        
      </div><!-- col -->
      <div class="col-md-4">
          <div class="card">
              <div class="card-header">
                  <h5 class="card-title">recent articles</h5>
              </div>
              <div class="card-body">
                  <h4 class="card-title">Title</h4>
                  <p class="card-text">Text</p>
              </div>
          </div>

      </div><!-- col -->
  </div> <!-- row -->
