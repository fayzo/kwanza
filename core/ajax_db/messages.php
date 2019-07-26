<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['deleteMessage']) && !empty($_POST['deleteMessage'])) {
    $user_id= $_SESSION['key'];
	$message_id= $users->test_input($_POST['deleteMessage']);
	$message->deleteMsg($message_id,$user_id);
}

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
    $message->getMessage($message_from,$user_id);
}

if (isset($_POST['showMessage']) && !empty($_POST['showMessage'])) {
    $user_id= $_SESSION['key'];
    // $tweet_id= $_POST['showMessage'];
	$Msg= $message->recentMessage($user_id); 
	$notification->messagesView($user_id);
    ?>

    <div class="popup-message-wrap">
        <input id="popup-message-tweet" type="checkbox" checked="unchecked"/>
      <div class="wrap2">
        <div class="message-send">
		  <div class="card ">
			<div class="card-body main-active text-center py-0">
				<label class="float-right" for="popup-message-tweet" ><i class="fa fa-times" aria-hidden="true"></i></label>
				<label class="float-left" for="mass"><i class="fa fa-angle-left" aria-hidden="true"></i></label>
				<div class="h4 pt-3">New message</div>
			</div>
		  </div>
		  <div class="pl-2">
			    <div class="message-input">
        	    	<h4>Send message to:</h4>
        	      	<input type="text" placeholder="Search people" class="search-user py-4"/>
        	    	<ul class="search-result down">
        	    			
					</ul>
				</div>
				<div class="message-body">
        		<h4>Recent</h4>
				<div class="message-recent">
                <?php foreach ($Msg as $Message ) {?>
        			<!--Direct Messages-->
        			<div class="people-message p-3" data-user="<?php echo $Message['user_id'];?>">
        				<div class="people-inner">
        					<div class="people-img">
							<?php if (!empty($Message['profile_img'])) { ?>
        						     <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$Message['profile_img'];?>" class="img" />
							<?php }else {?>
        						     <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>"  class="img" />
							<?php } ?>
        					</div>
        					<div class="name-right2">
        						<span><a href="#"><?php echo $Message['username'];?></a></span>
        					</div>
        					
        					<span> 
        						<?php echo $users->timeAgo($Message['message_on']);?>
        					</span>
        				</div>
        			</div>
        			<!--Direct Messages-->

			   <?php  }?>
			   </div><!-- message-recent END-->
			   </div><!-- message-body END-->
			</div><!-- card-body END-->
				<div class="border-top-0 bg-white">
        	        	<span class="float-right btn btn-primary m-2"> Next </span>
				</div><!-- card FOOTER END-->
        </div><!-- MESSGAE send ENDS-->
         
         
        	<input id="mass" type="checkbox" checked="unchecked" />
        	<div class="back">
				<div class="card  border-bottom-0">
					<div class="card-body main-active py-2">
					    <span class="float-left "><h2> Direct message </h2></span>
        			    <span class="float-right">
        			    	<label for="mass"  class="btn btn-primary  mr-2 py-2 new-message-btn">New messages</label>
        			    	<label for="popup-message-tweet"><i class="fa fa-times" aria-hidden="true"></i></label>
        			    </span>
					</div>
				</div>
				<div>
                        <?php foreach ( $Msg as $Message ) { 
                            ?>   
        			        <!--Direct Messages-->
        			        	<div class="people-message p-3" data-user="<?php echo $Message['user_id'];?>">
        			        		<div class="people-inner">
        			        			<div class="people-img" style="position:relative;">		
					        				<?php if (!empty($Message['profile_img'])) { ?>
        			        			     <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$Message['profile_img'];?>" class="img" />
					        		        <?php }else {?>
        			        		        	     <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>"  class="img"/>
					        		        <?php } ?>

											<?php if ($Message['chat'] == 'on') { ?>
														<img src="<?php echo BASE_URL_LINK ;?>image/color/green.png" width="15px" style="position:absolute;bottom:0px;right:0px;">
											<?php }else {?>
														<img src="<?php echo BASE_URL_LINK ;?>image/color/rose.png" width="15px" style="position:absolute;bottom:0px;right:0px;">
											<?php } ?>
        			        			</div>
        			        			<div class="name-right2">
        			        				<span><a href="#"><?php echo $Message['username'];?></a></span>
        			        			</div>
        			        			<div class="msg-box">
        			        			   <?php echo $Message['message'];?>
        			        			</div>
        		        				<span>
        		        				    <?php echo $users->timeAgo($Message['message_on']);?>
        		        				</span>
        		        			</div>
        		        		</div>
        		        		<!--Direct Messages-->
                       <?php  }?>

					</div><!--card-body-->
        	</div><!--back -->
	  </div>
	   <!-- Wrap 2 -->
    </div>
        <!-- POPUP MESSAGES END HERE -->
<?php }


if (isset($_POST['showMessage1']) && !empty($_POST['showMessage1'])) {
    $user_id= $_SESSION['key'];
    // $tweet_id= $_POST['showMessage'];
	$Msg= $message->recentMessage($user_id); 
	$notification->messagesView($user_id);
    ?>

         <?php foreach ($Msg as $Message ) {?>
					<!--Direct Messages-->
				<li class="people-message" data-user="<?php echo $Message['user_id'];?>" > <!-- start message -->
                    <a href="#">
                      <div class="pull-left" style="position:relative;">
						  	<?php if (!empty($Message['profile_img'])) { ?>
        						     <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$Message['profile_img'];?>"  class="rounded-circle img"  />
							<?php }else {?>
        						     <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>"  class="rounded-circle img" />
							<?php } ?>

							<?php if ($Message['chat'] == 'on') { ?>
										<img src="<?php echo BASE_URL_LINK ;?>image/color/green.png" width="15px" style="position:absolute;bottom:0px;right:0px;">
							<?php }else {?>
										<img src="<?php echo BASE_URL_LINK ;?>image/color/rose.png" width="15px" style="position:absolute;bottom:0px;right:0px;">
							<?php } ?>
                      </div>
                      <h4>
						  <?php echo $Message['username'];?>
                        <small><i class="fa fa-clock-o"></i> <?php echo $users->timeAgo($Message['message_on']);?></small>
                      </h4>
                      <p><?php echo $Message['message'];?></p>
                    </a>
				</li> <!-- end message -->

		<?php  }?>
<?php }


if (isset($_POST['showChatPopup']) && !empty($_POST['showChatPopup'])) {
    $user_id= $_SESSION['key'];
    $message_from= $_POST['showChatPopup'];
    $Msg= $message->recentMessage($user_id); 
    $user= $home->userData($message_from);
    ?>
    
    <!-- MESSAGE CHAT START -->
    <div class="popup-message-body-wrap">
    <input id="popup-message-tweet" type="checkbox" checked="unchecked"/>
    <input id="message-body" type="checkbox" checked="unchecked"/>
    <div class="wrap3">
    <div class="message-send2">
	            <div class="card" >
				<div class="card-body main-active message-header2">
    		            <label class="back-messages float-left" for="mass"><i class="fa fa-angle-left" aria-hidden="true"></i></label>
    		            <label class="close-msgPopup float-right" for="message-body" ><i class="fa fa-times" aria-hidden="true"></i></label> 
						<div class="float-center">
    		            	<div class="message-head-img">
							<?php if (!empty($user['profile_img'])) { ?>
								<div style="position:relative;float: left;">		
    		            	       <img src="<?php echo BASE_URL_LINK."image/users_profile_cover/".$user['profile_img'];?>" class="img" />
									<?php if ($user['chat'] == 'on') { ?>
												<img src="<?php echo BASE_URL_LINK ;?>image/color/green.png" width="15px" style="position:absolute;bottom:0px;right:0px;">
									<?php }else {?>
												<img src="<?php echo BASE_URL_LINK ;?>image/color/rose.png" width="15px" style="position:absolute;bottom:0px;right:0px;">
									<?php } ?>
								</div>
								 <div class="d-inline-block pt-1 pl-3">
								   <div><?php echo $user['username']; ?></div>
								   <div><i style="font-size: 20px;" class="fa fa-envelope-o"></i> Messages</div>
								 </div>
							<?php }else { ?>
								<div  style="position:relative;float: left;">		

									<img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>" class="img" />
									<?php if ($user['chat'] == 'on') { ?>
												<img src="<?php echo BASE_URL_LINK ;?>image/color/green.png" width="15px" style="position:absolute;bottom:0px;right:0px;">
									<?php }else {?>
												<img src="<?php echo BASE_URL_LINK ;?>image/color/rose.png" width="15px" style="position:absolute;bottom:0px;right:0px;">
									<?php } ?>
								</div>
								 <div class="d-inline-block pt-1 pl-3">
								   <div><?php echo $user['username']; ?></div>
								   <div><i style="font-size: 20px;" class="fa fa-envelope-o"></i> Messages</div>
								 </div>
			            	<?php } ?>
    		            	</div>
			            </div>
			
    		            <div class="message-del">
    		            	<div class="message-del-inner">
    		            		<h4>Are you sure you want to delete this message? </h4>
    		            		<div class="message-del-box">
    		            			<span>
    		            				<button class="cancel btn btn-dark btn-sm" value="Cancel">Cancel</button>
    		            			</span>
    		            			<span>	
    		            				<button class="delete btn btn-danger btn-sm" value="Delete">Delete</button>
    		            			</span>
    		            		</div>
    		            	</div>
			            </div>
				</div><!--card-header ENDS-->
				</div><!--card ENDS-->
				  <div class="main-msg-wrap">
                     <div id="chat" class="main-msg-inner">
                    
     	             </div>
     	          </div>
				<!-- <div class="card-footer"> -->
				  <div class="main-msg-footer bottom-0">
    		       <div class="main-msg-footer-inner">
    	            <ul>
    	            	<li><textarea id="msg" name="msg" placeholder="Write some thing!"></textarea></li>
    	            	<li><input id="msg-upload" type="file" value="upload"/><label for="msg-upload"><i class="fa fa-camera" aria-hidden="true"></i></label></li>
    	            	<li><input id="send" data-user="<?php echo  $message_from ;?>" type="submit" value="Send"/> </li>
    	            </ul>
				   </div><!--main-msg-footer-inner-->
				  </div><!--main-msg-footer-->
				<!--card-footer ENDS-->

    </div> <!--MASSGAE send ENDS-->
    </div> <!--wrap 3 end-->
    </div><!--POP UP message WRAP END-->
    
    <!-- message Chat popup end -->
<?php }
  ?>