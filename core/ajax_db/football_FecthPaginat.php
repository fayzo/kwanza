<?php
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

     if(isset($_REQUEST['Footpages'])) {  
        echo $football->currentDatefootballMatch($_REQUEST['Footpages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }

     if(isset($_REQUEST['Basketpages'])) {  
        echo $basketball->currentDateBasketballMatch($_REQUEST['Basketpages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }

     if(isset($_REQUEST['Volleypages'])) {  
        echo $volleyball->currentDateVolleyballMatch($_REQUEST['Volleypages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }

     if(isset($_REQUEST['Tenispages'])) {  
        echo $tenis->currentDateTenisMatch($_REQUEST['Tenispages'],$_REQUEST['currentdate'],$_REQUEST['futuredate']);
      }

?>