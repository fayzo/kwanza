<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Sale extends Home{

    public function cart_item(){

        $mysqli= $this->database;
        $db_handle = $mysqli;
        if(!empty($_POST["action"])) {
        switch($_POST["action"]) {
        	case "add":
        		if(!empty($_POST["quantity"])) {
        			$productByCode = $this->runQuery("SELECT * FROM sale WHERE code='" . $_POST["code"] . "'");
        			$itemArray = array($productByCode[0]["code"]=>array('name'=>$productByCode[0]["title"], 'code'=>$productByCode[0]["code"], 'quantity'=>$_POST["quantity"], 'price'=>$productByCode[0]["price"], 'image'=>$productByCode[0]["photo"]));
        			
        			if(!empty($_SESSION["cart_item"])) {    
        				if(in_array($productByCode[0]["code"],array_keys($_SESSION["cart_item"]))) {
        					foreach($_SESSION["cart_item"] as $k => $v) {
        							if($productByCode[0]["code"] == $k) {
        								if(empty($_SESSION["cart_item"][$k]["quantity"])) {
        									$_SESSION["cart_item"][$k]["quantity"] = 0;
        								}
        								$_SESSION["cart_item"][$k]["quantity"] += $_POST["quantity"];
        							}
        					}
        				} else {
        					$_SESSION["cart_item"] = array_merge($_SESSION["cart_item"],$itemArray);
        				}
        			} else {
        				$_SESSION["cart_item"] = $itemArray;
        			}
            }
             exit($this->showCart_itemSale());
        	break;
        	case "remove":
        		if(!empty($_SESSION["cart_item"])) {
        			foreach($_SESSION["cart_item"] as $k => $v) {
        					if($_POST["code"] == $k)
        						unset($_SESSION["cart_item"][$k]);				
        					if(empty($_SESSION["cart_item"]))
        						unset($_SESSION["cart_item"]);
        			}
            }
             exit($this->showCart_itemSale());
        	break;
        	case "empty":
        		unset($_SESSION["cart_item"]);
        	break;	
        }
        }
    }

    public function categories_sale($categories_sale)
    {
        $mysqli= $this->database;
        $query = $mysqli->query("SELECT * FROM users U Left JOIN sale S ON S. user_id01 = U. user_id WHERE S. categories_sale = '{$categories_sale}' ORDER BY created_on01 Desc ");
        
        while($row=$query->fetch_assoc()) {
        ?>
                <div class="ml-1 mb-3 float-left" style="width: 252px;">

                  <div class="card">
                    <div width="252px" height="178px"><img src="<?php echo BASE_URL_PUBLIC."uploads/sale/".$row["photo"]; ?>" width="252px" height="178px" ></div>
                      <div class="card-body">
                          <div class="card-title"><?php echo $row["title"]; ?></div> <!-- product-title -->
                          <p class="card-text product-price"><?php echo "$".$row["price"]; ?></p>
                          <form method="post" action="sale.php?action=add&code=<?php echo $row["code"]; ?>">
               	      	  <div class="cart-action"><input type="text" class="product-quantity" name="quantity" value="1" size="2" readonly/><input type="submit" value="Add to Cart" class="btnAddAction" /></div>
                          </form>
                      </div><!-- card-body -->
                  </div><!-- card -->

                </div><!-- col -->
    <?php }
    }

     public function cartList($categories,$pages)
    {
        $pages= $pages;
        $categories= $categories;
        
        if($pages === 0 || $pages < 1){
            $showpages = 0 ;
        }else{
            $showpages = ($pages*10)-10;
        }
        $mysqli= $this->database;
        $query= $mysqli->query("SELECT * FROM users U Left JOIN sale S ON S. user_id01 = U. user_id WHERE S. categories_sale = '{$categories}' ORDER BY created_on01 Desc Limit $showpages,10");
        ?>
        <div class="mb-3 ">
          <?php 
        		// unset($_SESSION["foodcart_item"]);
               //    echo var_dump($_SESSION["foodcart_item"]);
           ?>

         <div class="card-header main-active p-1">
            <form class="form-inline float-right">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon2"><i class="fa fa-search" aria-hidden="true"></i> </span>
                    </div>
                    <input type="text" class="form-control search0"  aria-describedby="helpId" placeholder="Search Accountant, finance ,enginneer">
                </div>
            </form>
            <h5 class="card-title text-center"><i> Items to Search</i></h5>

            <div class="nav-scroller  py-0" style="clear:right;height:2rem;">
                <nav class="nav d-flex justify-content-between pb-0">
                <a class="p-2 text-light" href="javascript:void(0)" onclick="cartItemsCategories('electronics',1);">Electronics<span class="badge badge-primary"><?php echo $this->cartcountPOSTS('electronics');?></span></a>
                <a class="p-2 text-light" href="javascript:void(0)" onclick="cartItemsCategories('clothes',1);">Clothes<span class="badge badge-primary"><?php echo $this->cartcountPOSTS('clothes');?></span></a>
                <a class="p-2 text-light" href="javascript:void(0)" onclick="cartItemsCategories('sports',1);">Sports<span class="badge badge-primary"><?php echo $this->cartcountPOSTS('sports');?></span></a>
                <a class="p-2 text-light" href="javascript:void(0)" onclick="cartItemsCategories('health_beauty',1);">Health Beauty<span class="badge badge-primary"><?php echo $this->cartcountPOSTS('health_beauty');?></span></a>
                <a class="p-2 text-light" href="javascript:void(0)" onclick="cartItemsCategories('home_garden',1);">Home Garden<span class="badge badge-primary"><?php echo $this->cartcountPOSTS('home_garden');?></span></a>
                </nav>
            </div> <!-- nav-scroller -->
        </div> <!-- card-header -->

        <div>
        <span class="job-show"></span>
        <div class="job-hide">
                        <div>
                      <span> <img src="<?php echo BASE_URL_LINK.'image/banner/discount.png' ;?>" width="80px"> </span>
                        <?php switch ($categories) {
                            case $categories == 'electronics':
                                # code...
                                echo '
                                <img src="'.BASE_URL_LINK.'image/banner/banners1.png" width="200px">
                                <img src="'.BASE_URL_LINK.'image/banner/banners1.png" width="200px">
                                <img src="'.BASE_URL_LINK.'image/banner/banners1.png" width="200px">
                                    ';
                                break;
                            case $categories == 'clothes':
                                # code...
                                echo '
                                <img src="'.BASE_URL_LINK.'image/img/photo1.png" width="200px">
                                <img src="'.BASE_URL_LINK.'image/img/photo1.png" width="200px">
                                    ';
                                break;
                            case $categories == 'sports':
                                # code...
                                echo '
                                <img src="'.BASE_URL_LINK.'image/img/photo2.png" width="200px">
                                <img src="'.BASE_URL_LINK.'image/img/photo2.png" width="200px">
                                    ';
                                break;
                            case $categories == 'health_beauty':
                                # code...
                                echo '
                                <img src="'.BASE_URL_LINK.'image/img/photo3.jpg" width="200px">
                                <img src="'.BASE_URL_LINK.'image/img/photo3.jpg" width="200px">
                                    ';
                                break;
                            case $categories == 'home_garden':
                                # code...
                                echo '<img src="'.BASE_URL_LINK.'image/img/photo4.jpg" width="200px">
                                      <img style="float: right;margin-top:15px;margin-right:25px;" src="'.BASE_URL_LINK.'image/banner/weekPrice.png" width="200px">
                                    ';
                                break;
                        } ?>
                        </div>

                <div class="row">
                <div class="col-md-12">
                    
          <?php while($row= $query->fetch_array()) { ?>

                         <div class="mr-2 mb-3 float-left" style="width: 252px;">
                        <!-- //   width: 252px;height:178px -->
                         <!-- <div class="col-md-3"> -->

                          <div class="card">
                            <div class="card-img-top img-fuild" style="background: url('<?php echo BASE_URL_PUBLIC."uploads/sale/".$row["photo"]; ?>')no-repeat center center;background-size:cover;width: 250px;height:178px">
                                <?php $banner = $row['banner'];
                                      switch ($banner) {
                                          case $banner == 'new':
                                              # code...
                                              echo '<img style="margin-left: -20px;" src="'.BASE_URL_LINK.'image/banner/new.png"  width="252px" height="178px"  >';
                                              break;
                                          case $banner == 'great_deal':
                                              # code...
                                              echo '<img style="margin-right: -10px;" src="'.BASE_URL_LINK.'image/banner/great-deal.png"  width="252px" height="178px" >';
                                              break;
                                          case $banner == 'new_arrival':
                                              # code...
                                              echo '<img style="margin-right: -10px;" src="'.BASE_URL_LINK.'image/banner/new-arrival.png"  width="252px" height="178px" >';
                                              break;
                                          case $banner == 'vegetables':
                                              # code...
                                              echo '<img style="margin-right: -10px;" src="'.BASE_URL_LINK.'image/banner/new-arrival5.png"  width="252px" height="178px" >';
                                              break;
                                          case $banner == 'macedone':
                                              # code...
                                              echo '<img style="margin-right: -10px;" src="'.BASE_URL_LINK.'image/banner/new-arrival5.png"  width="252px" height="178px" >';
                                              break;
                                          
                                      } ?>
                                </div>
                              <div class="card-body">
                                  <div class="card-title"><?php echo $row["title"]; ?></div> <!-- product-title -->
                                  <div class="card-text product-price d-inline-block"> 
                                    <?php if(800.00 != 0){ ?><span class="text-danger " style="text-decoration: line-through;"><?php echo number_format(8000000.00, 2); ?> Frw</span> <?php } ?> 
                                   <div> <?php echo "$".number_format($row["price"], 2); ?> </div>
                                  </div>
                                   <form method="post" id="form-cartitem<?php echo $row['code']; ?>add" class="float-right">
                                      <div class="cart-action">
                                          <input type="hidden" style="width:30px;" name="action" value="add" />
                                          <input type="hidden" style="width:30px;" name="code" value="<?php echo $row['code']; ?>" />
                                          <input type="text" class="product-quantity" style="width:30px;" name="quantity" value="1" size="2" readonly/>
                                          <input type="button" onclick="cart_add('add','<?php echo 'form-cartitem'.$row['code'].'add'; ?>','<?php echo $row['code']; ?>');" value="Add to Cart" class="btnAddAction" />
                                      </div>
                                  </form>
                              </div><!-- card-body -->
                          </div><!-- card -->

                         </div><!-- float-left -->
                           <!-- </div> -->

                    <?php }
                    
                    $query1= $mysqli->query("SELECT COUNT(*) FROM sale WHERE categories_sale ='$categories' ");
                    $row_Paginaion = $query1->fetch_array();
                    $total_Paginaion = array_shift($row_Paginaion);
                    $post_Perpages = $total_Paginaion/10;
                    $post_Perpage = ceil($post_Perpages); ?>    
                    
                </div>
                </div>
           </div>
          </div> <!-- /.card-body -->
       </div> <!-- /.card -->

        <?php if($post_Perpage > 1){ ?>
         <nav>
             <ul class="pagination justify-content-center mt-3">
                 <?php if ($pages > 1) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="cartItemsCategories('<?php echo $categories; ?>',<?php echo $pages-1; ?>)">Previous</a></li>
                 <?php } ?>
                 <?php for ($i=1; $i <= $post_Perpage; $i++) { 
                         if ($i == $pages) { ?>
                      <li class="page-item active"><a href="javascript:void(0)"  class="page-link" onclick="cartItemsCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                      <?php }else{ ?>
                     <li class="page-item"><a href="javascript:void(0)"  class="page-link" onclick="cartItemsCategories('<?php echo $categories; ?>',<?php echo $i; ?>)" ><?php echo $i; ?> </a></li>
                 <?php } } ?>
                 <?php if ($pages+1 <= $post_Perpage) { ?>
                     <li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="cartItemsCategories('<?php echo $categories; ?>',<?php echo $pages+1; ?>)">Next</a></li>
                 <?php } ?>
             </ul>
         </nav>
        <?php } 
    }

      public function cartcountPOSTS($categories)
    {
        $db =$this->database;
        $sql= $db->query("SELECT COUNT(*) FROM sale WHERE categories_sale ='$categories' ");
        $row_post = $sql->fetch_array();
        $total_post= array_shift($row_post);
        $array= array(0,$total_post);
        $total_posts= array_sum($array);
        echo $total_posts;
    }

    public function showCart_item(){

        if(isset($_SESSION["cart_item"])){
                $total_quantity = 0;
                $total_price = 0;
            ?>	
            <table class="tbl-cart table table-responsive-sm table-hover table-bordered"  cellpadding="10" cellspacing="1">
            <thead class="main-active">
            <tr>
            <th style="text-align:left;">Name</th>
            <th style="text-align:left;">Code</th>
            <th style="text-align:right;" width="5%">Quantity</th>
            <th style="text-align:right;" width="10%">Unit Price</th>
            <th style="text-align:right;" width="10%">Price</th>
            <th style="text-align:center;" width="5%">Remove</th>
            </tr>	
             </thead>
            <tbody>
            <?php		
                foreach ($_SESSION["cart_item"] as $item){
                    $item_price = $item["quantity"]*$item["price"];
            		?>
            				<tr>
            				<td><img src="<?php echo BASE_URL_PUBLIC ;?>uploads/sale/<?php echo $item["image"]; ?>" class="cart-item-image" /><?php echo $item["name"]; ?></td>
            				<td><?php echo $item["code"]; ?></td>
            				<td style="text-align:right;"><?php echo $item["quantity"]; ?></td>
            				<td  style="text-align:right;"><?php echo "$ ".$item["price"]; ?></td>
            				<td  style="text-align:right;"><?php echo "$ ". number_format($item_price,2); ?></td>
            				<td style="text-align:center;"><a href="sale.php?action=remove&code=<?php echo $item["code"]; ?>" class="btnRemoveAction"><img src="<?php echo BASE_URL_LINK ;?>image/product-images/icon-delete.png" alt="Remove Item" /></a></td>
            				</tr>
            				<?php
            				$total_quantity += $item["quantity"];
            				$total_price += ($item["price"]*$item["quantity"]);
            		}
            		?>
            
            <tr>
            <td colspan="2" align="right">Total:</td>
            <td align="right"><?php echo $total_quantity; ?></td>
            <td align="right" colspan="2"><strong><?php echo "$ ".number_format($total_price, 2); ?></strong></td>
            <td></td>
            </tr>
            </tbody>
            </table>		
              <?php
            } else {
            ?>
            <div class="no-records">Your Cart is Empty</div>
            <?php 
            } 
	}
	
    public function showCart_itemSale(){

        if(isset($_SESSION["cart_item"])){
                $total_quantity = 0;
                $total_price = 0;
            ?>	
            <table class="table table-responsive-sm table-hover table-bordered" >
             <thead class="main-active">
               <tr>
               <th style="text-align:center;">Products</th>
               <th style="text-align:center;">Price</th>
               <th style="text-align:center;">Remove</th>
			   </tr>	
			 </thead>
             <tbody class="bg-light">
            <?php		
                foreach ($_SESSION["cart_item"] as $item){
                    $item_price = $item["quantity"]*$item["price"];
            		?>
            				<tr>
                     <td style="background: url('<?php echo BASE_URL_PUBLIC ;?>uploads/sale/<?php echo $item["image"]; ?>')no-repeat center center;background-size:cover;height:80px;width:80px;position:relative">
                    <div style="position:absolute;bottom:0px;left:0px;background-color:#0000006e;color:white;width: 100%;"><?php
                    if (strlen($item["name"]) > 12) {
                      echo $item["name"] = substr($item["name"],0,12).'..';
                    }else{
                      echo $item["name"];
                    } ?></div>
                    </td>
            				<td align="right"><?php echo "$ ". number_format($item_price,2); ?></td>
            				<td align="center">
                               <form method="post" id="form-cartitem<?php echo $item['code']; ?>remove" >
                                        <input type="hidden" style="width:30px;" name="action" value="remove" />
                                        <input type="hidden" style="width:30px;" name="code" value="<?php echo $item['code']; ?>" />
                                        <a href="javascript:void(0);" onclick="cart_add('remove','<?php echo 'form-cartitem'.$item['code'].'remove'; ?>','<?php echo $item['code']; ?>');"><img src="<?php echo BASE_URL_LINK ;?>image/product-images/icon-delete.png" alt="Remove Item" /></a> 
                                </form>
                    </td>
            				
                    </tr>
            				<?php
            				$total_quantity += $item["quantity"];
            				$total_price += ($item["price"]*$item["quantity"]);
            		}
            		?>
            
            <tr>
            <td>Total:</td>
            <td align="left" colspan="2"><strong><?php echo "$ ".number_format($total_price, 2); ?></strong></td>
            </tr>
            </tbody>
            </table>		
              <?php
            } else {
            ?>
            <div class="no-records">Your Cart is Empty</div>
            <?php 
            } 
    }
}

$sale = new Sale();
?>