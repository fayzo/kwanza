<?php } else { ?> 

                                    <div class="user-block">
                                       <div class="user-blockImgBorder">
                                        <div class="user-blockImg">
                                              <?php if (!empty($data['profile_img'])) {?>
                                              <img src="<?php echo BASE_URL_LINK ;?>image/users_profile_cover/<?php echo $data['profile_img'] ;?>" alt="User Image">
                                              <?php  }else{ ?>
                                                <img src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>" alt="User Image">
                                              <?php } ?>
                                        </div>
                                        </div>
                                        <span class="username tooltips">
                                           <ul><li >
                                            <a href="<?php echo BASE_URL_PUBLIC.$data['username'] ;?>" ><?php echo $data['firstname']." ".$data['lastname'] ;?></a>
                                             <ul><li><?php echo Follow::tooltipProfile($data['user_id'],$user_id,$data['user_id']); ?></li></ul>
                                            </li></ul>
                                        </span>
                                        <span class="description">Shared publicly - <?php echo $home->timeAgo($data['posted_on']); ?></span>
                                    </div>
                                    <!-- /.user-block -->
                                    <?php 
                                    $expodefile = explode("=",$data['tweet_image']);
                                    $fileActualExt= array();
                                    for ($i=0; $i < count($expodefile); ++$i) { 
                                        $fileActualExt[]= strtolower(substr($expodefile[$i],-3));
                                    }
                                    $allower_ext = array('jpeg', 'jpg', 'png', 'gif', 'bmp', 'pdf' , 'doc' , 'ppt'); // valid extensions
                                    if (array_diff($fileActualExt,$allower_ext) == false) {
                                    // if (!empty($data['tweet_image'])) {
                                        $expode = explode("=",$data['tweet_image']);
                                        $count = count($expode); ?>

                                     <?php if ($count === 1) { ?>

                                     <div class="row mb-1">
                                            <?php $expode = explode("=",$data['tweet_image']); ?>
                                        <div class="col-sm-12 more">
                                            <img class="img-fluid imagePopup"
                                                src="<?php echo BASE_URL_PUBLIC."uploads/posts/".$expode[0] ;?>"
                                                alt="Photo"  data-tweet="<?php echo $data["tweet_id"] ;?>">
                                        </div>
                                     </div>


                                    <?php
                                     }else if($count === 2){?>
                                        <div class="row mb-2 more">
                                                <?php $expode = explode("=",$data['tweet_image']);
                                                  $splice= array_splice($expode,0,2);
                                                  for ($i=0; $i < count($splice); ++$i) { 
                                                  ?>
                                            <div class="col-sm-6">
                                                <img class="img-fluid mb-2 imagePopup"
                                                    src="<?php echo BASE_URL_PUBLIC."uploads/posts/".$splice[$i] ;?>"
                                                    alt="Photo"  data-tweet="<?php echo $data["tweet_id"] ;?>">
                                            </div>
                                                <?php }?>
                                        </div>

                                    <?php }else if($count == 3 || $count > 3){?>
                                     <div class="row mb-2 more">
                                            <?php $expode = explode("=",$data['tweet_image']);
                                              $splice= array_splice($expode,0,1);
                                              ?>
                                        <div class="col-sm-6">
                                            <img class="img-fluid mb-2 imagePopup"
                                                src="<?php echo BASE_URL_PUBLIC."uploads/posts/".$splice[0] ;?>"
                                                alt="Photo"  data-tweet="<?php echo $data["tweet_id"] ;?>">
                                        </div>
                                        <!-- /.col -->

                                        <div class="col-sm-6">
                                            <div class="row mb-2 more">
                                                    <?php 
                                                    $expode = explode("=",$data['tweet_image']);
                                                    // var_dump($expode);
                                                    $splice= array_splice($expode,1,2);
                                                    // var_dump($splice);
                                                     for ($i=0; $i < count($splice); ++$i) { ?>
                                                <div class="col-sm-6">
                                                    <img class="img-fluid mb-2 imagePopup"
                                                        src="<?php echo BASE_URL_PUBLIC."uploads/posts/".$splice[$i] ;?>"
                                                        alt="Photo"  data-tweet="<?php echo $data["tweet_id"] ;?>">
                                                </div>
                                                    <?php }?>

                                            </div>
                                            <!-- /.row -->
                                            <div class="row more">
                                                    <?php 
                                                    $expode = explode("=",$data['tweet_image']);
                                                    $splice= array_splice($expode,3,2);
                                                     for ($i=0; $i < count($splice); ++$i) { ?>
                                                <div class="col-sm-6">
                                                    <img class="img-fluid mb-2 imagePopup"
                                                        src="<?php echo BASE_URL_PUBLIC."uploads/posts/".$splice[$i] ;?>"
                                                        alt="Photo"  data-tweet="<?php echo $data["tweet_id"] ;?>">
                                                </div>
                                                    <?php }?>

                                            </div>
                                            <!-- /.row -->
                                        </div>
                                        <!-- /.col -->
                                    </div>
                                    <!-- /.row -->

                                    <!-- /.row -->
                                    <div class="row">
                                       <div class="col-sm-12">
                                           <span class="btn btn-primary btn-sm float-right imageViewPopup more"  data-tweet="<?php echo $data["tweet_id"] ;?>" >View More photo <i class="fa fa-picture-o"></i>  >>></span>
                                        </div>
                                    </div>
                                    <!-- /.row -->
                                <?php }
                                     
                                    }else if(array_diff($fileActualExt,$allower_ext)[0] == 'mp4') { ?>
                                    <div class="row mb-2" >
                                    <div class="col-12" >
                                    <video controls preload="metadata" width="500px"  height="280px" preload="none">
                                        <source src="<?php echo BASE_URL_PUBLIC."uploads/posts/".$data['tweet_image'] ;?>" type="video/mp4"> 
                                        <!-- <source src="video/boatride.webm" type="video/webm">  -->
                                            <!-- fallback content here 
                                            poster="< ?php echo BASE_URL_PUBLIC."uploads/posts/".$data['tweet_image'] ;?>"
                                            object-fit="contain"
                                           object-fit= fill
                                           object-fit= none
                                           object-fit= cover
                                           preload=none 
                                           preload=metadata
                                            -->
                                    </video>
                                    </div>
                                    </div>
                              <?php }else if(array_diff($fileActualExt,$allower_ext)[0] == 'webm'){ ?>
                                 <div class="row mb-2">
                                    <div class="col-12">
                                    <video controls poster="<?php echo BASE_URL_PUBLIC."uploads/posts/".$data['tweet_image'] ;?>" width="auto" height="auto">
                                        <source src="<?php echo BASE_URL_PUBLIC."uploads/posts/".$data['tweet_image'] ;?>" type="video/webm"> 
                                            <!-- fallback content herehere -->
                                    </video>
                                     </div>
                                    </div>
                              <?php }else if(array_diff($fileActualExt,$allower_ext)[0] == 'mp3'){ ?>
                                <div class="row mb-2">
                                    <div class="col-12">
                                    <audio controls>
                                         <source src="<?php echo BASE_URL_PUBLIC."uploads/posts/".$data['tweet_image'] ;?>" type="audio/mp3">
                                             <!-- fallback content here -->
                                     </audio>
                                      </div>
                                    </div>
                              <?php }else if(array_diff($fileActualExt,$allower_ext)[0] == 'ogg'){ ?>
                                    <audio controls>
                                         <source src="<?php echo BASE_URL_PUBLIC."uploads/posts/".$data['tweet_image'] ;?>" type="audio/ogg"> 
                                             <!-- fallback content here -->
                                     </audio>
                              <?php }?>

                                  <p id="link_">
                                     <?php echo $home->getTweetLink($data['status']) ;?>
                                   </p>
                             <?php } ?>

                              <ul class="mt-2 list-inline" style="list-style-type: none; margin-bottom:10px;">  
                                        
                                        <?php if($data['tweet_id'] == $retweet['retweet_id']){ ?>
                                         <li class=" list-inline-item"><button class="share-btn retweeted text-sm mr-2" data-tweet="<?php echo $data['tweet_id']; ?>"  data-user="<?php echo $data['tweetBy']; ?>">
                                         <i class="fa fa-share green mr-1" style="color: green"> <span class="retweetcounter"><?php echo $retweet["retweet_counts"];?></span></i>
                                            Share</button></li>
                                        <?php }else{ ?>
                                               <li  class=" list-inline-item"> <button class="share-btn retweet text-sm mr-2" data-tweet="<?php echo $data['tweet_id']; ?>"  data-user="<?php echo $data['tweetBy']; ?>">
                                                <?php if($retweet["retweet_counts"] > 0){ echo '<i class="fa fa-share mr-1" style="color: green"> <span class="retweetcounter">'.$retweet["retweet_counts"].'</span></i>' ; }else{ echo '<i class="fa fa-share mr-1"> <span class="retweetcounter">'.$retweet["retweet_counts"].'</span></i>';} ?>
                                                   Share</button></li>
                                         <?php } ?>

                                        <?php if($likes['like_on'] == $data['tweet_id']){ ?>
                                            <li  class="list-inline-item"><button class="unlike-btn text-sm" data-tweet="<?php echo $data['tweet_id']; ?>"  data-user="<?php echo $data['tweetBy']; ?>">
                                            <i class="fa fa-thumbs-up mr-1" style="color: red"> <span class="likescounter"><?php echo $data['likes_counts'] ;?></span></i>
                                                Like</button></li>
                                        <?php }else{ ?>
                                                <li  class="list-inline-item"> <button class="like-btn text-sm" data-tweet="<?php echo $data['tweet_id']; ?>"  data-user="<?php echo $data['tweetBy']; ?>">
                                                <i class="fa fa-thumbs-o-up mr-1"> <span class="likescounter"><?php if ($data['likes_counts'] > 0){ echo $data['likes_counts'];}else{ echo '';} ?></span></i>
                                                    Like</button></li>
                                        <?php } ?>

                                         <span style="float:right">
                                    
                                          <li  class=" list-inline-item"><button class="comments-btn text-sm" data-target="#a<?php echo  $data["tweet_id"];?>" data-toggle="collapse">
                                              <i class="fa fa-comments-o mr-1"></i> Comments (<?php echo $comment->CountsComment($data["tweet_id"]); ?>)
                                          </button></li>
                                        

                                         <?php if ($data["tweetBy"] == $user_id){ ?>
                                            <li  class=" list-inline-item">
                                                <ul class="deleteButt" style="list-style-type: none; margin:0px;" >
                                                    <li>
                                                       <a href="javascript:void(0)" class="more"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                                                        <ul style="list-style-type: none; margin:0px;" >
											                <li style="list-style-type: none; margin:0px;"> 
                        					                    <label class="deleteTweet" data-tweet="<?php echo  $data["tweet_id"];?>"  data-user="<?php echo $data["tweetBy"];?>" >Delete </label>
                                                           </li>
                                                       </ul>
                                                    </li>
                                                </ul>
                                            </li>
                                         <?php }else{ echo '';}?>
                                         </span>
                                </ul>

                                <div class="input-group">
                                    <input class="form-control form-control-sm" id="commentHome<?php echo $data['tweet_id'];?>" type="text"
                                        name="comment"  placeholder="Reply to  <?php echo $data['username'] ;?>" >
                                    <div class="input-group-append">
                                        <span class="input-group-text btn" style="padding: 0px 10px;" 
                                            aria-label="Username" aria-describedby="basic-addon1" id="post_HomeComment"  data-tweet="<?php echo $data['tweet_id'];?>">
                                            <span class="fa fa-arrow-right text-muted" ></span>
                                        </span>
                                    </div>
                                </div> <!-- input-group -->

                                   <div class="card collapse hide" id="a<?php echo  $data["tweet_id"];?>">
                                      <div class="card-body" style="padding-right:0">
                                        <?php if (!empty($comment)) { ?>
                                        <h5><i>Comments (<?php echo $comment->CountsComment($data["tweet_id"]); ?>)</i></h5>
                                        <span id='responseDeletePostSeconds0'></span>

                                         <div class="direct-chat-message direct-chat-messageS large-2" >
                                         <span class="commentsHome" id="commentsHome<?php echo $data['tweet_id'];?>">
                                           <?php foreach ($comment as $comments) { 
                                               $second_likes= $comment->Like_second($user_id,$comments['comment_id']);
                                               $dislikes= $comment->dislike($user_id,$comments['comment_id']);
                                               ?>
                                                <!-- Conversations are loaded here -->
                                                  <!-- Message. Default to the left -->
                                                    <div class="direct-chat-msg" id="userComment0<?php echo $comments['comment_id']; ?>">
                                                        <div class="direct-chat-info clearfix">
                                                            <span class="direct-chat-name float-left"><?php echo $comments["username"] ;?></span>
                                                            <span class="direct-chat-timestamp float-right"><?php echo $home->timeAgo($comments['comment_at']); ?></span>
                                                        </div>
                                                        <!-- /.direct-chat-info -->
                                                         <?php if (!empty($comments["profile_img"])) {?>
                                                          <img class="direct-chat-img" src="<?php echo BASE_URL_LINK ;?>image/users_profile_cover/<?php echo $comments["profile_img"] ;?>" alt="message user image">
                                                         <?php  }else{ ?>
                                                          <img class="direct-chat-img" src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>" alt="message user image">
                                                         <?php } ?>
                                                        <!-- /.direct-chat-img -->
                                                        <div class="direct-chat-text">
                                                         <?php echo  $home->getTweetLink($comments["comment"]) ;?>
                                                      <!-- /.direct-chat-text -->
                                                      <ul class="list-inline clear-float" style="list-style-type: none; margin-bottom:0;">  
                                                       
                                                        <?php if($second_likes['like_on_'] == $comments['comment_id']) { ?>
                                                                <li  class=" list-inline-item"><button class="unlike-second-btn text-sm" data-comment="<?php echo $comments['comment_id']; ?>" data-user="<?php echo $comments['comment_by']; ?>" >
                                                                <i class="fa fa-heart-o mr-1" style="color: red"> <span class="likescounter_"><?php echo $comments['likes_counts_'];?> </span></i> like</button></li>
                                                        <?php }else{ ?>
                                                                <li  class=" list-inline-item"><button  class="like-second-btn text-sm" data-comment="<?php echo $comments['comment_id']; ?>"  data-user="<?php echo $comments['comment_by']; ?>" >
                                                                <i class="fa fa-heart-o mr-1" > <span class="likescounter_">  <?php if ($comments['likes_counts_'] > 0){ echo $comments['likes_counts_'];}else{ echo '';} ?></span></i> like</button></li>
                                                        <?php } ?>

                                                        <?php if($dislikes['like_on_'] == $comments['comment_id']){ ?>
                                                            <li  class=" list-inline-item"><button class="undislike-btn text-sm"  data-comment="<?php echo $comments['comment_id']; ?>" data-user="<?php echo $comments['comment_by']; ?>" >
                                                            <i class="fa fa-thumbs-o-down R mr-1" style="color: green"> <span class="dislikescounter"><?php echo $comments['dislikes_counts_'] ;?></span></i>
                                                                unlike</button></li>
                                    
                                                         <?php }else{ ?>
                                                               <li  class=" list-inline-item"> <button class="dislike-btn text-sm"  data-comment="<?php echo $comments['comment_id']; ?>" data-user="<?php echo $comments['comment_by']; ?>" >
                                                                <i class="fa fa-thumbs-o-down R mr-1"> <span class="dislikescounter"><?php if ($comments['dislikes_counts_'] > 0){ echo $comments['dislikes_counts_'];}else{ echo '';} ?></span></i>
                                                                    unlike</button></li>
                                                         <?php } ?>
                            
                                                        <span style="float:right">
                                                                              
                                                        <li  class=" list-inline-item"><button class="comments-btn text-sm" data-target="#a<?php echo  $comments["comment_id"] ;?>" data-toggle="collapse">
                                                            <i class="fa fa-comments-o mr-1"></i> Comments  (<?php echo $comment->CountsComment_second($comments["comment_id"]); ?>)
                                                        </button></li>
                                                                     
                                                            <?php if ($comments["comment_by"] == $user_id){ ?>
                                                               <li  class=" list-inline-item">
                                                                   <ul class="deleteButt" style="list-style-type: none; margin:0px;" >
                                                                       <li>
                                                                          <a href="javascript:void(0)" class="more"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                                                                           <ul style="list-style-type: none; margin:0px;" >
					                            	    	                <li style="list-style-type: none; margin:0px;"> 
                                                 	    	                    <label class="deleteCommentPostSeconds0" data-comment="<?php echo  $comments["comment_id"];?>"  data-user="<?php echo $comments["comment_by"];?>" >Delete </label>
                                                                              </li>
                                                                          </ul>
                                                                       </li>
                                                                   </ul>
                                                               </li>
                                                            <?php }else{ echo '';}?>
                                                            </span>
                                                        </ul>
                                                    </div>
                                                    
                                                    <div class="card collapse hide border-bottom-0 ml-5" id="a<?php echo $comments["comment_id"];?>" >
                                                        <div class="card-header pb-0 px-0">
                                                            <div class="input-group">
                                                                <input class="form-control form-control-sm" id="commentHomeSecond<?php echo $comments["comment_id"];?>" type="text"
                                                                    name="comment"  placeholder="Reply to  <?php echo $comments['username'] ;?>" >
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text btn" style="padding: 0px 10px;" 
                                                                        aria-label="Username" aria-describedby="basic-addon1" id="post_HomeCommentSecond"  data-comment="<?php echo $comments['comment_id'];?>">
                                                                        <span class="fa fa-arrow-right text-muted" ></span>
                                                                    </span>
                                                                </div>
                                                            </div> <!-- input-group -->
                                                        </div>
                                                        <div class="card-body" style="padding-right:0">
                                                            <?php 
                                                             $comment_second= $comment->comments_second($comments['comment_id']);
                                                            if (!empty($comment_second)) { ?>
                                                            <h5><i>Comments (<?php echo $comment->CountsComment_second($comments["comment_id"]); ?>)</i></h5>
                                                            <span id='responseDeletePostSecond'></span>
                                                            <div class="direct-chat-message direct-chat-messageS large-2" >
                                                            <span class="commentsHome" id="commentsHomeSecond<?php echo $comments['comment_id'];?>">
                                                            <?php foreach ($comment_second as $comments0) { ?>
                                                                    <!-- Conversations are loaded here -->
                                                                    <!-- Message. Default to the left -->
                                                                        <div class="direct-chat-msg" id="userComment<?php echo $comments0["comment_id_"]; ?>" >
                                                                            <div class="direct-chat-info clearfix">
                                                                                <span class="direct-chat-name float-left"><?php echo $comments0["username"] ;?></span>
                                                                                <span class="direct-chat-timestamp float-right"><?php echo $home->timeAgo($comments0['comment_at_']); ?></span>
                                                                            </div>
                                                                            <!-- /.direct-chat-info -->
                                                                            <?php if (!empty($comments0["profile_img"])) { ?>
                                                                            <img class="direct-chat-img" src="<?php echo BASE_URL_LINK ;?>image/users_profile_cover/<?php echo $comments0["profile_img"] ;?>" alt="message user image">
                                                                            <?php  }else{ ?>
                                                                            <img class="direct-chat-img" src="<?php echo BASE_URL_LINK.NO_PROFILE_IMAGE_URL ;?>" alt="message user image">
                                                                            <?php } ?>
                                                                            <!-- /.direct-chat-img -->
                                                                            <div class="direct-chat-text">
                                                                                <?php echo  $home->getTweetLink($comments0["comment_"]) ;?>
                                                                                 <!-- /.direct-chat-text -->
                                                                                <ul class="list-inline float-right" style="list-style-type: none; margin-bottom:0;">  

                                                                                        <?php if ($comments0["comment_by_"] == $user_id){ ?>
                                                                                        <li  class=" list-inline-item">
                                                                                            <ul class="deleteButt" style="list-style-type: none; margin:0px;" >
                                                                                                <li>
                                                                                                    <a href="javascript:void(0)" class="more"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                                                                                                    <ul style="list-style-type: none; margin:0px;" >
                                                                                                        <li style="list-style-type: none; margin:0px;"> 
                                                                                                            <label class="deleteCommentPostSecondDelete" data-comment="<?php echo  $comments0["comment_id_"];?>"  data-user="<?php echo $comments0["comment_by_"];?>" >Delete </label>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </li>
                                                                                        <?php }else{ echo '';}?>
                                                                                        </span>
                                                                                    </ul>
                                                                            </div>
                                                                        </div> <!-- /.direct-chat-messg -->
                                                                  
                                                                <?php } ?>
                                                            </span>
                                                        </div> <!-- /.direct-chat-message -->
                                                      <?php } ?>

                                                    </div> <!-- /.card-body-->
                                                    </div> <!-- /.card collapse -->
                                                   </div> <!-- /.direct-chat-msg -->
                                          <?php } ?>
                                          </span>
                                      </div> <!-- /.direct-message -->
                                          <?php } ?>
                                      </div> <!-- /.card-body-->
                                    </div> <!-- /.card collapse -->
