<?php include "header_navbar_footer/header_if_login.php"?>
<title>Who to Follow </title>
<?php include "header_navbar_footer/header.php"?>
<?php include "header_navbar_footer/navbar.php"?>

<!-- container-fuild -->
<div class="container mb-5 mt-5">
    <!-- Main content -->
    <section class="content">
        <div class="row">

            <div class="col-md-3 mb-3">
                <div class="mb-2">
                    <?php echo $home->userProfile($user_id); ?>
                </div>
                <?php echo $trending->trends(); ?>
                <!-- Profile Image -->
                 <div class="sticky-top" style="top:53px;">
                        <?php echo $home->jobsfetch() ;?>
                </div>
                <!-- jobs -->
            </div>
            <!-- /.col -->

            <div class="col-md-9" id="Follow-view">
                      <?php $follow->Network_FollowingLists(1,$user_id,$user['user_id']); ?>
            </div>
            <!-- /.col-md-6 -->
           
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include "header_navbar_footer/footer.php"?>