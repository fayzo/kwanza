<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Football_home extends Home{
    
    public function currentDatefootball_homeMatch($day,$currentdate,$futuredate)
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
            //  SECOND	, MINUTE, HOUR, DAY, WEEK	, MONTH	, QUARTER	, YEAR,
            // var_dump('ERROR: Could not able to execute $sql.'.mysqli_error($mysqli));
            // var_dump($day);
            // var_dump($query);
         $query1= $mysqli->query("SELECT * FROM football_kagame_cup F
              Left JOIN provinces P ON F. province = P. provincecode
              Left JOIN districts M ON F. district = M. districtcode
              Left JOIN sectors T ON F. sector = T. sectorcode
              Left JOIN cells C ON F. cell = C. codecell
              Left JOIN vilages V ON F. village = V. CodeVillage 
        WHERE F. date_of_match BETWEEN '$currentdate' AND '$futuredate'  ORDER BY F. date_of_match Desc Limit 3");
        
        $query2= $mysqli->query("SELECT * FROM football_amahoro_league F
              Left JOIN provinces P ON F. province = P. provincecode
              Left JOIN districts M ON F. district = M. districtcode
              Left JOIN sectors T ON F. sector = T. sectorcode
              Left JOIN cells C ON F. cell = C. codecell
              Left JOIN vilages V ON F. village = V. CodeVillage 
        WHERE F. date_of_match BETWEEN '$currentdate' AND '$futuredate'  ORDER BY F. date_of_match Desc Limit 3");
        
        $query3= $mysqli->query("SELECT * FROM football_u_16 F
              Left JOIN provinces P ON F. province = P. provincecode
              Left JOIN districts M ON F. district = M. districtcode
              Left JOIN sectors T ON F. sector = T. sectorcode
              Left JOIN cells C ON F. cell = C. codecell
              Left JOIN vilages V ON F. village = V. CodeVillage 
        WHERE F. date_of_match BETWEEN '$currentdate' AND '$futuredate'  ORDER BY F. date_of_match Desc Limit 3");
        
        $query4= $mysqli->query("SELECT * FROM football_u_18 F
              Left JOIN provinces P ON F. province = P. provincecode
              Left JOIN districts M ON F. district = M. districtcode
              Left JOIN sectors T ON F. sector = T. sectorcode
              Left JOIN cells C ON F. cell = C. codecell
              Left JOIN vilages V ON F. village = V. CodeVillage 
        WHERE F. date_of_match BETWEEN '$currentdate' AND '$futuredate'  ORDER BY F. date_of_match Desc Limit 3");
        
        $query5= $mysqli->query("SELECT * FROM football_u_20 F
              Left JOIN provinces P ON F. province = P. provincecode
              Left JOIN districts M ON F. district = M. districtcode
              Left JOIN sectors T ON F. sector = T. sectorcode
              Left JOIN cells C ON F. cell = C. codecell
              Left JOIN vilages V ON F. village = V. CodeVillage 
        WHERE F. date_of_match BETWEEN '$currentdate' AND '$futuredate'  ORDER BY F. date_of_match Desc Limit 3");
        ?>

        <div class="card-header main-active p-1"  style="border-bottom: 2px #fff solid;">
             <nav>
                 <ul class="pagination justify-content-center m-0 ">
                <?php for ($i= 5; $i > 0; $i--) { 
                       $date = strtotime("-$i day"); 
                       $date1 = strtotime("-$i day"); 
                        if (-$i == $day) { ?>
                    <li class="page-item active"><a class="page-link px-1  text-light" href="javascript:void(0)" onclick="Football_Home_FecthRequest('Football_Home',<?php echo -$i; ?>,'<?php echo date('Y-m-d', $date); ?>','<?php echo date('Y-m-d', $date1); ?>')" ><?php echo date('M d', $date); ?></a></li>
                <?php }else{ ?>
                       <li class="page-item"><a class="page-link px-1 main-active" href="javascript:void(0)" onclick="Football_Home_FecthRequest('Football_Home',<?php echo -$i; ?>,'<?php echo date('Y-m-d', $date); ?>','<?php echo date('Y-m-d', $date1); ?>')"><?php echo date('M d', $date);  ?></a></li>
                <?php } } ?>
                <?php for ($i= 0; $i < 5; $i++) { 
                       $date = strtotime("+$i day");
                       $date1 = strtotime("+$i day"); 
                         if ($i == $day) { ?>
                    <li class="page-item active"><a class="page-link px-1  text-light" href="javascript:void(0)" onclick="Football_Home_FecthRequest('Football_Home',<?php echo $i; ?>,'<?php echo date('Y-m-d', $date); ?>','<?php echo date('Y-m-d', $date1); ?>')" ><?php if ($i === 0) { echo 'Today';}else{ echo date('M d', $date); } ?></a></li>
                <?php }else{ ?>
                    <li class="page-item"><a class="page-link px-1 main-active" href="javascript:void(0)" onclick="Football_Home_FecthRequest('Football_Home',<?php echo $i; ?>,'<?php echo date('Y-m-d', $date); ?>','<?php echo date('Y-m-d', $date1); ?>')" ><?php echo date('M d', $date);  ?></a></li>
                <?php } } ?>
                </ul>
            </nav>
        </div> <!-- card-header -->
        <div class="card-body p-0">
          
        <div class="card " style="border-radius:0;">
          <div class="card-header main-active py-1 " style="border-top-left-radius:0;border-top-right-radius:0;">
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
              <!-- LIST GROUP WITH LINKS -->
             
        <?php if($query->num_rows != 0){ ?>
            
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
          
        <div class="card " style="border-radius:0;">
          <div class="card-header main-active py-1 " style="border-top-left-radius:0;border-top-right-radius:0;">
              <div class="float-right">  
                <?php 
                if (date('M d', $month) == date('M d', $now)) {
                  echo 'Today';
                }else {
                  echo date('M d', $month); 
                } ?>
              </div>
              <div> kagame_cup - GROUP A</div>
          </div>
            <div class="card-body sportx p-0">
              <!-- LIST GROUP WITH LINKS -->
             
        <?php if($query1->num_rows != 0){ ?>
            
              <!-- LIST GROUP WITH LINKS -->
              <table class="table table-striped table-hover table-inverse ">
                <tbody>
                  <?php while ($row= $query1->fetch_assoc()) { ?>
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
          
        <div class="card " style="border-radius:0;">
          <div class="card-header main-active py-1 " style="border-top-left-radius:0;border-top-right-radius:0;">
              <div class="float-right">  
                <?php 
                if (date('M d', $month) == date('M d', $now)) {
                  echo 'Today';
                }else {
                  echo date('M d', $month); 
                } ?>
              </div>
              <div> amahoro league - GROUP A</div>
          </div>
            <div class="card-body sportx p-0">
              <!-- LIST GROUP WITH LINKS -->
             
        <?php if($query2->num_rows != 0){ ?>
            
              <!-- LIST GROUP WITH LINKS -->
              <table class="table table-striped table-hover table-inverse ">
                <tbody>
                  <?php while ($row= $query2->fetch_assoc()) { ?>
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
          
        <div class="card " style="border-radius:0;">
          <div class="card-header main-active py-1 " style="border-top-left-radius:0;border-top-right-radius:0;">
              <div class="float-right">  
                <?php 
                if (date('M d', $month) == date('M d', $now)) {
                  echo 'Today';
                }else {
                  echo date('M d', $month); 
                } ?>
              </div>
              <div> u-16 - GROUP A</div>
          </div>
            <div class="card-body sportx p-0">
              <!-- LIST GROUP WITH LINKS -->
             
        <?php if($query3->num_rows != 0){ ?>
            
              <!-- LIST GROUP WITH LINKS -->
              <table class="table table-striped table-hover table-inverse ">
                <tbody>
                  <?php while ($row= $query3->fetch_assoc()) { ?>
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
          
        <div class="card " style="border-radius:0;">
          <div class="card-header main-active py-1 " style="border-top-left-radius:0;border-top-right-radius:0;">
              <div class="float-right">  
                <?php 
                if (date('M d', $month) == date('M d', $now)) {
                  echo 'Today';
                }else {
                  echo date('M d', $month); 
                } ?>
              </div>
              <div> u-18 - GROUP A</div>
          </div>
            <div class="card-body sportx p-0">
              <!-- LIST GROUP WITH LINKS -->
             
        <?php if($query4->num_rows != 0){ ?>
            
              <!-- LIST GROUP WITH LINKS -->
              <table class="table table-striped table-hover table-inverse ">
                <tbody>
                  <?php while ($row= $query4->fetch_assoc()) { ?>
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
          
        <div class="card " style="border-radius:0;">
          <div class="card-header main-active py-1 " style="border-top-left-radius:0;border-top-right-radius:0;">
              <div class="float-right">  
                <?php 
                if (date('M d', $month) == date('M d', $now)) {
                  echo 'Today';
                }else {
                  echo date('M d', $month); 
                } ?>
              </div>
              <div> u-18 - GROUP A</div>
          </div>
            <div class="card-body sportx p-0">
              <!-- LIST GROUP WITH LINKS -->
             
        <?php if($query5->num_rows != 0){ ?>
            
              <!-- LIST GROUP WITH LINKS -->
              <table class="table table-striped table-hover table-inverse ">
                <tbody>
                  <?php while ($row= $query5->fetch_assoc()) { ?>
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

    <?php

    }

}
$football_home = new Football_home();
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
