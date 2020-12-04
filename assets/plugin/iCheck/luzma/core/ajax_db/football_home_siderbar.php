<?php
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));
     $date = strtotime("0 day"); 
     $date1 = strtotime("0 day"); 

     if(isset($_REQUEST['football'])  && $_REQUEST['football'] == 'Football Home') {  
        echo $football_home->currentDatefootball_homeMatch(0,date('Y-m-d', $date),date('Y-m-d', $date1));
      }

     if(isset($_REQUEST['football'])  && $_REQUEST['football'] == 'Azam league') {  
        echo $football->currentDatefootballMatch(0,date('Y-m-d', $date),date('Y-m-d', $date1));
      }

     if(isset($_REQUEST['football'])  && $_REQUEST['football'] == 'Kagame cup') {  
        echo $kagame_cup->currentDatefootball_kagame_cupMatch(0,date('Y-m-d', $date),date('Y-m-d', $date1));
      }

     if(isset($_REQUEST['football'])  && $_REQUEST['football'] == 'Amahoro league') {  
        echo $amahoro_league->currentDatefootball_amahoro_leagueMatch(0,date('Y-m-d', $date),date('Y-m-d', $date1));
      }
     if(isset($_REQUEST['football'])  && $_REQUEST['football'] == 'U-16') {  
        echo $football_u_16->currentDatefootball_u_16Match(0,date('Y-m-d', $date),date('Y-m-d', $date1));
      }

     if(isset($_REQUEST['football'])  && $_REQUEST['football'] == 'U-18') {  
        echo $football_u_18->currentDatefootball_u_18Match(0,date('Y-m-d', $date),date('Y-m-d', $date1));
      }

     if(isset($_REQUEST['football'])  && $_REQUEST['football'] == 'U-20') {  
        echo $football_u_20->currentDatefootball_u_20Match(0,date('Y-m-d', $date),date('Y-m-d', $date1));
      }

      // ************************************************************
      // ************************************************************
      // ************************************************************

      if(isset($_REQUEST['champion']) && $_REQUEST['champion'] == 'azam_league') {  
        echo $football->currentDatefootballMatch($_REQUEST['Footpages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }
      
      if(isset($_REQUEST['champion']) && $_REQUEST['champion'] == 'Football_Home') {  
        echo $football_home->currentDatefootball_homeMatch($_REQUEST['Footpages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }

      if(isset($_REQUEST['champion']) && $_REQUEST['champion'] == 'kagame_cup') {  
        echo $kagame_cup->currentDatefootball_kagame_cupMatch($_REQUEST['Footpages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }

      if(isset($_REQUEST['champion']) && $_REQUEST['champion'] == 'amahoro_league') {  
        echo $amahoro_league->currentDatefootball_amahoro_leagueMatch($_REQUEST['Footpages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }

      if(isset($_REQUEST['champion']) && $_REQUEST['champion'] == 'U-16') {  
        echo $football_u_16->currentDatefootball_u_16Match($_REQUEST['Footpages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }

     if(isset($_REQUEST['champion']) && $_REQUEST['champion'] == 'U-18') {  
        echo $football_u_18->currentDatefootball_u_18Match($_REQUEST['Footpages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }

     if(isset($_REQUEST['champion']) && $_REQUEST['champion'] == 'U-20') {  
        echo $football_u_20->currentDatefootball_u_20Match($_REQUEST['Footpages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }


?>