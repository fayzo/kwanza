  <section class="content-header">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><i>Home</i></h1>
            </div>

            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">Home</li>
                    <li class="breadcrumb-item">View</li>
                </ol>
            </div>

        </div>
    </section>

        <div class="row">
          <div class="col-md-9">
            <div class="row">
                <div class="col-md-12">
                    <?php echo $entertainment->carousel_entertainment(); ?>
                <script type="text/javascript">jssor_8_slider_init();</script>
                <!-- #endregion Jssor Slider End -->
            </div><!-- col-md-12 -->

            <div class="col-md-12 mt-3">
             <div class="row">
              <div class="col-md-9">
              <div class="card">
                  <div class="card-header main-active">
                    <h5><i> Recently News of entertainment</i> </h5>
                  </div>
                  <div class="card-body">
                  <ul class="timeline timeline-inverse">
                           <?php echo $entertainment->entertainmentList($user_id)?>
                        <li>
                            <i class="fa fa-clock-o bg-info text-light"></i>
                        </li>
                    </ul>
                  </div><!-- card-body -->
              </div> <!-- card -->
              </div>

             <div class="col-md-3">
              <h5 class="main-active border rounded py-2 text-center">Events</h5>
              <div class="row">

                <div class="col-md-12">
                    <div class="card">
                        <img class="card-img-top" src="<?php echo BASE_URL_LINK.'image/img/img/046.jpg' ;?>" alt="">
                        <div class="card-body">
                            <p class="card-text">Text</p>
                        </div>
                    </div>
                </div><!-- col-md-12 -->

                <div class="col-md-12 mt-3">
                      <div class="card">
                        <img class="card-img-top" src="<?php echo BASE_URL_LINK.'image/img/img/045.jpg' ;?>" alt="">
                        <div class="card-body">
                            <p class="card-text">Text</p>
                        </div>
                    </div>
                </div><!-- col-md-12 -->
  
                <div class="col-md-12 mt-3">
                    <div class="slider regular">
                        <img class="card-img-top" src="<?php echo BASE_URL_LINK.'image/img/img/045.jpg' ;?>" alt="">
                        <img class="card-img-top" src="<?php echo BASE_URL_LINK.'image/img/img/046.jpg' ;?>" alt="">
                        <img class="card-img-top" src="<?php echo BASE_URL_LINK.'image/img/img/047.jpg' ;?>" alt="">
                        <img class="card-img-top" src="<?php echo BASE_URL_LINK.'image/img/img/048.jpg' ;?>" alt="">
                        <img class="card-img-top" src="<?php echo BASE_URL_LINK.'image/img/img/049.jpg' ;?>" alt="">
                    </div>
                </div><!-- col-md-12 -->
  
               </div><!-- ROW -->
              </div><!-- col-md-3 -->
              </div><!-- ROW -->
            </div><!-- col-md-12 -->
            </div><!-- ROW -->
            </div><!-- col-md-9 -->

             <div class="col-md-3">
              <div class="row">
                <div class="col-md-12">

                <div class="card">
                    <div class="card-header main-active text-center">
                     Top 50 song of the chart in this week 
                    </div>
                    <div class="card-body px-0">
                        <table class="table table-hover table-inverse table-responsive">
                            <thead class="thead-inverse main-active">
                                <tr>
                                    <th>No</th>
                                    <th>Song</th>
                                    <th>Singer</th>
                                    <th>Date </th>
                                </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="bg-success"><i class="fas fa-triangle"></i> 1</td>
                                        <td>Inkoramutima</td>
                                        <td>Meddy</td>
                                        <td>2009</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-success"><i class="fas fa-triangle"></i> 2</td>
                                        <td>Rutenderi</td>
                                        <td>Riderman</td>
                                        <td>2010</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-success"><i class="fas fa-triangle"></i> 3</td>
                                        <td>Knowless</td>
                                        <td>icyo ushaka</td>
                                        <td>2012</td>
                                    </tr>
                                </tbody>
                        </table>
                    </div>
                    <div class="card-footer text-muted">
                        Footer
                    </div>
                </div>
            </div><!-- col-md-3 -->

            <div class="col-md-12 mt-3">
                <div class="card">
                    <div class="card-header main-active text-center">
                     Top 10 R&B song of the chart in this months 
                    </div>
                    <div class="card-body px-0">
                     <table class="table table-hover table-inverse table-responsive">
                            <thead class="thead-inverse main-active">
                                <tr>
                                    <th>No</th>
                                    <th>Song</th>
                                    <th>Singer</th>
                                    <th>Date </th>
                                </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="bg-success"><i class="fas fa-triangle"></i> 1</td>
                                        <td>Inkoramutima</td>
                                        <td>Meddy</td>
                                        <td>2009</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-success"><i class="fas fa-triangle"></i> 2</td>
                                        <td>Rutenderi</td>
                                        <td>Riderman</td>
                                        <td>2010</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-success"><i class="fas fa-triangle"></i> 3</td>
                                        <td>Knowless</td>
                                        <td>icyo ushaka</td>
                                        <td>2012</td>
                                    </tr>
                                </tbody>
                        </table>
                    </div>
                    <div class="card-footer text-muted">
                        Footer
                    </div>
                </div>

            </div><!-- col-md-12 -->

            <div class="col-md-12 mt-3">
                <div class="card">
                    <div class="card-header main-active text-center">
                     Top 10 Hip-pop song of the chart in this months 
                    </div>
                    <div class="card-body px-0">
                       <table class="table table-hover table-inverse table-responsive">
                            <thead class="thead-inverse main-active">
                                <tr>
                                    <th>No</th>
                                    <th>Song</th>
                                    <th>Singer</th>
                                    <th>Date </th>
                                </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="bg-success"><i class="fas fa-triangle"></i> 1</td>
                                        <td>Inkoramutima</td>
                                        <td>Meddy</td>
                                        <td>2009</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-success"><i class="fas fa-triangle"></i> 2</td>
                                        <td>Rutenderi</td>
                                        <td>Riderman</td>
                                        <td>2010</td>
                                    </tr>
                                    <tr>
                                        <td class="bg-success"><i class="fas fa-triangle"></i> 3</td>
                                        <td>Knowless</td>
                                        <td>icyo ushaka</td>
                                        <td>2012</td>
                                    </tr>
                                </tbody>
                        </table>
                    </div>
                    <div class="card-footer text-muted">
                        Footer
                    </div>
                </div>

            </div><!-- col-md-12 -->
          </div><!-- ROW -->
        </div><!-- col-md-3 -->

        </div> <!-- ROW -->
    

    
