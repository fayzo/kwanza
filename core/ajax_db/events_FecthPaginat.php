<?php
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'Party' ) {  
        echo $events->eventsList($_REQUEST['pages'],$_REQUEST['categories']); 
      }

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'Education' ) {  
        echo $events->eventsList($_REQUEST['pages'],$_REQUEST['categories']); 
      }

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'Government' ) {  
        echo $events->eventsList($_REQUEST['pages'],$_REQUEST['categories']); 
      }

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'Memorial' ) {  
        echo $events->eventsList($_REQUEST['pages'],$_REQUEST['categories']); 
      }
      
      if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'Training' ) {  
          echo $events->eventsList($_REQUEST['pages'],$_REQUEST['categories']); 
        }

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'Muslim' ) {  
        echo $events->eventsList($_REQUEST['pages'],$_REQUEST['categories']); 
      }

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'Christian' ) {  
        echo $events->eventsList($_REQUEST['pages'],$_REQUEST['categories']); 
      }

?>