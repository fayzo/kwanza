<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Blog extends Home{

    public function blogs($pages,$categories){
        $pages= $pages;
        $categories= $categories;
        
        if($pages === 0 || $pages < 1){
            $showpages = 0 ;
        }else{
            $showpages = ($pages*6)-6;
        }
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN blog B ON B. user_id3 = u. user_id WHERE B. categories_blog ='$categories'  ORDER BY created_on3 Desc Limit $showpages,6");
        ?>
        <div class="row mt-2 mb-2">
        <?php while($row= $query->fetch_array()) { ?>

        <div class="col-md-6">
          <div class="card flex-md-row mb-4 border-0 h-md-250" style="box-shadow:0 0 0.5ch 0.5ch rgba(35, 35, 32, 0.15);">
            <img class="card-img-left flex-auto d-none d-lg-block" width="200px" height="250px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/Blog/<?php echo $row['photo'] ;?>" alt="Card image cap">
            <div class="card-body d-flex flex-column align-items-start">
              <h4 style="font-family: Playfair Display, Georgia, Times New Roman, serif;text-align:left;">
               <a class="text-primary" href="javascript:void(0)" id="blog-readmore" data-blog="<?php echo $row['blog_id'] ;?>"> <?php echo  $row['title']; ?></a>
              </h4>
              <div class="mb-1 text-muted">Created on <?php echo $this->timeAgo($row['created_on3']) ;?> By <?php echo $row['authors'] ;?> </div>
              <p class="mb-auto"> 
                <?php 
                    if (strlen($row["text"]) > 200) {
                      echo $row["text"] = substr($row["text"],0,200).'...<br><span class="mb-0"><a href="javascript:void(0)" id="blog-readmore" data-blog="'.$row['blog_id'].'" class="text-muted" style"font-weight: 500 !important;">Continue reading...</a></span>';
                    }else{
                      echo $row["text"];
                    } ?> 
              </p>
            </div>
          </div>
        </div>

        <?php } 

        $query1= $mysqli->query("SELECT COUNT(*) FROM users U Left JOIN blog B  ON B. user_id3 = u. user_id WHERE B. categories_blog ='$categories'  ORDER BY created_on3 Desc ");
        $row_Paginaion = $query1->fetch_array();
        $total_Paginaion = array_shift($row_Paginaion);
        $post_Perpages = $total_Paginaion/6;
        $post_Perpage = ceil($post_Perpages); ?>

    </div>

    <?php if($post_Perpage > 1){ ?>
    <nav>
        <ul class="pagination justify-content-center">
            <?php if ($pages > 1) { ?>
                <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="blog_FecthRequest('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
            <?php } ?>
            <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                    if ($i == $pages) { ?>
                 <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="blog_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php }else{ ?>
                <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="blog_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
            <?php } } ?>
            <?php if ($pages+1 <= $post_Perpage) { ?>
                <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="blog_FecthRequest('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
            <?php } ?>
        </ul>
    </nav>

       <?php } ?>

   <?php }

    public function BlogReadmore($blog_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN blog B ON B. user_id3 = u. user_id WHERE B. blog_id = '$blog_id' ");
        $row= $query->fetch_array();
        return $row;
    }

    public function Blogcarousel($categories)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN blog B ON B. user_id3 = u. user_id WHERE B. categories_blog ='$categories'  ORDER BY created_on3 Desc Limit 1,3");
        $query1= $mysqli->query("SELECT * FROM users U Left JOIN blog B ON B. user_id3 = u. user_id WHERE B. categories_blog ='$categories'  ORDER BY created_on3 Desc Limit 0,1");
        $countRow= $mysqli->query("SELECT categories_blog FROM blog WHERE categories_blog ='$categories'  ORDER BY created_on3 Desc Limit 0,4");
        $row1= $query1->fetch_array()
        ?>

        <div id="slider4" class="carousel slide mb-5" data-ride="carousel">
          <ol class="carousel-indicators">
            <li class="active" data-target="#slider4" data-slide-to="0"></li>
            <?php  for($i=2;$i <= $countRow->num_rows ; ++$i) {  ?>
               <li data-target="#slider4" data-slide-to="<?php echo $i; ?>"></li>
            <?php } ?>

          </ol>

          <div class="carousel-inner" role="listbox">

             <div class="carousel-item active">
                   <img class="d-block" width="100%" height="200px" src="<?php echo BASE_URL_LINK ;?>image/img/dark.png">
                    <div class="container">
                       <div class="carousel-caption text-left">
                         <h1 class="display-4 font-italic" style="font-family: Playfair Display, Georgia, Times New Roman, serif;"><a style="color: #fff" href="javascript:void(0)" id="blog-readmore" data-blog="<?php echo $row1['blog_id'];?> "> <?php echo  $row1['title']; ?></a></h1>
                         <div class="text-muted">Created on <?php echo $this->timeAgo($row1['created_on3']) ;?> By <?php echo $row1['authors'] ;?> </div>
                         <p class="lead my-3">
                          <?php 
                             if (strlen($row1["text"]) > 184) {
                              echo $row1["text"] = substr($row1["text"],0,184).'... <br><span class="mb-0"><a href="javascript:void(0)" id="blog-readmore" data-blog="'.$row1['blog_id'].'" class="text-white font-weight-bold">Continue reading...</a></span>';
                            }else{
                              echo $row1["text"].$countRow->num_rows;
                            } ?> 
                         </p>
                       </div>
                     </div>
                </div>

           <?php while($row= $query->fetch_array()) {  ?>

                <div class="carousel-item">
                   <img class="d-block" width="100%" height="200px" src="<?php echo BASE_URL_LINK ;?>image/img/dark.png">
                    <div class="container">
                       <div class="carousel-caption text-left">
                         <h1 class="display-4 font-italic" style="font-family: Playfair Display, Georgia, Times New Roman, serif;"><a style="color: #c3bebe;" class="text-white" href="javascript:void(0)" id="blog-readmore" data-blog="<?php echo $row['blog_id']; ?>"> <?php echo  $row['title']; ?></a></h1>
                         <div class="text-muted">Created on <?php echo $this->timeAgo($row['created_on3']) ;?> By <?php echo $row['authors'] ;?> </div>
                         <p class="lead my-3">
                          <?php 
                             if (strlen($row["text"]) > 184) {
                              echo $row["text"] = substr($row["text"],0,184).'... <br><span class="mb-0"><a href="javascript:void(0)" id="blog-readmore" data-blog="'.$row1['blog_id'].'" class="text-white font-weight-bold">Continue reading...</a></span>';
                            }else{
                              echo $row["text"];
                            } ?> 
                         </p>
                       </div>
                     </div>
                </div>
    
            <?php } ?>
          </div>

          <a href="#slider4" class="carousel-control-prev" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </a>

          <a href="#slider4" class="carousel-control-next" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>
        </div>

<?php }

    public function BlogRecent_Articles($categories)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN blog B ON B. user_id3 = u. user_id WHERE B. categories_blog ='$categories' and created_on3  > DATE_SUB(NOW(), INTERVAL 1 MONTH) ORDER BY created_on3 Desc , rand() Limit 5");
            //  SECOND	, MINUTE, HOUR, DAY, WEEK	, MONTH	, QUARTER	, YEAR,
        if($query->num_rows != 0){
        ?>
       <div class="card d-none d-lg-block">
        <div class="card-header main-active">
          <h5>Recent Articles</h5>
        </div>
        <div class="card-body px-2">
            <div class="row">
        <?php while($row= $query->fetch_array()) {  ?>

              <div class="col-md-12 mb-2">
                <div class="card flex-md-row shadow-sm h-md-100 border-0">
                  <img class="card-img-left flex-auto d-none d-lg-block" height="100px" width="100px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/Blog/<?php echo $row['photo'] ;?>" alt="Card image cap">
                  <div class="card-body d-flex flex-column align-items-start pt-0">
                    <h5 class="text-primary mb-0">
                   <a class="text-primary" href="javascript:void(0)" id="blog-readmore" data-blog="<?php echo $row['blog_id']; ?> "> <?php echo  $row['title']; ?></a>
                    </h5>
                    <div class="text-muted">Created on <?php echo $this->timeAgo($row['created_on3']) ;?> By <?php echo $row['authors'] ;?> </div>
                    <p class="card-text mb-1">
                         <?php 
                             if (strlen($row["text"]) > 100) {
                              echo $row["text"] = substr($row["text"],0,100).'... <span class="mb-0"><a href="javascript:void(0)" id="blog-readmore" data-blog="'.$row['blog_id'].'" class="text-muted" style"font-weight: 500!important;">Continue reading...</a></span>';
                            }else{
                              echo $row["text"];
                            } ?> 
                    </p>
                  </div><!-- card-body -->
                </div><!-- card -->
              </div> <!-- col -->

      <?php } ?>

            </div> <!-- row -->
        </div> <!-- card-body -->
      </div> <!-- card -->
      <?php }else{ ?>
         <div class="row text-center">
          <div class="col-md-6 mr-0 d-none d-md-block">
              <div class="card">
                <div class="card-header main-active">
                  <h5>Categories</h5>
                </div>
                <div class="card-body pb-0 px-0">
                  <div class="list-group sticky-top pt-0 px-0" id="list-tab" role="tablist"  style="top: 52px;">
                    <a class="list-group-item list-group-item-action" id="list-Technology-list" data-toggle="tab" href="#list-Technology" role="tab" aria-controls="list-Technology">Technology</a>
                    <a class="list-group-item list-group-item-action active" id="list-Design-list" data-toggle="tab" href="#list-Design" role="tab" aria-controls="list-Design">Design</a>
                    <a class="list-group-item list-group-item-action" id="list-Culture-list" data-toggle="tab" href="#list-Culture" role="tab" aria-controls="list-Culture">Culture</a>
                    <a class="list-group-item list-group-item-action" id="list-Business-list" data-toggle="tab" href="#list-Business" role="tab" aria-controls="list-Business">Business</a>
                    <a class="list-group-item list-group-item-action" id="list-Politics-list" data-toggle="tab" href="#list-Politics" role="tab" aria-controls="list-Politics">Politics</a>
                    <a class="list-group-item list-group-item-action" id="list-Opinion-list" data-toggle="tab" href="#list-Opinion" role="tab" aria-controls="list-Opinion">Opinion</a>
                    <a class="list-group-item list-group-item-action" id="list-Health-list" data-toggle="tab" href="#list-Health" role="tab" aria-controls="list-Health">Health</a>
                    <a class="list-group-item list-group-item-action" id="list-Style-list" data-toggle="tab" href="#list-Style" role="tab" aria-controls="list-Style">Style</a>
                    <a class="list-group-item list-group-item-action" id="list-Travel-list" data-toggle="tab" href="#list-Travel" role="tab" aria-controls="list-Travel">Travel</a>
                    <a class="list-group-item list-group-item-action" id="list-History-list" data-toggle="tab" href="#list-History" role="tab" aria-controls="list-History">History</a>
                    <a class="list-group-item list-group-item-action" id="list-Science-list" data-toggle="tab" href="#list-Science" role="tab" aria-controls="list-Science">Science</a>
                    <a class="list-group-item list-group-item-action" id="list-Science-list" data-toggle="tab"  href="#list-Computer_science" role="tab" aria-controls="list-Computer_science">Computer science</a>
                    <button type="button" class="btn btn-light mt-2" id="add_blog" data-blog="<?php echo $_SESSION['key']; ?>" > + Add Blog </button>
                  </div>
                </div> <!-- card-body -->
              </div> <!-- card --> 
          </div> <!-- col -->
          <div class="col-md-6 ml-0 d-none d-md-block">
              <?php echo $this->options(); ?>
          </div> <!-- col -->
        </div> <!-- row -->

      <?php } ?>

<?php  }

}

$blog = new Blog();

?>
