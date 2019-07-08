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

               <div class="col-md-3 mb-2">
            
            <div class="card" >
                <img class="card-img-top" width="242px" height="160px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/crowfund/<?php echo $row['photo'] ;?>" >
                <div class="card-body">
                    <div class="p-0 font-weight-bold">Funding <i class="fa fa-heart-o float-right" aria-hidden="true"></i></div>
                    <hr>
                    <a href="javascript:void(0);"  id="fund-readmore" data-fund="<?php echo $row['fund_id'] ;?>" class="card-text h5">Kogera umusaruro muguhinga</a>
                    <p class="text-muted">turashaka kongera umusaruro mu buhinzi tukabona ubufasha buhagije no kubona imbuto</p>

                    <div class="text-muted mb-1">Agriculture</div>
                    <div class="card-text">
                        <span class="font-weight-bold">40,000 Frw</span>
                         Raised
                        <div class="float-right">40%</div>
                    </div>
                     <div class="progress clear-float " style="height: 10px;">
                        <div class="progress-bar  bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                    
                    <div class="clear-float">
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        <span class="text-muted">13 days Left</span>
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
}

$crowfund = new Crowfund;
?>