<?php
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['sendMessage']) && !empty($_POST['sendMessage'])) {
    $user_id= $_SESSION['key'];
	$message= $users->test_input($_POST['sendMessage']);
	$get_id=$_POST['get_idd'];
	if (!empty($message)) {
		# code...
		$home->creates('message',array('message_to' => $get_id,'message_from' => $user_id,'message' => $message,'message_on' => date('Y-m-d H:i:s')));
    }
}

if (isset($_POST['showChatMessage']) && !empty($_POST['showChatMessage'])) {
    $user_id= $_SESSION['key'];
    $message_from= $_POST['showChatMessage'];
	$message->getChatMessage($message_from,$user_id); 
}

if (isset($_POST['showChat0']) && !empty($_POST['showChat0'])) {
    $user_id= $_SESSION['key'];
    $message_from= $_POST['showChat0'];
    $user= $home->userData($message_from);
    ?>
         <div class="card-body" style="background:#222d32">
             <span id="message-del"></span>
             <!-- Conversations are loaded here -->
             <div class="direct-chat-messages" id="messages0">
                 <!-- Message. Default to the left -->
                 <div id="chats"> </div>
             </div>
             <!--/.direct-chat-messages-->

            <!-- Contacts are loaded here -->
             <div class="direct-chat-contacts" id="contacts0">
             </div>
             <!-- /.direct-chat-pane -->
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
           <form action="#" method="post">
               <div class="input-group">
                   <input type="text" id="msg0" name="msg" name="message" placeholder="Type Message ..." class="form-control">
                   <span class="input-group-append">
                       <button type="button" id="send0" data-user="<?php echo  $message_from ;?>"  class="btn btn-primary btn-flat">Send</button>
                   </span>
               </div>
           </form>
       </div>
         <!-- /.box-footer-->
<?php } 

if (isset($_POST['search']) && !empty($_POST['search'])) {
    $user_id= $_SESSION['key'];
    $search= $users->test_input($_POST['search']);
    $result= $home->search($search);
     echo '<h4 style="padding: 0px 10px;">People</h4>
          <div class="message-recent"> 
           <ul class="contacts-list" > ';

     foreach ($result as $user) {
         if ($user['user_id'] != $user_id) { ?>
              <li class="people-message1 more" data-user="<?php echo $user['user_id'];?>">
                            <?php if (!empty($user['profile_img'])) { ?>
        						     <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$user['profile_img'];?>"  class="contacts-list-img" />
							<?php }else {?>
        						     <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>"  class="contacts-list-img" />
							<?php } ?>
                         <div class="contacts-list-info">
                             <span class="contacts-list-name">
                                 <?php echo $user['username'];?>
                             </span>
                         </div>
                         <!-- /.contacts-list-info -->
                 </li>
                 <!-- End Contact Item -->
        <?php } 
      }
      echo ' </ul>
      </div>';
}

if (isset($_POST['showListMessage0']) && !empty($_POST['showListMessage0'])) {
    $user_id= $_SESSION['key'];
    // $tweet_id= $_POST['showMessage'];
	$Msg= $message->recentMessage($user_id); 
	$notification->messagesView($user_id);
    ?>
      <div class="card-body" style="background:#222d32">
        <span id="message-del"></span>
        <!-- Conversations are loaded here -->
        <div class="direct-chat-messages" id="messages0" >
          <ul class="contacts-list" >

         <?php foreach ($Msg as $Message ) {?>
                    <!--Direct Messages-->
                  <li class="people-message1 more" data-user="<?php echo $Message['user_id'];?>">
                            <?php if (!empty($Message['profile_img'])) { ?>
        						     <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$Message['profile_img'];?>"  class="contacts-list-img" />
							<?php }else {?>
        						     <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>"  class="contacts-list-img" />
							<?php } ?>
                         <div class="contacts-list-info">
                             <span class="contacts-list-name">
                                 <?php echo $Message['username'];?>
                                 <small class="contacts-list-date float-right"><i class="fa fa-clock-o"></i> <?php echo $users->timeAgo($Message['message_on']);?></small>
                             </span>
                             <span class="contacts-list-msg"><?php echo $Message['message'];?></span>
                         </div>
                         <!-- /.contacts-list-info -->
                 </li>
                 <!-- End Contact Item -->

        <?php  }?>
             </ul >
         </div> <!--/.direct-chat-messages-->
          <!-- Contacts are loaded here -->
          <div class="direct-chat-contacts" id="contacts0">
          </div> <!-- /.direct-chat-pane -->
        </div> <!-- /.card-body -->
<?php }


if (isset($_POST['showListMessage']) && !empty($_POST['showListMessage'])) {
    $user_id= $_SESSION['key'];
    // $tweet_id= $_POST['showMessage'];
	$Msg= $message->recentMessage($user_id); 
	$notification->messagesView($user_id);
    ?>
        <div style="padding: 10px 10px;">
        	<h4>Send message to:</h4>
          	<input type="text" placeholder="Search people" class="form-control search-user0 py-4"/>
		</div>
		<div class="message-body">
        	<h4  style="padding: 0px 10px;">Recent</h4>
				<div class="message-recent">
                 <ul class="contacts-list" >

         <?php foreach ($Msg as $Message ) {?>
                    <!--Direct Messages-->
                  <li class="people-message1 more" data-user="<?php echo $Message['user_id'];?>">
                            <?php if (!empty($Message['profile_img'])) { ?>
        						     <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$Message['profile_img'];?>"  class="contacts-list-img" />
							<?php }else {?>
        						     <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>"  class="contacts-list-img" />
							<?php } ?>
                         <div class="contacts-list-info">
                             <span class="contacts-list-name">
                                 <?php echo $Message['username'];?>
                                 <small class="contacts-list-date float-right"><i class="fa fa-clock-o"></i> <?php echo $users->timeAgo($Message['message_on']);?></small>
                             </span>
                             <span class="contacts-list-msg"><?php echo $Message['message'];?></span>
                         </div>
                         <!-- /.contacts-list-info -->
                 </li>
                 <!-- End Contact Item -->

        <?php  }?>
                </ul >
             </div><!-- message-recent END-->
		</div><!-- message-body END-->
<?php }

// ***************** MESSAGE STICKY BOTOM RIGHT ***************************

if (isset($_POST['search1']) && !empty($_POST['search1'])) {
    $user_id= $_SESSION['key'];
    $search= $users->test_input($_POST['search1']);
    $result= $home->search($search);
    echo '<h4 style="padding: 0px 10px;">People</h4>
          <div class="message-recent"> 
           <ul class="contacts-list" > ';
     foreach ($result as $user) {
         if ($user['user_id'] != $user_id) { ?>
              <li class="people-message2 more" data-user="<?php echo $user['user_id'];?>">
                            <?php if (!empty($user['profile_img'])) { ?>
        						     <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$user['profile_img'];?>"  class="contacts-list-img" />
							<?php }else {?>
        						     <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>"  class="contacts-list-img" />
							<?php } ?>
                         <div class="contacts-list-info">
                             <span class="contacts-list-name">
                                 <?php echo $user['username'];?>
                             </span>
                         </div>
                         <!-- /.contacts-list-info -->
                 </li>
                 <!-- End Contact Item -->
        <?php } 
      }
      echo ' </ul>
      </div>';
}

if (isset($_POST['showChatMessage1']) && !empty($_POST['showChatMessage1'])) {
    $user_id= $_SESSION['key'];
    $message_from= $_POST['showChatMessage1'];
	$message->getChatMessage($message_from,$user_id);
} 

if (isset($_POST['showChat']) && !empty($_POST['showChat'])) {
    $user_id= $_SESSION['key'];
    $message_from= $_POST['showChat'];
    $user= $home->userData($message_from);
    ?>
        <div class="box-body" style="background:#222d32" >
             <span id="message-del1"></span>
            <!-- Conversations are loaded here -->
            <div class="direct-chat-messages" id="message" >
                <div id="chats1"> </div>
            </div> <!--/.direct-chat-messages-->

             <!-- Contacts are loaded here -->
             <div class="direct-chat-contacts" id="contacts">
             </div> <!-- /.direct-chat-pane -->
         </div> <!-- /.box-body -->
         <div class="box-footer main-active">
             <form action="#" method="post">
                 <div class="input-group">
                     <input type="text" id="msg1" name="msg" placeholder="Type Message ..." class="form-control">
                     <span class="input-group-btn">
                         <button type="button" id="send1" data-user="<?php echo  $message_from ;?>" class="btn btn-primary btn-flat">Send</button>
                     </span>
                 </div>
             </form>
         </div>
         <!-- /.box-footer-->
<?php } 


if (isset($_POST['showListMessage1']) && !empty($_POST['showListMessage1'])) {
    $user_id= $_SESSION['key'];
    // $tweet_id= $_POST['showMessage'];
	$Msg= $message->recentMessage($user_id); 
	$notification->messagesView($user_id);
    ?>
      <div class="box-body" >
         <span id="message-del1"></span>
            <!-- Conversations are loaded here -->
            <div class="direct-chat-messages" style="background:#222d32" >
            <ul class="contacts-list" >
           
         <?php foreach ($Msg as $Message ) { ?>
                    <!--Direct Messages-->
                  <li class="people-message2 more" data-user="<?php echo $Message['user_id'];?>">
                            <?php if (!empty($Message['profile_img'])) { ?>
        						     <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$Message['profile_img'];?>"  class="contacts-list-img" />
							<?php }else {?>
        						     <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>"  class="contacts-list-img" />
							<?php } ?>
                         <div class="contacts-list-info">
                             <span class="contacts-list-name">
                                 <?php echo $Message['username'];?>
                                 <small class="contacts-list-date float-right"><i class="fa fa-clock-o"></i> <?php echo $users->timeAgo($Message['message_on']);?></small>
                             </span>
                             <span class="contacts-list-msg"><?php echo $Message['message'];?></span>
                         </div>
                         <!-- /.contacts-list-info -->
                 </li>
                 <!-- End Contact Item -->
        <?php  } ?>

             </ul >
            </div> <!--/.direct-chat-messages-->
            <!-- Contacts are loaded here -->
            <div class="direct-chat-contacts" id="contacts" style="background:#222d32" >
           </div> <!-- /.direct-chat-pane -->
       </div> <!-- /.box-body -->
<?php }

if (isset($_POST['showListMessage2']) && !empty($_POST['showListMessage2'])) {
    $user_id= $_SESSION['key'];
    // $tweet_id= $_POST['showMessage'];
	$Msg= $message->recentMessage($user_id); 
	$notification->messagesView($user_id);
    ?>
        <div style="padding: 10px 10px;">
        	<h4>Send message to:</h4>
          	<input type="text" placeholder="Search people" class="form-control search-user1 py-4"/>
		</div>
		<div class="message-body">
        	<h4  style="padding: 0px 10px;">Recent</h4>
				<div class="message-recent">
                 <ul class="contacts-list" >

         <?php foreach ($Msg as $Message ) {?>
                    <!--Direct Messages-->
                  <li class="people-message2 more" data-user="<?php echo $Message['user_id'];?>">
                            <?php if (!empty($Message['profile_img'])) { ?>
        						     <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$Message['profile_img'];?>"  class="contacts-list-img" />
							<?php }else {?>
        						     <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>"  class="contacts-list-img" />
							<?php } ?>
                         <div class="contacts-list-info">
                             <span class="contacts-list-name">
                                 <?php echo $Message['username'];?>
                                 <small class="contacts-list-date float-right"><i class="fa fa-clock-o"></i> <?php echo $users->timeAgo($Message['message_on']);?></small>
                             </span>
                             <span class="contacts-list-msg"><?php echo $Message['message'];?></span>
                         </div>
                         <!-- /.contacts-list-info -->
                 </li>
                 <!-- End Contact Item -->

        <?php  }?>
                </ul >
             </div><!-- message-recent END-->
		</div><!-- message-body END-->
<?php }


if (isset($_POST['deleteMessage']) && !empty($_POST['deleteMessage'])) {
    $user_id= $_SESSION['key'];
	$message_id= $users->test_input($_POST['deleteMessage']);
	$message->deleteMsg($message_id,$user_id);
}

if (isset($_POST['DeleteChatpopup']) && !empty($_POST['DeleteChatpopup'])) {
    $user_id= $_SESSION['key'];
    $message_from= $_POST['DeleteChatpopup'];
    ?>
    <div class="alert alert-success alert-dismissible fade show text-center">
         <button class="close" data-dismiss="alert" type="button">
             <span>&times;</span>
         </button>

          	<div class="message-delt">
          		<strong>Are you sure you want to delete this message? </strong>
          		<div class="float-right">
          				<button class="cancel btn btn-dark btn-sm" value="Cancel">Cancel</button>
          				<button class="delete btn btn-danger btn-sm" value="Delete">Delete</button>
          		</div>
          	</div>
    </div>
<?php } ?>