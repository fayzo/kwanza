 
  <section class="content-header">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1><i>Football</i></h1>
            </div>

            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item">Football</li>
                    <li class="breadcrumb-item"><button type="button" class="btn btn-light btn-sm" id="add_football" data-football="<?php echo $_SESSION['key']; ?>" > + Add football </button></li>
                    <li class="breadcrumb-item">Sports</li>
                </ol>
            </div>

        </div>
    </section>

    <div class="row">
        <div class="col-md-3">
            <?php echo $football->footballRecent_news('Football'); ?>
        </div><!-- col -->

        <div class="col-md-6">
            <div class="row">
                <div class="col-md-3 p-0">
                    <div class="list-group sticky-top" id="list-tab" role="tablist">
                        <a class="list-group-item list-group-item-action active text-center" id="list-Business-list" onclick="" data-toggle="tab" role="tab" aria-controls="list-Community" >Home </a>
                        <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="" data-toggle="tab"  role="tab" aria-controls="list-Community">Azam league</a>
                        <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="" data-toggle="tab"  role="tab"  aria-controls="list-Community">Kagame cup</a>
                        <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="" data-toggle="tab"  role="tab" aria-controls="list-Community"> Amahoro league </a>
                        <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="" data-toggle="tab"  role="tab" aria-controls="list-Community">  U-16</a>
                        <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="" data-toggle="tab"  role="tab" aria-controls="list-Community">  U-18</a>
                        <a class="list-group-item list-group-item-action" id="list-Community-list" onclick="" data-toggle="tab"  role="tab" aria-controls="list-Community">  U-20</a>
                    </div>
                </div>
                 <div class="col-md-9 p-0">
                    <div class="card">
                        <div id="Football-view">
                            <?php  
                            $date = strtotime("0 day"); 
                            echo $football->currentDatefootballMatch(0,date('y-m-d', $date),date('Y-m-d', $date));
                            ?>
                        </div>
                    </div> <!-- card -->
                </div> <!-- col -->
            </div> <!-- row -->
        </div> <!-- col -->

        <div class="col-md-3">
          <?php echo $football->footballMatchLineup(); ?>
          <?php echo $football->footballMatchFixture(); ?>
        </div><!-- col -->
        
    </div>

  <!-- <ul class="list-inline text-center mb-0">
       < ?php for ($i= 6; $i > 0; $i--) { 
              $date = strtotime("-$i day"); ?>
           <li class="list-inline-item px-2 m-0 bg-light border border-dark text-dark rounded">< ?php echo date('M d', $date);  ?></li>
       < ?php } ?>
       <li class="list-inline-item active px-2 m-0 bg-primary border border-dark text-light rounded">Today</li>
       < ?php for ($i= 1; $i < 6; $i++) { 
              $date = strtotime("+$i day"); ?>
           <li class="list-inline-item px-2 m-0 bg-light border border-dark text-dark rounded">< ?php echo date('M d', $date);  ?></li>
       < ?php } ?>
   </ul> -->