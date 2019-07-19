<?php
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

     if(isset($_REQUEST['school'])) {  
        echo $school->schoolList0($_REQUEST['pages'],$_REQUEST['categories']); 
      }

     if(isset($_REQUEST['school_location'])) {  
        echo $school->schoolList($_REQUEST['pages'],$_REQUEST['categories']); 
      }
   
?>