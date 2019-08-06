<?php 
session_start();
include('../init.php');
$users->preventUsersAccess($_SERVER['REQUEST_METHOD'],realpath(__FILE__),realpath($_SERVER['SCRIPT_FILENAME']));

if (isset($_POST['comments']) && !empty($_POST['comments'])) {
    $user_id= $_SESSION['key'];
    $crowfund_id= $_POST['crowfund_id'];
    $commentz= $users->test_input($_POST['comments']);

    if (!empty($commentz)) {
        # code...
        $home->createsComment('comment_crowfunding',array('comment' => $commentz,'comment_on' => $crowfund_id,'comment_by' => $user_id,'comment_at' => date('Y-m-d H:i:s')));
        $commentx= $crowfund->comments($crowfund_id);
		 # code..
		foreach ($commentx as $user) { ?>
            <div class="user-block mt-3">
                <div class="user-blockImgBorder">
                <div class="user-blockImg">
                        <?php if (!empty($user['profile_img'])) {?>
                        <img src="<?php echo BASE_URL_LINK ;?>image/users_profile_cover/<?php echo $user['profile_img'] ;?>" alt="User Image">
                        <?php  }else{ ?>
                        <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>" alt="User Image">
                        <?php } ?>
                </div>
                </div>
                <span class="username">
                    <a href="<?php echo BASE_URL_PUBLIC.$user['username'] ;?>"> <?php echo $user['username']; ?> comment on - <?php echo $users->timeAgo($user['comment_at']) ;?></a>
                    <span class="float-right">44 <i class="fa fa-heart"></i></span>
                    <!-- //Jonathan Burke Jr. -->
                </span>
                <span class="description"><?php echo $user['comment']; ?> </span>
            </div> <!-- /.user-block -->
    <?php }
    }
}
?>