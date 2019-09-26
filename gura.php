<!-- < ?php include "header_navbar_footer/header_if_login.php"?> -->
<?php include "header_navbar_footer/Get_usernameProfile.php"?>
<?php include "header_navbar_footer/header.php"?>
<?php include "header_navbar_footer/navbar.php"?>

<div class="container-fluid mt-3 mb-5">
   <section class="content-header">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><i> Shopping</i></h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">gura-Shop </li>
                    <li class="breadcrumb-item active"><i>Items</i></li>
                </ol>
            </div>
        </div>
    </section>
   
    <div id="gura-cart" >
       <button type="button" class="btn btn-primary btn-md" onclick="location.href='<?php echo BASE_URL_PUBLIC.'gurisha.php'; ?>'">Back to Purchase more</button>
       <a id="btnEmpty" href="sale.php?action=empty">Empty Cart</a>
         <span id="responseSubmititerm"> </span>
                <div id="responseSubmitcartiterm">
                 <?php echo $gurisha->showCart_gurisha_item(); ?>
                </div>
    </div>


</div>

<?php include "header_navbar_footer/footer.php"?>