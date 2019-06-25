<?php 
session_start();
include "core/init.php";

if (isset($_GET['username']) == true && empty($_GET['username']) == false) {
    # code...
    $username= $users->test_input($_GET['username']);
    $uprofileId= $home->usersNameId($username);
	$profileData= $home->userData($uprofileId['user_id']);

   	if ($users->loggedin() == true) {
        $user_id= $_SESSION['key'];

        $jobs= $home->jobsData($_SESSION['key']);
        $fundraisingV= $home->fundraisingData($_SESSION['key']);
        $eventV= $home->eventsData($_SESSION['key']);
        $blogV= $home->blogData($_SESSION['key']);
        $saleV= $home->saleData($_SESSION['key']);

		$notific= $notification->getNotificationCount($user_id);
		$notification->notificationsView($user_id);
	}else{
        $user_id= $profileData['user_id'];
	}

	$user= $home->userData($user_id);
	
    if (!isset($profileData['user_id'])) {
        # code...
        header('Location: '.LOGIN.'');
    }
}

if(!empty($user['language'])){
    $_SESSION['language'] = $user['language'];
}

 if (!isset($_SESSION['language'])){
 		$_SESSION['lang'] = "en";
}else if (isset($_SESSION['language']) && !empty($_SESSION['language'])) {
		$_SESSION['lang'] = $_SESSION['language'];
}
 require_once "assets/languages/".$_SESSION['lang']. ".php";
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    