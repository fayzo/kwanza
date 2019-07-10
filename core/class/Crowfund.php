<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Crowfund extends home {

     public function crowfundraisings($pages,$categories)
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
        <?php while($row= $query->fetch_array()) { ?>

               <div class="col-md-3 mb-3">
            
            <div class="card more" id="crowfund-readmore" data-crowfund="<?php echo $row['fund_id'] ;?>">
                <img class="card-img-top" width="242px" height="160px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/crowfund/<?php echo $row['photo'] ;?>" >
                <div class="card-body">
                    <div class="p-0 font-weight-bold">Funding <i class="fa fa-heart-o float-right" aria-hidden="true"></i></div>
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

    public function crowfundFecthReadmore($fund_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN crowfundraising C ON C. user_id2 = u. user_id WHERE C. fund_id = '$fund_id' ");
        $row= $query->fetch_array();
        return $row;
    }
}

$crowfund = new Crowfund;
?>