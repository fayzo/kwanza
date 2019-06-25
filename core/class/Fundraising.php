<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Fundraising extends Home
{
    public function fundraisings($pages,$categories)
    {
        $pages= $pages;
        $categories= $categories;
        
        if($pages === 0 || $pages < 1){
            $showpages = 0 ;
        }else{
            $showpages = ($pages*8)-8;
        }
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN fundraising F ON F. user_id2 = u. user_id WHERE F. categories_fundraising ='$categories'  ORDER BY created_on2 Desc Limit $showpages,8");
        ?>
            <div class="row mt-3">
        <?php while($row= $query->fetch_array()) { ?>
        
                <div class="col-md-3 mb-3" >
                    <div class="card" style="border-bottom-left-radius: 0px !important;border-bottom-right-radius: 0px !important;">
                        <img class="card-img-top" height="244px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/fundraising/<?php echo $row['photo'] ;?>" >
                        <div style="position: absolute; top: 0px; right: 0;padding: 1rem;">
                            <span class="btn btn-light"><span style="font-size: 14px" class="material-icons p-0 m-0"> trending_up</span> trending</span>
                        </div>
                        <div style="position: absolute;bottom: 0px; right: 0;left:0px;background-color: #cfd3d6a1">
                               <h5 class="card-title text-dark m-1 pb-1 pl-2">Helps <?php echo $row['lastname'] ;?> </h5>
                              <div class="progress " style="height: 6px;">
                                <div class="progress-bar  bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                              </div>
                        </div>
                    </div>
                    <div class="card" style="border-top-left-radius: 0px !important;border-top-right-radius: 0px !important;">
                            <div class="card-body pl-1 pb-1">
                              <span class="h5">500 Frw raised </span>
                              <span class="text-muted"> Out of 5000 Frw</span>
                              <p> lifelifelifelifelifelifelifelifelifelifelifelifeli</p>
                              <div class="float-right">
                              <button type="button" id="fund-readmore" data-fund="<?php echo $row['fund_id'] ;?>" class="btn btn-primary" >+ Read more</button></div>
                            </div>
                    </div>
                </div>

        <?php } 

        $query1= $mysqli->query("SELECT COUNT(*) FROM users U Left JOIN fundraising F ON F. user_id2 = u. user_id WHERE F. categories_fundraising ='$categories'  ORDER BY created_on2 Desc ");
        $row_Paginaion = $query1->fetch_array();
        $total_Paginaion = array_shift($row_Paginaion);
        $post_Perpages = $total_Paginaion/8;
        $post_Perpage = ceil($post_Perpages); ?>

    </div>
    <?php if($post_Perpage > 1){ ?>
    <nav>
        <ul class="pagination justify-content-center">
            <?php if ($pages > 1) { ?>
                <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fundraising_FecthRequest('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
            <?php } ?>
            <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                    if ($i == $pages) { ?>
                 <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="fundraising_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php }else{ ?>
                <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="fundraising_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
            <?php } } ?>
            <?php if ($pages+1 <= $post_Perpage) { ?>
                <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fundraising_FecthRequest('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
            <?php } ?>
        </ul>
    </nav>
   <?php } ?>
   
   <?php }

    public function fundFecthReadmore($fund_id)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN fundraising F ON F. user_id2 = u. user_id WHERE F. fund_id = '$fund_id' ");
        $row= $query->fetch_array();
        return $row;
    }

}

$fundraising = new Fundraising();