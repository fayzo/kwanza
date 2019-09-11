<!-- container-fuild -->
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><i>Rwanda landscapes</i></h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">Province</li>
                    <li class="breadcrumb-item">View</li>
                </ol>
            </div>
        </div>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">

        
            <div class="col-md-8 offset-2">
                <div class="row">

                    <div class="col-md-12 mb-4"  id="jobs-hides">
                        <!-- jobs -->
                               <?php echo $landscapes->landscapesfetchALL(1) ;?>
                        <!-- /.card -->
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.col-md-6 -->

           

        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
