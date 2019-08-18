<?php 
 if ($_SERVER['REQUEST_METHOD'] == 'GET' && realpath(__FILE__) == realpath($_SERVER['SCRIPT_FILENAME'])){
       header('Location: ../../404.html');
 }

class Domestics extends home {

     public function domesticshelpers()
   { ?>
    <div class="card borders-bottoms">
        <div class="card-header text-center">
            <h5><i>What are you looking for ?</i> </h5>
        </div>
        <div class="card-body">
           <div class="row">

                <div class="col-md-6">
                    <div class="card borders-tops text-center shadow-lg more  loginTerms" >
                      <div><img class="img-fluid mt-3 rounded-circle" src="<?php echo BASE_URL_LINK.'image/img/avatar2.png'; ?>" width="200px" heght="200px"></div>
                      <div class="card-body">
                        <a href="javascript:void(0);" class="h4  loginTerms"  >HELP</a>
                        <p class="card-text">Domestic Helper. Be in touch with our applicants online, set up interviews and find the most sitable domestic helper for your family </p>
                      </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="card borders-tops text-center shadow-lg more  loginTerms0" >
                      <div><img class="img-fluid mt-3 rounded-circle" src="<?php echo BASE_URL_LINK.'image/img/avatar3.png'; ?>" width="200px" heght="200px"></div>
                      <div class="card-body">
                        <a href="javascript:void(0);" class="h4 loginTerms0" >A JOB</a>
                        <p class="card-text">Domestic Helper. Be in touch with our applicants online, set up interviews and find the most sitable domestic helper for your family </p>
                      </div>
                    </div>
                </div>
               
            </div> <!-- row -->
        </div> <!-- card-body -->
    </div><!-- card -->
    
  <?php }

     public function employersNeedDomestics()
     {

     }

     public function domesticsNeedJobs()
     {

     }


}
$domestics = new Domestics();
?>