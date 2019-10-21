<?php include "header_navbar_footer/header_if_login.php"?>
<title>Email</title>
<?php include "header_navbar_footer/header.php"?>
<?php include "header_navbar_footer/navbar.php"?>

<div class="container-fluid mt-3 mb-5">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><i>Email</i></h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="<?php echo HOME ;?>">Home</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0);" onclick="location.href='<?php echo BASE_URL_PUBLIC.$user['username'] ;?>'" > User Profile</a></i></li>
                </ol>
            </div>
        </div>
    </section>

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

            <div class="col-md-9">
                <?php include "header_navbar_footer/siderbar_jobs/messages.php"?>
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->
</div>

<?php include "header_navbar_footer/footer.php"?>
  