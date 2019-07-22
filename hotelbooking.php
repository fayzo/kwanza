<?php
$min = 100;
$max = 300;

if (! empty($_POST['min_price'])) {
    $min = $_POST['min_price'];
}

if (! empty($_POST['max_price'])) {
    $max = $_POST['max_price'];
}

?>
<?php include "header_navbar_footer/header_if_login.php"?>
<?php include "header_navbar_footer/header.php"?>
<?php include "header_navbar_footer/navbar.php"?>

<div class="container-fluid mt-3 mb-5">
  <?php include "header_navbar_footer/siderbar_hotelbooking.php"?>
</div>

<?php include "header_navbar_footer/footer.php"?>
