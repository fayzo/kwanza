<?php 
session_start();
include "core/init.php";

if (isset($_SESSION['employers'])) {
    header('location: domestics_EmployersViewdomestics.php');
    exit();
}

if (isset($_SESSION['domestics'])) {
    header('location: domestics_ViewEmployers.php');
    exit();
}

?>
<?php include "header_navbar_footer/header_domestics_login.php"?>
<?php include "header_navbar_footer/header.php"?>
<?php include "header_navbar_footer/navbar.php"?>

<div class="container-fluid mt-3 mb-5">
  <?php include "header_navbar_footer/siderbar_domestic.php"?>
</div>

<?php include "header_navbar_footer/footer.php"?>
