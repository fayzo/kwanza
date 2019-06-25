$(document).ready(function () {

    $(document).on('click', '#events-readmore', function (e) {
        e.stopPropagation();
        var fund_id = $(this).data('events');

        $.ajax({
            url: 'core/ajax_db/events_addcategories.php',
            method: 'POST',
            dataType: 'text',
            data: {
                fund_id: fund_id,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".events-popup").hide();
                });
                console.log(response);
            }
        });
    });

    $(document).on('click', '#add_events', function (e) {
        $('.progress-hidex').hide();
        $('.progress-hidec').hide();
        $('.progress-hidez').hide();
        e.stopPropagation();
        var events_view = $(this).data('events');

        $.ajax({
            url: 'core/ajax_db/events_addcategories.php',
            method: 'POST',
            dataType: 'text',
            data: {
                events_view: events_view,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".events-popup").hide();
                });
                console.log(response);
            }
        });
    });

    $(document).on('click', '#form-events', function (e) {
        // event.preventDefault();
        e.stopPropagation();
        var country = $('#country');
        var additioninformation = $('#addition-information');
        var photo = $('#photo');
        var video = $('#video');
        var youtube = $('#youtube');
        var categories_events = $('#categories_events');
        var name_place = $('#name_place');
        var location_events = $('#location_events');
        var start_events = $('#start_events');
        var date0 = $('#date0');

        if (isEmpty(country)  && isEmpty(location_events)  && isEmpty(name_place) && isEmpty(date0)  && isEmpty(start_events)  && isEmpty(categories_events) && isEmpty(additioninformation) && 
            isEmpty(photo) && isEmpty(video) && isEmpty(youtube)) {
            
            var extensions1 = $('#photo').val().split('.').pop().toLowerCase();
            
            if (jQuery.inArray(extensions1, ['gif', 'png', 'jpg','jpeg']) == -1) {
                $("#responseSubmitevents").html('Invalid Image File').fadeIn();
                setInterval(function () {
                    $("#responseSubmitevents").fadeOut();
                }, 4000);
                $('#photo').val('');
                return false;
          
            } else {
                $.ajax({
                    url: 'core/ajax_db/events_addcategories.php',
                    method: "POST",
                    data: new FormData(this),
                    contentType: false,
                    processData: false,
                    xhr: function () {
                        var xhr = new XMLHttpRequest();
                        xhr.upload.addEventListener('progress', function (e) {
                            var progress = Math.round((e.loaded / e.total) * 100);
                            $('.progress-hidex').show();
                            $('.progress-hidec').show();
                            $('.progress-hidez').show();
                            $('#prox').css('width', progress + '%');
                            $('#proc').css('width', progress + '%');
                            $('#proz').css('width', progress + '%');
                            $('#prox').html(progress + '%');
                            $('#proc').html(progress + '%');
                            $('#proz').html(progress + '%');
                        });

                        xhr.addEventListener('load', function (e) {
                            $('.progress-bar').removeClass('bg-info').addClass('bg-success').html('<span>upload completed  <span class="fa fa-check"></span></span>');
                        });
                        return xhr;
                    },
                    success: function (response) {
                        $("#responseSubmitevents").html(response).fadeIn();
                        setInterval(function () {
                            $("#responseSubmitevents").fadeOut();
                        }, 2000);
                        setInterval(function () {
                            location.reload();
                        }, 2400);
                    }, error: function (response) {
                        $("#responseSubmitevents").html(response).fadeIn();
                        setInterval(function () {
                            $("#responseSubmitevents").fadeOut();
                        }, 3000);
                    }
                });
                return false;
            }
        }
    });

    $(document).on('click', '.imageFundViewPopup', function (e) {
        e.stopPropagation();
        var fund_id = $(this).data('fund');
        $.ajax({
            url: 'core/ajax_db/FundraisingImageViewPopup.php',
            method: 'POST',
            dataType: 'text',
            data: {
                showpimage: fund_id,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".img-popup").hide();
                });
                console.log(response);
            }
        });
    });
});

function isEmpty(caller) {
    if (caller.val() == "") {
        caller.css("outline", "1px solid red");
        return false;
    } else {
        caller.css("outline", "1px solid green ");
    }
    return true;
}

function isEmptys(caller) {
    if (caller.val() != "") {
        caller.css("outline", "1px solid red");
        return false;
    }
    return true;
}
