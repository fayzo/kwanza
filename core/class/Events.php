<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Events extends Home{

    public function eventsList($pages,$categories)
    {
        $pages= $pages;
        $categories= $categories;
        
        if($pages === 0 || $pages < 1){
            $showpages = 0 ;
        }else{
            $showpages = ($pages*8)-8;
        }
        $mysqli= $this->database;
         $query= $mysqli->query("SELECT * FROM events WHERE categories_events ='$categories' ORDER BY created_on3 Desc Limit $showpages,8");
        ?>
          <div class="row">
           <?php while($row= $query->fetch_array()){ ?>
          <div class="col-md-3 mb-3">
                
             <div class="card">
                 <img class="card-img-top" src="<?php echo BASE_URL_PUBLIC.'uploads/events/'.$row['photo']; ?>" width="296px" height="296px" >
                 <div class="card-body py-1 ">
                     <div>Avenue: <?php echo $row['location_events']; ?> at <?php echo $row['name_place']; ?> </div>
                     <div>date: <?php echo $row['date0']; ?> || start events: <?php echo $row['start_events']; ?> </div>
                     <div>Posted on <?php echo $row['created_on3']; ?> </div>
                 </div>
             </div>

           </div><!-- col -->
            <?php   } 

        $query1= $mysqli->query("SELECT COUNT(*) FROM events WHERE categories_events ='$categories' ORDER BY created_on3 Desc ");
        $row_Paginaion = $query1->fetch_array();
        $total_Paginaion = array_shift($row_Paginaion);
        $post_Perpages = $total_Paginaion/8;
        $post_Perpage = ceil($post_Perpages); ?>

        </div> <!-- row -->

        <?php if($post_Perpage > 1){ ?>
         <nav>
             <ul class="pagination justify-content-center mt-3">
                 <?php if ($pages > 1) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="events_FecthRequest('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
                 <?php } ?>
                 <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                         if ($i == $pages) { ?>
                      <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="events_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                      <?php }else{ ?>
                     <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="events_FecthRequest('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php } } ?>
                 <?php if ($pages+1 <= $post_Perpage) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="events_FecthRequest('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
                 <?php } ?>
             </ul>
         </nav>
     
        <?php } 

    }


}

$events = new Events();

?>