<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Sale extends Home{

    public function cart_item(){

        $mysqli= $this->database;
        $db_handle = $mysqli;
        if(!empty($_GET["action"])) {
        switch($_GET["action"]) {
        	case "add":
        		if(!empty($_POST["quantity"])) {
        			$productByCode = $this->runQuery("SELECT * FROM sale WHERE code='" . $_GET["code"] . "'");
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
        	break;
        	case "remove":
        		if(!empty($_SESSION["cart_item"])) {
        			foreach($_SESSION["cart_item"] as $k => $v) {
        					if($_GET["code"] == $k)
        						unset($_SESSION["cart_item"][$k]);				
        					if(empty($_SESSION["cart_item"]))
        						unset($_SESSION["cart_item"]);
        			}
        		}
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
                    <div class="card-img-top img-fuild"><img src="<?php echo BASE_URL_PUBLIC."uploads/sale/".$row["photo"]; ?>" width="250px" height="155px;"></div>
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
                    <td><img src="<?php echo BASE_URL_PUBLIC ;?>uploads/sale/<?php echo $item["image"]; ?>" class="cart-item-image" /><div><?php
                    if (strlen($item["name"]) > 7) {
                      echo $item["name"] = substr($item["name"],0,7).'..';
                    }else{
                      echo $item["name"];
                    } ?></div>
                    </td>
            				<td align="right"><?php echo "$ ". number_format($item_price,2); ?></td>
            				<td align="center"><a href="sale.php?action=remove&code=<?php echo $item["code"]; ?>" class="btnRemoveAction"><img src="<?php echo BASE_URL_LINK ;?>image/product-images/icon-delete.png" alt="Remove Item" /></a></td>
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