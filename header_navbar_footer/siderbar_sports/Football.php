 
  <section class="content-header">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><i>Football</i></h1>
            </div>

            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">Football</li>
                    <li class="breadcrumb-item"><button type="button" class="btn btn-light btn-sm" id="add_football" data-football="<?php echo $_SESSION['key']; ?>" > + Add football </button></li>
                    <li class="breadcrumb-item">Sports</li>
                </ol>
            </div>

        </div>
    </section>

    <div class="row">
        <div class="col-md-3">
            <?php echo $football->footballRecent_news('Football'); ?>
        </div><!-- col -->

        <div class="col-md-6">
           
            <div class="card">
                 <div id="Football-view">
                      <?php  
                      $date = strtotime("0 day"); 
                      echo $football->currentDatefootballMatch(0,date('y-m-d', $date),date('Y-m-d', $date));
                      ?>
                </div>
            </div> <!-- card -->
        </div> <!-- col -->

        <div class="col-md-3">
             <div class="card mb-3">
          <div class="card-header text-center main-active">
              <div class="h5">Football Scores Tables</div>
          </div>
          <div class="card-body">
           <table class="table table-sm table-hover table-striped">
               <thead>
                   <tr>
                       <th></th>
                       <th>Championship</th>
                       <th>P</th>
                       <th>GD</th>
                       <th>PTS</th>
                   </tr>
               </thead>
               <tbody>
                   <tr>
                       <td class="bg-success">1</td>
                       <td>Apr</td>
                       <td>43</td>
                       <td>50</td>
                       <td>98</td>
                   </tr>
                   <tr>
                       <td class="bg-success">2</td>
                       <td>Rayon</td>
                       <td>34</td>
                       <td>79</td>
                       <td>90</td>
                   </tr>
                   <tr>
                       <td>3</td>
                       <td>Mukura</td>
                       <td>34</td>
                       <td>79</td>
                       <td>90</td>
                   </tr>
                   <tr>
                       <td>4</td>
                       <td>As kigali</td>
                       <td>34</td>
                       <td>79</td>
                       <td>90</td>
                   </tr>
                   <tr>
                       <td class="bg-danger">5</td>
                       <td>etellsec</td>
                       <td>34</td>
                       <td>79</td>
                       <td>90</td>
                   </tr>
               </tbody>
           </table>
          </div><!-- card-body -->
      </div><!-- card -->

        <div class="card mb-3">
                <div class="card-header text-center  py-1 main-active">
                    <div class="h5">Match Fixture</div>
                </div>
                <div class="card-body sportx">
                 <div style="background:#b9b6b22b;padding:7px;">
                        <span style="text-decoration:underline"> Football</span>
                   </div>
                    <div class="FOOT">
                        <div class="float-right">June 12</div>
                        <div> Azam league - GROUP A</div>
                    </div>  
                    
                    <ul class="list-group clear-float mb-2">
                        <div class="list-group-item list-group-item-action" >
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                                <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                <div class="text-center">Kiyovu <span class="text-success">3-2</span> APR FC</div>
                        </div>
                        <div class="list-group-item list-group-item-action" >
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                                 <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                 <div class="text-center">AMAGAJU <span class="text-success">0-0</span> APR FC</div>
                        </div>
                        <div class="list-group-item list-group-item-action" >
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                               <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                 <div class="text-center">RAYON SP <span class="text-success">6-2</span> APR FC</div>
                        </div>
                    </ul>
                   <div style="background:#b9b6b22b;padding:7px;">
                     <span style="text-decoration:underline">Basketball</span>
                   </div>
                    <div class="FOOT">
                        <div class="float-right">June 12</div>
                        <div> Azam league - GROUP A</div>
                    </div>  
                    
                     
                    <ul class="list-group clear-float mb-2">
                       <div class="list-group-item list-group-item-action" >
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                                <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                <div class="text-center">Kiyovu <span class="text-success">3-2</span> APR FC</div>
                        </div>
                        <div class="list-group-item list-group-item-action" >
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                                 <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                 <div class="text-center">AMAGAJU <span class="text-success">0-0</span> APR FC</div>
                        </div>
                        <div class="list-group-item list-group-item-action" >
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                               <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                 <div class="text-center">RAYON SP <span class="text-success">3-6</span> APR FC</div>
                        </div>
                    </ul>
                  <div style="background:#b9b6b22b;padding:7px;">
                     <span style="text-decoration:underline"> Volleyball</span>
                   </div>
                    <div class="FOOT">
                        <div class="float-right">June 12</div>
                        <div> Azam league - GROUP A</div>
                    </div>  
                    
                       
                    <ul class="list-group clear-float mb-2">
                      <div class="list-group-item list-group-item-action" >
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                                <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                <div class="text-center">Kiyovu <span class="text-success">3-2</span> APR FC</div>
                        </div>
                        <div class="list-group-item list-group-item-action" >
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                                 <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                 <div class="text-center">AMAGAJU <span class="text-success">0-2</span> APR FC</div>
                        </div>
                        <div class="list-group-item list-group-item-action" >
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                               <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                 <div class="text-center">RAYON SP <span class="text-success">3-22</span> APR FC</div>
                        </div>
                    </ul>
                    <a class="float-right" href="javascript:void(0)">View more Match >>></a>
                </div><!-- card-body -->
            </div><!-- card -->

        </div><!-- col -->
        
    </div>

  <!-- <ul class="list-inline text-center mb-0">
       < ?php for ($i= 6; $i > 0; $i--) { 
              $date = strtotime("-$i day"); ?>
           <li class="list-inline-item px-2 m-0 bg-light border border-dark text-dark rounded">< ?php echo date('M d', $date);  ?></li>
       < ?php } ?>
       <li class="list-inline-item active px-2 m-0 bg-primary border border-dark text-light rounded">Today</li>
       < ?php for ($i= 1; $i < 6; $i++) { 
              $date = strtotime("+$i day"); ?>
           <li class="list-inline-item px-2 m-0 bg-light border border-dark text-dark rounded">< ?php echo date('M d', $date);  ?></li>
       < ?php } ?>
   </ul> -->