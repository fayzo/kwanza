<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['football_id']) && !empty($_POST['football_id'])) {
    if (isset($_SESSION['key'])) {
        # code...
        $user_id= $_SESSION['key'];
    }else {
        # code...
        $username= $users->test_input($_REQUEST['username']);
        $uprofileId= $home->usersNameId($username);
        $profileData= $home->userData($uprofileId['user_id']);
        $user_id= $profileData['user_id'];
    }
    $football_id = $_POST['football_id'];
    $row= $football->footballFecthReadmore($football_id);
    ?>

<div class="football-popup">
     <div class="wrap6">
        <span class="colose">
        	<button class="close-imagePopup"><i class="fa fa-times" aria-hidden="true"></i></button>
        </span>
        <div class="img-popup-wrapLogin">
        	<div class="img-popup-body">
                  
            <div class="card">
                <div class="card-header main-active">
                    <div class="float-right">  
                        <?php 
                        $now = strtotime('+0 day');
                        $month = strtotime($row['date_of_match']);
                            echo date('M d', $month); ?>
                    </div>
                    <div> Azam league - GROUP A</div>
                </div>
                <div class="card-body sportx p-0">
                    <ul class="list-group ">
                        <!-- LIST GROUP WITH LINKS -->
                        <div class="list-group-item list-group-item-action more" >
                            <div class="sa">
                                <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                                <?php if (date('M d', $now) > $row['date_of_match']) { ?>
                                    <div class="float-left btn btn-success btn-sm text-white">FT</div>
                                <?php } else { ?>
                                  <div class="text-danger"> <?php echo date('h:i A',strtotime($row['time_of_match'])); ?></div>
                                <?php } ?>
                                <div class="text-center" style="font-weight:500;text-transform: uppercase;" ><?php echo $row['Home_game']; ?> <?php if(date('Y-m-d',$now) > $row['date_of_match']){ echo '<span class="text-success">'.(($row['score_game'] == '?-?')?'0-0':$row['score_game']).'</span>'; }else{ echo '<span class="text-danger">'.$row['score_game'].'</span>' ; } ?> <?php echo $row['Away_game']; ?></div>
                            </div>
                        </div>
                    </ul>

                    <div class="card text-center">
                        <div class="card-header">
                            <ul class="nav nav-pills card-header-pills">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#matchinfo">match info</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tracked">tracked</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#lineup">line-up</a>
                            </li>
                            </ul>
                        </div>
                        <div class="card-body p-0">
                            <div class="tab-content">
                                <div class="active tab-pane" id="matchinfo">
                                    
                                    <?php 
                                        if (date('Y-m-d',$now) <= $row['date_of_match']) { ?>
                                        <div class="sa">
                                            <div style="margin:auto;font-weight:700;text-transform:uppercase;text-decoration:underline;"><i> location of match</i></div>
                                            <div style="margin:auto;font-weight:500;"> Stadium  : <?php echo $row['location_of_match']; ?></div>
                                            <div style='margin:auto;'>Province : <?php echo $row['provincename']; ?></div>
                                            <div style='margin:auto;'>District : <?php echo $row['namedistrict']; ?> district </div>
                                            <div style='margin:auto;'>Sector   : <?php echo $row['namesector']; ?> Sector </div>
                                            <div style='margin:auto;'>Cell     : <?php echo $row['nameCell']; ?> cell </div>
                                        </div>

                                    <?php }else{ ?>

                                        <table class="table table-striped table-hover table-inverse ">
                                            <thead class="thead-inverse">
                                                <tr>
                                                    <th>Time</th>
                                                    <th></th>
                                                    <th>Goal</th>
                                                    <th></th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="text-danger" style="width:10px;" > 20'</td>
                                                        <td class="text-right" style="font-weight:500" > </td>
                                                        <td class="text-danger" style="width:15px;">0-1 </td>
                                                        <td class="text-left" style="font-weight:500" ><i class="fa fa-user-circle" aria-hidden="true"></i> </span> arnold
                                                            <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-danger" style="width:10px;" > 50'</td>
                                                        <td class="text-right" style="font-weight:500" > fayzo <i class="fa fa-user-circle" aria-hidden="true"></i></td>
                                                        <td class="text-danger" style="width:15px;">0-2 </td>
                                                        <td class="text-left" style="font-weight:500" ><i class="fa fa-user-circle" aria-hidden="true"></i> </span> arnold
                                                            <div class="float-right"><i class="fa fa-star" aria-hidden="true"></i></div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                        </table>
                                         <?php } ?>
                                    </div>
                                    <div class="tab-pane" id="tracked">
                                    tracked
                                    </table>
                                    </div>
                                    <div class="tab-pane" id="lineup">
                                        <h4 class="card-title">Titles</h4>
                                        <p class="card-text">Body</p>
                                    </div>
                            </div>
                        </div><!-- /.card-body -->
                        <div class="card-footer text-muted">
                            Footer
                        </div><!-- /.card-footer -->
                    </div>
                
             </div><!-- img-popup-body -->
        </div><!-- user-show-popup-box -->
    </div> <!-- Wrp4 -->
</div> <!-- apply-popup" -->


<?php } 