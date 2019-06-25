<?php
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'history' ) {  
        echo $blog->blogs($_REQUEST['pages'],$_REQUEST['categories']); 
      }

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'science' ) {  
        echo $blog->blogs($_REQUEST['pages'],$_REQUEST['categories']); 
      }

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'computer_science' ) {  
        echo $blog->blogs($_REQUEST['pages'],$_REQUEST['categories']); 
      }

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'politics' ) {  
        echo $blog->blogs($_REQUEST['pages'],$_REQUEST['categories']); 
      }

     if(isset($_REQUEST['categories']) && $_REQUEST['categories'] === 'story' ) {  
        echo $blog->blogs($_REQUEST['pages'],$_REQUEST['categories']); 
      }
   
?>