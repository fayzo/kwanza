<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Football extends Home{
    
    public function footballRecent_news($categories)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN sports S ON S. user_id3 = u. user_id WHERE S. categories_sports ='$categories' and created_on3  > DATE_SUB(NOW(), INTERVAL 1 MONTH) ORDER BY created_on3 Desc , rand() Limit 5");
            //  SECOND	, MINUTE, HOUR, DAY, WEEK	, MONTH	, QUARTER	, YEAR,
        if($query->num_rows != 0){
        ?>
       <div class="card d-none d-lg-block">
        <div class="card-header main-active">
          <h5>Recent Football News</h5>
        </div>
        <div class="card-body px-2">
            <div class="row">
        <?php while($row= $query->fetch_array()) {  ?>

              <div class="col-md-12 mb-2">
                <div class="card flex-md-row shadow-sm h-md-100 border-0">
                  <img class="card-img-left flex-auto d-none d-lg-block" height="100px" width="100px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/sports/<?php echo $row['photo'] ;?>" alt="Card image cap">
                  <div class="card-body d-flex flex-column align-items-start pt-0">
                    <div class="text-primary mb-0" style='text-align:left'>
                   <a class="text-primary" href="javascript:void(0)" id="sports-readmore" data-sports="<?php echo $row['sports_id']; ?> "> <?php echo  $row['title']; ?></a>
                   </div>
                    <div class="text-muted">Created on <?php echo $this->timeAgo($row['created_on3']) ;?> By <?php echo $row['authors'] ;?> </div>
                    <p class="card-text">
                         <?php 
                             if (strlen($row["text"]) > 1) {
                              echo $row["text"] = substr($row["text"],0,0).'<span class="mb-0"><a href="javascript:void(0)" id="sports-readmore" data-sports="'.$row['sports_id'].'" class="text-muted" style"font-weight: 500!important;">Continue reading...</a></span>';
                            }else{
                              echo $row["text"];
                            } ?> 
                    </p>
                  </div><!-- card-body -->
                </div><!-- card -->
              </div> <!-- col -->

      <?php } ?>

            </div> <!-- row -->
        </div> <!-- card-body -->
      </div> <!-- card -->

    <?php } 
    }

    public function currentDatefootballMatch($day,$currentdate,$futuredate)
    {
        $mysqli= $this->database;
        // $query= $mysqli->query("SELECT * FROM football WHERE SUBDATE(NOW(), INTERVAL $dayz DAY ) = date_of_match ORDER BY date_of_match Desc Limit 3");
        $query= $mysqli->query("SELECT * FROM football F
              Left JOIN provinces P ON F. province = P. provincecode
              Left JOIN districts M ON F. district = M. districtcode
              Left JOIN sectors T ON F. sector = T. sectorcode
              Left JOIN cells C ON F. cell = C. codecell
              Left JOIN vilages V ON F. village = V. CodeVillage 
        WHERE F. date_of_match BETWEEN '$currentdate' AND '$futuredate'  ORDER BY F. date_of_match Desc Limit 3");
            //  SECOND	, MINUTE, HOUR, DAY, WEEK	, MONTH	, QUARTER	, YEAR,
            // var_dump('ERROR: Could not able to execute $sql.'.mysqli_error($mysqli));
            // var_dump($day);
            // var_dump($query);
        ?>

        <div class="card-header main-active p-1"  style="border-bottom: 2px #fff solid;">
             <nav>
                 <ul class="pagination justify-content-center m-0 ">
                <?php for ($i= 5; $i > 0; $i--) { 
                       $date = strtotime("-$i day"); 
                       $date1 = strtotime("-$i day"); 
                        if (-$i == $day) { ?>
                    <li class="page-item active"><a class="page-link px-1  text-light" href="javascript:void(0)" onclick="Football_Home_FecthRequest('azam_league',<?php echo -$i; ?>,'<?php echo date('Y-m-d', $date); ?>','<?php echo date('Y-m-d', $date1); ?>')" ><?php echo date('M d', $date); ?></a></li>
                <?php }else{ ?>
                       <li class="page-item"><a class="page-link px-1 main-active" href="javascript:void(0)" onclick="Football_Home_FecthRequest('azam_league',<?php echo -$i; ?>,'<?php echo date('Y-m-d', $date); ?>','<?php echo date('Y-m-d', $date1); ?>')"><?php echo date('M d', $date);  ?></a></li>
                <?php } } ?>
                <?php for ($i= 0; $i < 5; $i++) { 
                       $date = strtotime("+$i day");
                       $date1 = strtotime("+$i day"); 
                         if ($i == $day) { ?>
                    <li class="page-item active"><a class="page-link px-1  text-light" href="javascript:void(0)" onclick="Football_Home_FecthRequest('azam_league',<?php echo $i; ?>,'<?php echo date('Y-m-d', $date); ?>','<?php echo date('Y-m-d', $date1); ?>')" ><?php if ($i === 0) { echo 'Today';}else{ echo date('M d', $date); } ?></a></li>
                <?php }else{ ?>
                    <li class="page-item"><a class="page-link px-1 main-active" href="javascript:void(0)" onclick="Football_Home_FecthRequest('azam_league',<?php echo $i; ?>,'<?php echo date('Y-m-d', $date); ?>','<?php echo date('Y-m-d', $date1); ?>')" ><?php echo date('M d', $date);  ?></a></li>
                <?php } } ?>
                </ul>
            </nav>
        </div> <!-- card-header -->
        <div class="card-body p-0">
          
        <div class="card">
          <div class="card-header main-active py-1 ">
              <div class="float-right">  
                <?php 
                $month = strtotime("$day day");
                $now = strtotime("0 day");
                if (date('M d', $month) == date('M d', $now)) {
                  echo 'Today';
                }else {
                  echo date('M d', $month); 
                } ?>
              </div>
              <div> Azam league - GROUP A</div>
          </div>
            <div class="card-body sportx p-0">

            <?php   if($query->num_rows != 0){ ?>
            
              <!-- LIST GROUP WITH LINKS -->
              <table class="table table-striped table-hover table-inverse ">
                <tbody>
                  <?php while ($row= $query->fetch_assoc()) { ?>
                        <tr class="more footballMatch_Readmore" data-footballmatchread="<?php echo $row['football_id']; ?>" >
                            <td >
                              <?php $datex = strtotime("+0 day");
                              if (date('Y-m-d',$datex) > $row['date_of_match']) { ?>
                                <div class=" btn btn-success btn-sm text-white">FT</div>
                              <?php } else { ?>
                                  <div class="text-danger"> <?php echo date('h:i A',strtotime($row['time_of_match'])); ?></div>
                              <?php } ?>
                            </td>
                            <td class="text-right" style="text-transform: uppercase;width:35%;"><?php echo $row['Home_game']; ?> </td>
                            <td class="text-center"><?php if(date('Y-m-d',$datex) > $row['date_of_match']){ echo '<span class="text-success">'.(($row['score_game'] == '?-?')?'0-0':$row['score_game']).'</span>'; }else{ echo '<span class="text-danger">'.$row['score_game'].'</span>' ; }  ?> </td>
                            <td class="text-left" style="text-transform: uppercase;width:35%;">
                                <?php echo $row['Away_game']; ?>
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                            </td>
                        </tr>
                  <?php } ?>

                </tbody>
              </table>

    <?php }else { ?>

              <ul class="list-group">

                  <div class="list-group-item list-group-item-action" >
                      <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                      <div class="float-left">--:--</div>
                      <div class="text-center">No Match</div>
                  </div>

              </ul>
           
     <?php } ?>
            </div> <!-- card-body -->
        </div> <!-- card -->
        </div> <!-- card -->

    <?php }
    
    public function footballFecthReadmore($football_id){
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM football F
              Left JOIN provinces P ON F. province = P. provincecode
              Left JOIN districts M ON F. district = M. districtcode
              Left JOIN sectors T ON F. sector = T. sectorcode
              Left JOIN cells C ON F. cell = C. codecell
              Left JOIN vilages V ON F. village = V. CodeVillage 
        WHERE F. football_id = $football_id ");
        $row= $query->fetch_assoc();
        return $row;
    }
    
    public function footballMatchLineup(){
        $mysqli= $this->database;
        $query1= $mysqli->query("SELECT * FROM football_lineup_table ORDER BY team_total_points Desc LIMIT 0,1 ");
        $query2= $mysqli->query("SELECT * FROM football_lineup_table ORDER BY team_total_points Desc LIMIT 1,2 ");
        $query3= $mysqli->query("SELECT * FROM football_lineup_table ORDER BY team_total_points Desc LIMIT 2,3 ");
        $query4= $mysqli->query("SELECT * FROM football_lineup_table ORDER BY team_total_points Desc LIMIT 3,3 ");
   
        $row1= $query1->fetch_assoc();
        $row2= $query2->fetch_assoc();
        $row3= $query3->fetch_assoc();
        ?>
        <div class="card mb-3">
          <div class="card-header text-center main-active py-1">
              <div class="h5"> Football Scores Tables</div>
          </div>
          <div class="card-body">
           <table class="table table-sm table-hover table-striped">
               <thead>
                   <tr>
                       <th></th>
                       <th>Championship</th>
                       <th>P</th>
                       <th>GD</th>
                       <th>D</th>
                       <th>PTS</th>
                   </tr>
               </thead>
               <tbody>
     
                   <tr>
                       <td class="bg-success">1</td>
                       <td><?php echo $row1['football_team']; ?></td>
                       <td><?php echo $row1['team_total_points']; ?></td>
                       <td><?php echo $row1['team_total_goal']; ?></td>
                       <td><?php echo $row1['team_total_draw']; ?></td>
                       <td><?php echo $row1['team_total_points']; ?></td>
                   </tr>
                   <tr>
                       <td class="bg-success">2</td>
                       <td><?php echo $row2['football_team']; ?></td>
                       <td><?php echo $row2['team_total_points']; ?></td>
                       <td><?php echo $row2['team_total_goal']; ?></td>
                       <td><?php echo $row2['team_total_draw']; ?></td>
                       <td><?php echo $row2['team_total_points']; ?></td>
                   </tr>
                   <tr>
                       <td class="bg-success">3</td>
                       <td><?php echo $row3['football_team']; ?></td>
                       <td><?php echo $row3['team_total_points']; ?></td>
                       <td><?php echo $row3['team_total_goal']; ?></td>
                       <td><?php echo $row3['team_total_draw']; ?></td>
                       <td><?php echo $row3['team_total_points']; ?></td>
                   </tr>
        <?php
        $n=3;
        while ($row4= $query4->fetch_assoc()) { $n++ ?>
                   <tr>
                       <td><?php echo $n; ?></td>
                       <td><?php echo $row4['football_team']; ?></td>
                       <td><?php echo $row4['team_total_points']; ?></td>
                       <td><?php echo $row4['team_total_goal']; ?></td>
                       <td><?php echo $row4['team_total_draw']; ?></td>
                       <td><?php echo $row4['team_total_points']; ?></td>
                   </tr>
         <?php } ?>
          
               </tbody>
           </table>
          </div><!-- card-body -->
      </div><!-- card -->
 <?php   }

 
    public function footballMatchFixture(){ 
      $mysqli= $this->database;
      $query= $mysqli->query("SELECT * FROM football F
            Left JOIN provinces P ON F. province = P. provincecode
            Left JOIN districts M ON F. district = M. districtcode
            Left JOIN sectors T ON F. sector = T. sectorcode
            Left JOIN cells C ON F. cell = C. codecell
            Left JOIN vilages V ON F. village = V. CodeVillage 
      WHERE F. date_of_match < DATE_SUB(CURDATE(), INTERVAL 0 DAY) ORDER BY F. date_of_match Desc Limit 3");
      
      ?>
    
         <div class="card mb-3">
                <div class="card-header text-center  py-1 main-active">
                    <div class="h5">Match Fixture</div>
                </div>
                <div class="card-body sportx">
                 <div style="background:#b9b6b22b;padding:7px;">
                      <a href="sports.php"  style="text-decoration:underline;;" class="h5"> Football</a>
                   </div>

                    <div class="FOOT">
                        <div class="float-right">June 12</div>
                        <div> Azam league - GROUP A</div>
                    </div>  

                     <table class="table table-striped table-hover table-inverse ">
                       <tbody>
                          <?php while ($row= $query->fetch_assoc()) { ?>
                                <tr class="more footballMatch_Readmore" data-footballmatchread="<?php echo $row['football_id']; ?>" >
                                    <td style="width:5px;" >
                                      <?php $datex = strtotime("+0 day");
                                      if (date('Y-m-d',$datex) > $row['date_of_match']) { ?>
                                        <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                      <?php } else { ?>
                                          <div class="float-left text-danger"> <?php echo date('h:i A',strtotime($row['time_of_match'])); ?></div>
                                      <?php } ?>
                                    </td>
                                    <td class="text-right" style="text-transform: uppercase;"><?php echo $row['Home_game']; ?> </td>
                                    <td class="text-center"><span class="text-success"><?php if($row['score_game'] != '?-?'){ echo $row['score_game']; }else{ echo '0-0' ; }  ?></span>  </td>
                                    <td class="text-left" style="text-transform: uppercase;">
                                        <?php echo $row['Away_game']; ?>
                                    </td>
                                </tr>
                         <?php } ?>

                       </tbody>
                     </table>

                   <div style="background:#b9b6b22b;padding:7px;">
                      <a href="sports.php" style="text-decoration:underline;;" class="h5">Basketball</a>
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
                      <a href="sports.php" style="text-decoration:underline;;" class="h5"> Volleyball</a>
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
                    <a class="float-right" href="sports.php">View more Match >>></a>
                    <!-- javascript:void(0) -->
                </div><!-- card-body -->
            </div><!-- card -->
  <?php }

 
    public function footballMatch_Up_Coming(){ 
      $mysqli= $this->database;
      $query= $mysqli->query("SELECT * FROM football F
            Left JOIN provinces P ON F. province = P. provincecode
            Left JOIN districts M ON F. district = M. districtcode
            Left JOIN sectors T ON F. sector = T. sectorcode
            Left JOIN cells C ON F. cell = C. codecell
            Left JOIN vilages V ON F. village = V. CodeVillage 
      WHERE F. date_of_match >=  CURDATE() ORDER BY F. date_of_match Asc Limit 3"); ?>
    
         <div class="card mb-3">
                <div class="card-header text-center  py-1 main-active">
                    <div class="h5">Match Up Coming</div>
                </div>
                <div class="card-body sportx">
                 <div style="background:#b9b6b22b;padding:7px;">
                      <a href="sports.php"  style="text-decoration:underline;;" class="h5"> Football</a>
                   </div>

                    <div class="FOOT">
                        <div class="float-right">June 12</div>
                        <div> Azam league - GROUP A</div>
                    </div>  
                    
                     <table class="table table-striped table-hover table-inverse ">
                       <tbody>
                          <?php while ($row= $query->fetch_assoc()) { ?>
                                <tr class="more footballMatch_Readmore" data-footballmatchread="<?php echo $row['football_id']; ?>" >
                                    <td style="width:10px;">
                                      <?php $datex = strtotime("+0 day");
                                      if (date('Y-m-d',$datex) > $row['date_of_match']) { ?>
                                        <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                      <?php } else { ?>
                                          <div class="float-left text-danger"> <?php echo date('h:i A',strtotime($row['time_of_match'])); ?></div>
                                      <?php } ?>
                                    </td>
                                    <td class="text-right" style="text-transform: uppercase;width:30%;"><?php echo $row['Home_game']; ?> </td>
                                    <td class="text-center" style="width:20%;"><span class="text-danger"><?php if($row['score_game'] == '?-?'){ echo $row['score_game']; }else{ echo '0-0' ; }  ?></span>  </td>
                                    <td class="text-left" style="text-transform: uppercase;width:30%;">
                                        <?php echo $row['Away_game']; ?>
                                    </td>
                                </tr>
                         <?php } ?>

                       </tbody>
                     </table>

                   <div style="background:#b9b6b22b;padding:7px;">
                      <a href="sports.php" style="text-decoration:underline;;" class="h5">Basketball</a>
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
                      <a href="sports.php" style="text-decoration:underline;;" class="h5"> Volleyball</a>
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
                    <a class="float-right" href="sports.php">View more Match >>></a>
                    <!-- javascript:void(0) -->
                </div><!-- card-body -->
            </div><!-- card -->
  <?php }

}
$football = new Football();
/*
===========================================
         Notice
===========================================
# You are free to run the software as you wish
# You are free to help yourself study the source code and change to do what you wish
# You are free to help your neighbor copy and distribute the software
# You are free to help community create and distribute modified version as you wish

We promote Open Source Software by educating developers (Beginners)
use PHP Version 5.6.1 > 7.3.20  
===========================================
         For more information contact
=========================================== 
Kigali - Rwanda
Tel : (250)787384312 / (250)787384312
E-mail : shemafaysal@gmail.com

*/
?>
