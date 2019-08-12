<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Crowfund extends home {

     public function crowfundraisings($pages,$categories,$user_id)
    {
        $pages= $pages;
        $categories= $categories;
        
        if($pages === 0 || $pages < 1){
            $showpages = 0 ;
        }else{
            $showpages = ($pages*8)-8;
        }
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN crowfundraising C ON C. user_id2 = u. user_id WHERE C. categories_crowfundraising ='$categories'  ORDER BY created_on2 Desc Limit $showpages,8");
        ?>
            <div class="row mt-3">
        <?php while($row= $query->fetch_array()) { 
              $likes= $this->Crowfundraisinglikes($user_id,$row['fund_id']); ?>

               <div class="col-md-3 mb-3">
            
            <div class="card more" >
                <img class="card-img-top" width="242px" id="crowfund-readmore" data-crowfund="<?php echo $row['fund_id'] ;?>" height="160px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/crowfund/<?php echo $row['photo'] ;?>" >
                <div class="card-body">
                    <div class="p-0 font-weight-bold">Funding 
                        <?php if($likes['like_on'] == $row['fund_id']){ ?>
                            <span <?php if(isset($_SESSION['key'])){ echo 'class="unlike-crowfundraising-btn more float-right text-sm  mr-1"'; }else{ echo 'id="login-please" class="more float-right" data-login="1"'; } ?> data-fund="<?php echo $row['fund_id']; ?>"  data-user="<?php echo $row['user_id']; ?>"><span class="likescounter "><?php echo $row['likes_counts'] ;?></span> <i class="fa fa-heart"  ></i></span>
                        <?php }else{ ?>
                            <span <?php if(isset($_SESSION['key'])){ echo 'class="like-crowfundraising-btn more float-right text-sm mr-1"'; }else{ echo 'id="login-please" class="more float-right"  data-login="1"'; } ?> data-fund="<?php echo $row['fund_id']; ?>"  data-user="<?php echo $row['user_id']; ?>" ><span class="likescounter"> <?php if ($row['likes_counts'] > 0){ echo $row['likes_counts'];}else{ echo '';} ?></span> <i class="fa fa-heart-o" ></i> </span>
                        <?php } ?>
                    </div>
                    <hr>
                    <a href="javascript:void(0);"  id="crowfund-readmore" data-crowfund="<?php echo $row['fund_id'] ;?>" class="card-text h5"><?php echo $row['photo_Title_main'] ;?></a>
                    <!-- Kogera umusaruro muguhinga -->
                    <p class="text-muted"><?php echo $row['text']; ?></p>
                    <!-- turashaka kongera umusaruro mu buhinzi tukabona ubufasha buhagije no kubona imbuto -->

                    <div class="text-muted mb-1"><?php echo $categories; ?></div>
                    <div class="card-text">
                    <!-- 40,000 -->
                        <span class="font-weight-bold"><?php echo number_format($row['money_raising'],2); ?> Frw</span>
                         Raised
                        <div class="float-right"><?php echo $row['percentage']; ?>%</div>
                        <!-- 40 -->
                    </div>
                     <div class="progress clear-float " style="height: 10px;">
                        <div class="progress-bar  bg-success" role="progressbar" style="width: <?php echo $row['percentage']; ?>%" aria-valuenow="<?php echo $row['percentage']; ?>" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    
                    <div class="clear-float">
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        <span class="text-muted"><?php echo $this->timeAgo($row['created_on2']); ?></span>
                        <!-- 13 days Left -->
                    </div>
                </div>
            </div> <!-- card -->
                 
        </div> <!-- col -->

        <?php } 

        $query1= $mysqli->query("SELECT COUNT(*) FROM users U Left JOIN crowfundraising C ON  C. user_id2 = u. user_id WHERE C. categories_crowfundraising ='$categories'  ORDER BY created_on2 Desc ");
        $row_Paginaion = $query1->fetch_array();
        $total_Paginaion = array_shift($row_Paginaion);
        $post_Perpages = $total_Paginaion/8;
        $post_Perpage = ceil($post_Perpages); ?>

    </div>
    <?php if($post_Perpage > 1){ ?>
    <nav>
        <ul class="pagination justify-content-center">
            <?php if ($pages > 1) { ?>
                <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="crowfundraising_FecthRequest('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
            <?php } ?>
            <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                    if ($i == $pages) { ?>
                 <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="crowfundraising_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php }else{ ?>
                <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="crowfundraising_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
            <?php } } ?>
            <?php if ($pages+1 <= $post_Perpage) { ?>
                <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="crowfundraising_FecthRequest('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
            <?php } ?>
        </ul>
    </nav>
   <?php } ?>
   
   <?php }

    public function crowfundFecthReadmore($fund_id,$user_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN crowfundraising C ON C. user_id2 = u. user_id WHERE C. fund_id = '$fund_id' ");
        $row= $query->fetch_array();
        return $row;
    }

      public function comments($tweet_id)
    {
        $mysqli= $this->database;
        $query= "SELECT * FROM comment_crowfunding LEFT JOIN users ON comment_by=user_id WHERE comment_on = $tweet_id ORDER BY comment_at DESC";
        $result= $mysqli->query($query);
        $comments= array();
        while ($row= $result->fetch_assoc()) {
             $comments[] = $row;
        }
        return $comments;
    }

       public function addLikeCrowFundraising($user_id,$fund_id,$get_id)
    {
        $mysqli= $this->database;
        $query= "UPDATE crowfundraising SET likes_counts = likes_counts +1 WHERE fund_id= $fund_id ";
        $mysqli->query($query);
        // if ($get_id != $user_id) {
        //     Notification::SendNotifications($get_id,$user_id,$fund_id,'likes');
        // }
        $this->creates('crowfundraising_like',array('like_by' => $user_id ,'like_on' => $fund_id));
    }

      public function unLikeCrowFundraising( $user_id,$fund_id, $get_id)
    {
        $mysqli= $this->database;
        $query= "UPDATE crowfundraising SET likes_counts = likes_counts -1 WHERE fund_id= $fund_id ";
        $mysqli->query($query);

        $query= "DELETE FROM crowfundraising_like WHERE like_by = $user_id AND like_on = $fund_id ";
        $mysqli->query($query);

    }

       public function addLikeCrowFundraisingUsercomment($user_id,$comment_id,$get_id)
    {
        $mysqli= $this->database;
        $query= "UPDATE comment_crowfunding SET likes_counts_ = likes_counts_ +1 WHERE comment_id= $comment_id ";
        $mysqli->query($query);
        // if ($get_id != $user_id) {
        //     Notification::SendNotifications($get_id,$user_id,$fund_id,'likes');
        // }
        $this->creates('crowfundraising_comment_like',array('like_by_' => $user_id ,'like_on_' => $comment_id));
    }

      public function unLikeCrowFundraisingUsercomment($user_id,$comment_id, $get_id)
    {
        $mysqli= $this->database;
        $query= "UPDATE comment_crowfunding SET likes_counts_ = likes_counts_ -1 WHERE comment_id= $comment_id ";
        $mysqli->query($query);

        $query= "DELETE FROM crowfundraising_comment_like WHERE like_by_ = $user_id AND like_on_ = $comment_id ";
        $mysqli->query($query);

    }

    
      public function Crowfundraisinglikes($user_id,$tweet_id)
    {
        $mysqli= $this->database;
        $query= "SELECT * FROM crowfundraising_like WHERE like_by = $user_id AND like_on = $tweet_id";
        $result= $mysqli->query($query);

        $fetchCountLikes= array();
        while ($row= $result->fetch_assoc()) {
             $fetchCountLikes[] = array(
            'like_id' => $row['like_id'],
            'like_by' => $row['like_by'],
            'like_on' => $row['like_on']
           );
        }
        foreach ($fetchCountLikes as $fetchLikes) {
            # code...
            return $fetchLikes; // Return the $contacts array
        }
    }

      public function Crowfundraising_comment_like($user_id,$tweet_id)
    {
        $mysqli= $this->database;
        $query= "SELECT * FROM crowfundraising_comment_like WHERE like_by_ = $user_id AND like_on_ = $tweet_id";
        $result= $mysqli->query($query);

        $fetchCountLikes= array();
        while ($row= $result->fetch_assoc()) {
             $fetchCountLikes[] = array(
            'like_id_' => $row['like_id_'],
            'like_by_' => $row['like_by_'],
            'like_on_' => $row['like_on_']
           );
        }
        foreach ($fetchCountLikes as $fetchLikes) {
            # code...
            return $fetchLikes; // Return the $contacts array
        }
    }

    public function CountcrowFundraisingComment($fund_id){
      $db =$this->database;
      $query="SELECT COUNT(*) FROM comment_crowfunding WHERE comment_on= $fund_id";
      $sql= $db->query($query);
      $row_Comment = $sql->fetch_array();
      $total_Comment= array_shift($row_Comment);
      $array= array(0,$total_Comment);
      $total_Comment= array_sum($array);
      echo $total_Comment;
    }

}

$crowfund = new Crowfund;
?>