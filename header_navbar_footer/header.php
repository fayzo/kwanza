    
    <meta name="viewport" content="width=device-width, initial-scale=1 , maximum-scale=1" >
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/main.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/ui.totop.css" rel="stylesheet">

    <link href="<?php echo BASE_URL_LINK ;?>dist/css/navbar_blac.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/navbar_yellow.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/navbar_blue.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/navbar_purple.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/navbar_rose.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/navbar_green.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/navbar_chocolate.css" rel="stylesheet">

    <link href="<?php echo BASE_URL_LINK ;?>dist/css/dropdown.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/siderbarResponsive.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/boxChat.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/directChat.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/cardboxChat.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/profile.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/timeline.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/mailbox.css" rel="stylesheet">
    <!-- <link href="<?php echo BASE_URL_LINK ;?>dist/css/calendar.css" rel="stylesheet"> -->
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/follow.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/profileEdit.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/whoTofollow.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/upload_profile_imagee.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/home.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/background.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/popupPost.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/imagePopup.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/message.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/shopping_cart.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/blog.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/jquery.Jcrop.min.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo BASE_URL_LINK ;?>dist/css/jquery-ui.css" rel="stylesheet" type="text/css" />
    <link href="<?php echo BASE_URL_LINK ;?>plugin/iCheck/flat/blue.css"  rel="stylesheet">
    <!-- <link href="<?php echo BASE_URL_LINK ;?>dist/css/AdminLTE.css" rel="stylesheet"> -->

    <link href="<?php echo BASE_URL_LINK ;?>icon/google_icon/google_icons.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>icon/flag-icon-css-master/css/flag-icon.css" rel="stylesheet">
    <link href="<?php echo BASE_URL_LINK ;?>icon/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- <link href="<?php echo BASE_URL_LINK ;?>icon/glyphicons/glyphicons.css" rel="stylesheet"> -->
    <link href="<?php echo BASE_URL_LINK ;?>plugin/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL_LINK ;?>dist/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo BASE_URL_LINK ;?>dist/css/responsive.bootstrap4.min.css">
    <!-- Date Picker -->
  <!-- <link rel="stylesheet" href="<?php echo BASE_URL_LINK ;?>plugin/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"> -->
  <!-- Daterange picker -->
  <!-- <link rel="stylesheet" href="<?php echo BASE_URL_LINK ;?>plugin/bootstrap-daterangepicker/daterangepicker.css"> -->
  <!-- bootstrap wysihtml5 - text editor -->
  <!-- <link rel="stylesheet" href="<?php echo BASE_URL_LINK ;?>plugin/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"> -->
    <!-- <link   href="fontawesome_5_4/css/fontawesome.css" rel="stylesheet">
    <link   href="fontawesome_5_4/css/solid.css" rel="stylesheet">
    <link   href="fontawesome_5_4/css/regular.css" rel="stylesheet">
    <link   href="fontawesome_5_4/css/brands.css" rel="stylesheet"> -->
    <!-- <link   href="fontawesome_5_4/css/all.css" rel="stylesheet"> -->
    <!-- <script src="fontawesome_5_4/js/fontawesome.js"></script>
    <script src="fontawesome_5_4/js/solid.js"></script>
    <script src="fontawesome_5_4/js/regular.js"></script>
    <script src="fontawesome_5_4/js/brands.js"></script> -->
    <!-- <script src="<?php echo BASE_URL_LINK ;?>icon/fontawesome_5_4/js/all.js"></script> -->
    <!-- <script src="<?php echo BASE_URL_LINK ;?>dist/js/country.js"></script> -->


    <script>
     function colors(requests, id) {
        var xhr = new XMLHttpRequest();
        var url = "core/ajax_db/color_db.php?key=color" + '&id=' + id + '&color=' + requests;
        xhr.open("POST", url, true);
        xhr.send();

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var json = JSON.parse(xhr.responseText);
                var sc = document.body;
                sc.setAttribute("id", json.color);
                
                // console.log(json.admin_id + ", " + json.color);
                // console.log(xhr.responseText);
                // location.reload();
                // if (xhr.responseText.indexOf('color') >= 0) {
                //     window.location = 'admin.php';
                // }
            };
        }
    }

     function background(requests, id) {
        var xhr = new XMLHttpRequest();
        var url = "core/ajax_db/background_db.php?key=background" + '&id=' + id + '&background=' + requests;
        xhr.open("POST", url, true);
        xhr.send();

        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var json = JSON.parse(xhr.responseText);
                var sc = document.body;
                sc.setAttribute("class", json.background);
                
                // console.log(json.admin_id + ", " + json.background);
                // console.log(xhr.responseText);
                // location.reload();
                // if (xhr.responseText.indexOf('color') >= 0) {
                //     window.location = 'admin.php';
                // }
            };
        }
    }

    function language(lang, id) {
        var xmlhttp = new XMLHttpRequest();
        var url = "core/ajax_db/languange_db.php?key=lang" + '&id=' + id + '&lang=' + lang;
        xmlhttp.open("POST", url, true);
        xmlhttp.send();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                var myObj = JSON.parse(this.responseText);
                var sc = document.body;
                sc.setAttribute("class", myObj.language);
                var lang = document.body.className;
                if (myObj.language == 'rw') {
                    document.getElementById('welcome-json').innerHTML = rw.welcome;
                } else if (myObj.language == 'fr') {
                    document.getElementById('welcome-json').innerHTML = fr.welcome;
                } else {
                    document.getElementById('welcome-json').innerHTML = en.welcome;
                }
                console.log("Json parsed data is: " + JSON.stringify(myObj));
                // console.log(myObj);
            }
        };
    }

    function fundraising_FecthRequest(categories,id) {
        var xhr = new XMLHttpRequest();
        // Add any event handlers here...
        xhr.open('POST', 'core/ajax_db/fundraisingFecthPaginat.php?pages=' + id + '&categories=' + categories, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {

                switch (categories) {
                    case 'business':
                         var pagination = document.getElementById('businessPagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'animals':
                         var pagination = document.getElementById('animalsPagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'community':
                         var pagination = document.getElementById('communityPagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'competition':
                         var pagination = document.getElementById('competitionPagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'creative':
                         var pagination = document.getElementById('creativePagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'education':
                         var pagination = document.getElementById('educationPagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                }
            }
        };
          xhr.addEventListener('progress',function(e){
             var progress= Math.round((e.loaded/e.total)*100);
             $('.progress-navbar').show();
             $('#progress_width').css('width',progress +'%');
             $('#progress_width').html(progress +'%');
         }, false);

        xhr.addEventListener('load', function (e) { 
            $('.progress-bar').removeClass('bg-info').addClass('bg-success').html('<span> completed  <span class="fa fa-check"></span></span>');
            setInterval(function () {
                $(".progress-navbar").fadeOut();
            }, 2000);
        }, false);
    }

    function blog_FecthRequest(categories,id) {
        var xhr = new XMLHttpRequest();
        // Add any event handlers here...
        xhr.open('POST', 'core/ajax_db/blog_FecthPaginat.php?pages=' + id + '&categories=' + categories, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {

                switch (categories) {
                    case 'history':
                         var pagination = document.getElementById('historyPagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'science':
                         var pagination = document.getElementById('sciencePagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'computer_science':
                         var pagination = document.getElementById('computer_sciencePagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'politics':
                         var pagination = document.getElementById('politicsPagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'story':
                         var pagination = document.getElementById('storyPagination');
                         pagination.innerHTML = xhr.responseText;
                        break;
                   
                }
            }
        };
          xhr.addEventListener('progress',function(e){
             var progress= Math.round((e.loaded/e.total)*100);
             $('.progress-navbar').show();
             $('#progress_width').css('width',progress +'%');
             $('#progress_width').html(progress +'%');
         }, false);

        xhr.addEventListener('load', function (e) { 
            $('.progress-bar').removeClass('bg-info').addClass('bg-success').html('<span> completed  <span class="fa fa-check"></span></span>');
            setInterval(function () {
                $(".progress-navbar").fadeOut();
            }, 2000);
        }, false);
    }

    function movies_FecthRequest(categories,id) {
        var xhr = new XMLHttpRequest();
        // Add any event handlers here...
        xhr.open('POST', 'core/ajax_db/movies_FecthPaginat.php?pages=' + id + '&categories=' + categories, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {

                switch (categories) {
                    case 'america-movies':
                         var pagination = document.getElementById('view-more');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Tv-Series':
                         var pagination = document.getElementById('view-more');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Anime-Series':
                         var pagination = document.getElementById('view-more');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Cartoons-Movies':
                         var pagination = document.getElementById('view-more');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Africans-Movies':
                         var pagination = document.getElementById('view-more');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Action':
                         var pagination = document.getElementById('Action');
                         pagination.innerHTML = xhr.responseText;
                        break;
                   
                }

            }
        };

        xhr.addEventListener('progress',function(e){
             var progress= Math.round((e.loaded/e.total)*100);
             $('.progress-navbar').show();
             $('#progress_width').css('width',progress +'%');
             $('#progress_width').html(progress +'%');
         }, false);

        xhr.addEventListener('load', function (e) { 
            $('.progress-bar').removeClass('bg-info').addClass('bg-success').html('<span> completed  <span class="fa fa-check"></span></span>');
            setInterval(function () {
                $(".progress-navbar").fadeOut();
            }, 2000);
        }, false);
    }

    function events_FecthRequest(categories,id) {
        var xhr = new XMLHttpRequest();
        // Add any event handlers here...
        xhr.open('POST', 'core/ajax_db/events_FecthPaginat.php?pages=' + id + '&categories=' + categories, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {

                switch (categories) {
                    case 'Party':
                         var pagination = document.getElementById('Party');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Education':
                         var pagination = document.getElementById('Education');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Government':
                         var pagination = document.getElementById('Government');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Cartoons-Movies':
                         var pagination = document.getElementById('view-more');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Africans-Movies':
                         var pagination = document.getElementById('view-more');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Action':
                         var pagination = document.getElementById('Action');
                         pagination.innerHTML = xhr.responseText;
                        break;
                   
                }
            }
        };
          xhr.addEventListener('progress',function(e){
             var progress= Math.round((e.loaded/e.total)*100);
             $('.progress-navbar').show();
             $('#progress_width').css('width',progress +'%');
             $('#progress_width').html(progress +'%');
         }, false);

        xhr.addEventListener('load', function (e) { 
            $('.progress-bar').removeClass('bg-info').addClass('bg-success').html('<span> completed  <span class="fa fa-check"></span></span>');
            setInterval(function () {
                $(".progress-navbar").fadeOut();
            }, 2000);
        }, false);
    }

    function sports_FecthRequest(categories,id) {
        var xhr = new XMLHttpRequest();
        // Add any event handlers here...
        xhr.open('POST', 'core/ajax_db/sports_FecthPaginat.php?pages=' + id + '&categories=' + categories, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {

                switch (categories) {
                    case 'Football':
                         var pagination = document.getElementById('Football');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Education':
                         var pagination = document.getElementById('Education');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Government':
                         var pagination = document.getElementById('Government');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Cartoons-Movies':
                         var pagination = document.getElementById('view-more');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Africans-Movies':
                         var pagination = document.getElementById('view-more');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  'Action':
                         var pagination = document.getElementById('Action');
                         pagination.innerHTML = xhr.responseText;
                        break;
                   
                }
            }
        };
          xhr.addEventListener('progress',function(e){
             var progress= Math.round((e.loaded/e.total)*100);
             $('.progress-navbar').show();
             $('#progress_width').css('width',progress +'%');
             $('#progress_width').html(progress +'%');
         }, false);

        xhr.addEventListener('load', function (e) { 
            $('.progress-bar').removeClass('bg-info').addClass('bg-success').html('<span> completed  <span class="fa fa-check"></span></span>');
            setInterval(function () {
                $(".progress-navbar").fadeOut();
            }, 2000);
        }, false);
    }

    function Football_FecthRequest(id) {
        var xhr = new XMLHttpRequest();
        // Add any event handlers here...
        xhr.open('POST', 'core/ajax_db/football_FecthPaginat.php?pages=' + id , true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {

                switch (id) {
                    case 1:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  2:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  3:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  4:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  5:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  6:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                   
                }
            }
        };
          xhr.addEventListener('progress',function(e){
             var progress= Math.round((e.loaded/e.total)*100);
             $('.progress-navbar').show();
             $('#progress_width').css('width',progress +'%');
             $('#progress_width').html(progress +'%');
         }, false);

        xhr.addEventListener('load', function (e) { 
            $('.progress-bar').removeClass('bg-info').addClass('bg-success').html('<span> completed  <span class="fa fa-check"></span></span>');
            setInterval(function () {
                $(".progress-navbar").fadeOut();
            }, 2000);
        }, false);
    }

    function landscapes_FecthRequest(categories,id) {
        var xhr = new XMLHttpRequest();
        // Add any event handlers here...
        xhr.open('POST', 'core/ajax_db/landscapes_FecthPaginat.php?pages=' + id + '&categories=' + categories, true);
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {

                switch (categories) {
                    case 'Kigali-city':
                         var pagination = document.getElementById('Kigali-city');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  2:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  3:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  4:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  5:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                    case  6:
                         var pagination = document.getElementById('Football-view');
                         pagination.innerHTML = xhr.responseText;
                        break;
                   
                }
            }
        };
          xhr.addEventListener('progress',function(e){
             var progress= Math.round((e.loaded/e.total)*100);
             $('.progress-navbar').show();
             $('#progress_width').css('width',progress +'%');
             $('#progress_width').html(progress +'%');
         }, false);

        xhr.addEventListener('load', function (e) { 
            $('.progress-bar').removeClass('bg-info').addClass('bg-success').html('<span> completed  <span class="fa fa-check"></span></span>');
            setInterval(function () {
                $(".progress-navbar").fadeOut();
            }, 2000);
        }, false);
    }

    // function postsFetch() {

    //     var xhr = new XMLHttpRequest();
    //     // Add any event handlers here...
    //     var url = "core/ajax_db/postsFetchReload.php";
    //     xhr.open('POST', url, true);
    //     xhr.send();
    //     xhr.onreadystatechange = function() {
    //         if (xhr.readyState == 4 && xhr.status == 200) {
    //             var postsFetch = document.getElementById('postsFetch');
    //             postsFetch.innerHTML = xhr.responseText;
    //         }
    //     };
    // }
    </script>
    <?php include('header_image_slide.php') ;?>
    <style>
    body{
        background-color: #f8f9fa!important;
        padding-top: 3rem !important;
        text-align:justify;
        word-spacing: normal;
    }
    .card .card-body{
        font-size: 13px;
    }
    html,body { font-size: 12px; }
    </style>

</head>

<body class="<?php echo $user['language']." ".$user['background']; ?>" style="padding-top:5rem;" id="<?php echo $user['color']; ?>">
