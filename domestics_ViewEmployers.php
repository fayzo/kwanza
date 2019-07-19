<?php 
session_start();
include "core/init.php";

if ($users->domesticsloggedin() == false) {
    header('location: domestic.php');
}

?>
<?php include "header_navbar_footer/header_domestics_login.php"?>
<?php include "header_navbar_footer/header.php"?>
<?php include "header_navbar_footer/navbar.php"?>

<div class="container-fluid mt-3 mb-5">
  <?php include "header_navbar_footer/siderbar_ViewEmployers.php"?>
</div>

<?php include "header_navbar_footer/footer.php"?>
