<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Landscapes extends Home{

    public function CarouselLandscapesList($categories)
    {
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM rwandalandscapes WHERE categories_of_landscapes='{$categories}' ORDER BY created_on_ Desc Limit 0,3");
        while($row= $query->fetch_array()) { ?>
        <div> 
            <img data-u="image" src="<?php echo BASE_URL_PUBLIC ;?>uploads/rwandaLandscapes/<?php echo $row['photo_'] ;?>" />
            <div u="thumb"><?php echo $row['title_'] ;?></div>
        </div>

     <?php } 
    }

    public function LandscapesList($pages,$categories)
    {
        $pages= $pages;
        $categories= $categories;
        
        if($pages === 0 || $pages < 1){
            $showpages = 0 ;
        }else{
            $showpages = ($pages*6)-6;
        }
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM rwandalandscapes WHERE categories_of_landscapes='{$categories}' ORDER BY created_on_ Desc Limit $showpages,6");
         ?>
        <div class="card">
        <div class="card-header main-active p-1">
          <h5 class="card-title float-left pl-2"><i> Rwanda Landscapes</i></h5>
           <form class="form-inline float-right">
              <div class="input-group">
                  <div class="input-group-prepend">
                      <span class="input-group-text" id="basic-addon2"><i class="fa fa-search" aria-hidden="true"></i> </span>
                  </div>
                  <input type="text" class="form-control searchvirunga"  aria-describedby="helpId" placeholder="Search virunga any place in rwanda">
              </div>
            </form>
        </div>
        <div class="card-body">
         <span class="landscapes-show"></span>
          <div class="landscapes-hide">
          <div class="row">

         <?php while ($row= $query->fetch_assoc()) {  ; ?>

        <div class="col-md-6">
            <div class="card flex-md-row shadow-sm h-md-100 border-0 mb-3">
                 <img class="card-img-left flex-auto d-none d-lg-block" height="150px" width="150px" src="<?php echo BASE_URL_PUBLIC ;?>uploads/rwandaLandscapes/<?php echo $row['photo_']; ?>" alt="Card image cap">
               <div class="card-body d-flex flex-column align-items-start pt-0">
                   <h5 class="text-primary mb-0">
                  <a class="text-primary" href="javascript:void(0)" id="sports-readmore" data-sports="cs"> <?php echo $row['title_'] ;?></a>
                   </h5>
                   <div class="text-muted">Created on <?php echo $row['created_on_'] ;?> By <?php echo $row['author_'] ;?> </div>
                   <p class="card-text mb-1"><?php echo $row['text_'] ;?> </p>
               </div><!-- card-body -->
            </div><!-- card -->
        </div><!-- col -->

        <?php } ?>
        
          </div><!-- row -->
          </div><!-- hide -->
        </div><!-- card-body -->
       </div><!-- card -->

       <?php
        $query2= $mysqli->query("SELECT COUNT(*) FROM rwandalandscapes WHERE categories_of_landscapes='{$categories}' ");
        $row_Paginaion = $query2->fetch_array();
        $total_Paginaion = array_shift($row_Paginaion);
        $post_Perpages = $total_Paginaion/6;
        $post_Perpage = ceil($post_Perpages);

      if($post_Perpage > 1){ ?>
    <nav id="landscape-paginat">
        <ul class="pagination justify-content-center mt-3">
            <?php if ($pages > 1) { ?>
                <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="landscapes_FecthRequest('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
            <?php } ?>
            <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                    if ($i == $pages) { ?>
                 <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="landscapes_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php }else{ ?>
                <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="landscapes_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
            <?php } } ?>
            <?php if ($pages+1 <= $post_Perpage) { ?>
                <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="landscapes_FecthRequest('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
            <?php } ?>
        </ul>
    </nav>

    <?php } 
    }

}
$landscapes= new Landscapes();

?>