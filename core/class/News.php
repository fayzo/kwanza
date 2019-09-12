<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class News extends Home{

    public function carousel_news()
    { 
       $mysqli= $this->database;
       $query= $mysqli->query("SELECT * FROM news ORDER BY created_on3 Desc Limit 0,8"); ?>
       
      <div id="jssor_3" style="position:relative;margin:0;top:0px;left:0px;width:840px;height:380px;overflow:hidden;visibility:hidden;">
              <!-- Loading Screen -->
              <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
                  <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="<?php echo BASE_URL_LINK."image/img/"?>img/spin.svg" />
              </div>
              <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:840px;height:380px;overflow:hidden;">
                 
              <?php while($row= $query->fetch_array()) { ?>
                  <div>
                      <img data-u="image"  src="<?php echo BASE_URL_PUBLIC ;?>uploads/news/<?php echo $row['photo'] ;?>" />
                      <div u="thumb"> <?php echo $row['photo_Title_main']; ?></div>
                  </div>
              <?php } ?>

              </div>
              <!-- Thumbnail Navigator -->
              <div u="thumbnavigator" style="position:absolute;bottom:0px;left:0px;width:840px;height:50px;color:#FFF;overflow:hidden;cursor:default;background-color:rgba(0,0,0,.5);">
                  <div u="slides">
                      <div u="prototype" style="position:absolute;top:0;left:0;width:840px;height:50px;">
                          <div u="thumbnailtemplate" style="position:absolute;top:0;left:0;width:100%;height:100%;font-family:arial,helvetica,verdana;font-weight:normal;line-height:50px;font-size:16px;padding-left:10px;box-sizing:border-box;"></div>
                      </div>
                  </div>
              </div>
              <!-- Arrow Navigator -->
              <div data-u="arrowleft" class="jssora061" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                  <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                      <path class="a" d="M11949,1919L5964.9,7771.7c-127.9,125.5-127.9,329.1,0,454.9L11949,14079"></path>
                  </svg>
              </div>
              <div data-u="arrowright" class="jssora061" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                  <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                      <path class="a" d="M5869,1919l5984.1,5852.7c127.9,125.5,127.9,329.1,0,454.9L5869,14079"></path>
                  </svg>
              </div>
          </div>
    <?php }

    public function NewsList($user_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM news ORDER BY created_on3 Desc Limit 0,8");
        while($row= $query->fetch_array()) { ?>
        <li class="time-label">
                    <span class="bg-success text-light" style="position: absolute;font-size: 11px; padding: 2px; margin-left: 9px;"> <?php echo $this->timeAgo($row['created_on3']) ;?> </span>

                <div class="timeline-item card flex-md-row shadow-sm h-md-100 border-0">
                  <img class="card-img-left flex-auto d-none d-lg-block" height="100px" width="100px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/news/<?php echo $row['photo'] ;?>" alt="Card image cap">
                  <div class="card-body pt-0">
                    <h5 class="text-primary mb-0 text-left">
                   <a class="text-primary " href="javascript:void(0)" id="news-readmore" data-news="<?php echo $row['news_id'] ;?>" >
                    <?php 
                    if (strlen($row["title"]) > 63) {
                      echo $row["title"] = substr($row["title"],0,63).'... ';
                    }else{
                      echo $row["title"];
                    } ?></a>
                    </h5>
                    <div class="text-muted">Created on By <?php echo $this->timeAgo($row['created_on3']); ?> </div>
                    <div class="card-text">
                       <?php 
                    if (strlen($row["text"]) > 63) {
                      echo $row["text"] = substr($row["text"],0,63).'... ';
                    }else{
                      echo $row["text"];
                    } ?>
                  
                    <?php if($user_id == $row['user_id3']){ ?>
                        <ul class="list-inline float-right" style="list-style-type: none;">  

                                <li  class="list-inline-item">
                                    <ul class="showcartButt" style="list-style-type: none; margin:0px;" >
                                        <li>
                                            <a href="javascript:void(0)" class="more"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></a>
                                            <ul style="list-style-type: none; margin:0px; margin:0px;width:250px;text-align:center;" >
                                                <li style="list-style-type: none; margin:0px;"> 
                                                <label class="deletenews"  data-news="<?php echo $row["news_id"];?>"  data-user="<?php echo $row["user_id3"];?>">Delete </label>
                                                </li>
                                                
                                                <li style="list-style-type: none;"> 
                                                <label for="discount">
                                                <div class="form-row">
                                                    <div class="col">
                                                        Title news
                                                        <textarea class="form-control" name="news-title" id="news-title" rows="3"><?php echo $row["title"]; ?></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="col">
                                                        text news
                                                        <textarea class="form-control" name="news-inforamation" id="news-inforamation" rows="3"><?php echo $row["text"]; ?></textarea>
                                                    </div>
                                                    <!-- <div class="col">
                                                            Price
                                                        <div class="col">
                                                            </div>
                                                        <div class="input-group">
                                                            <input  type="number" class="form-control form-control-sm" name="price" id="price< ?php echo $row["news_id"];?>" value="< ?php echo $row["price"];?>">
                                                            <div class="input-group-append">
                                                                <span class="input-group-text" style="padding: 0px 10px;"
                                                                    aria-label="Username" aria-describedby="basic-addon1" >$</span>
                                                            </div>
                                                        </div> 
                                                    </div> -->
                                                </div>
                                                </label>
                                                </li>

                                                <li style="list-style-type: none;"> 
                                                <label for="discount" class="update-news-btn" data-news="<?php echo $row["news_id"];?>" data-user="<?php echo $row["user_id3"];?>">submit</label>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                        </ul>
                    <?php } ?>
                  </div>

                  </div><!-- card-body -->
                </div><!-- card -->

                </li>
                <!-- END timeline item -->

     <?php } 

    }
    
    public function NewsReadmore($news_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN news N ON N. user_id3 = u. user_id WHERE N. news_id = '$news_id' ");
        $row= $query->fetch_array();
        return $row;
    }

    
  public function home_recent_News()
  { 
      $mysqli= $this->database;
      $query= $mysqli->query("SELECT * FROM news ORDER BY created_on3 Desc Limit 0,5");
      ?>
    
    <div class="card recent-news  mb-3 pb-0">
              <div class="card-header py-1 main-active text-center">
                  <h5 class="card-title">Recent News </h5>
              </div>
              <div class="card-body pl-1 pb-0">

        <ul class="timeline timeline-inverse" style="margin: 0;">

          <?php while($row= $query->fetch_array()) { ?>

            <li class="time-label">
            <span class="bg-success text-light" style="position: absolute;font-size: 10px; padding: 2px;"><?php echo $this->timeAgo($row['created_on3']) ;?></span>

                <div class="timeline-item card shadow-sm  border-0">
                    <div class="text-primary mb-0 text-left" style='font-weight:500;text-transform:capitalize;'>
                         <a class="text-primary" href="javascript:void(0)"  id="news-readmore" data-news="<?php echo $row['news_id'] ;?>" >
                            <?php 
                            if (strlen($row["title"]) > 63) {
                              echo $row["title"] = substr($row["title"],0,63).'... ';
                            }else{
                              echo $row["title"];
                            } ?>
                        </a>
                    </div>
                 
                  <div class="card-body p-0">
                        <img class="card-img-left flex-auto d-none d-lg-block mr-2 float-left" height="50px" width="50px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/news/<?php echo $row['photo'] ;?>" />
                        <div class="d-flex flex-column align-items-start">
                            <div class="text-muted">Created on <?php echo $this->timeAgo($row['created_on3']) ;?> </div>
                            <div class="text-muted"><i class="fa fa-eye" aria-hidden="true"></i> 2345 views</div>
                        </div>
                    <p class="card-text mb-1 clear-float">
                            <?php 
                            if (strlen($row["text"]) > 63) {
                              echo $row["text"] = substr($row["text"],0,63).'... ';
                            }else{
                              echo $row["text"];
                            } ?>
                    </p>
                  </div><!-- card-body -->
                </div><!-- card -->
                </li>
       <?php } ?>
            
                <li>
                    <i class="fa fa-clock-o bg-info text-light float-left"></i>
                    <div class="timeline-item card shadow-sm  border-0">
                        <div class="card-body py-1">
                            <a href="news.php" class="h5"><i> View more news >>> </i></a>
                        </div>
                    </div>                    
                </li>

            </ul>
                 
              </div>
          </div>

  <?php }

}
$news= new News();

/*
===========================================
         Notice
===========================================
# You are free to run the software as you wish
# You are free to help yourself study the source code and change to do what you wish
# You are free to help your neighbor copy and distribute the software
# You are free to help community create and distribute modified version as you wish

We promote Open Source Software by educating developers (Beginners)
use PHP Version 5.6.1 > 7.3.20  
===========================================
         For more information contact
=========================================== 
Kigali - Rwanda
Tel : (250)787384312 / (250)787384312
E-mail : shemafaysal@gmail.com

*/
?>