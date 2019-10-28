$(document).ready(function () {

    $(document).on('click', '#email-dropdown-menu', function () {
        var email_notificationDrpdown = 1;

        $.ajax({
            url: 'core/ajax_db/email_notification.php',
            method: 'POST',
            dataType: 'text',
            data: {
                email_notificationDrpdown: email_notificationDrpdown,
            }, success: function (response) {
                $("#email-menu-view").html(response);
                $("#email1").hide();
                console.log(response);
            }
        });
    });

    $(document).on('keyup', '.search-email-composer', function () {
        // $('.message-recent').hide();
        var searching = $(this).val();
        $.ajax({
            url: 'core/ajax_db/email_notification.php',
            method: 'POST',
            dataType: 'text',
            data: {
                search: searching,
            }, success: function (response) {
                var json = JSON.parse(response);
                $(".emailsendto").html(json.form);
                $(".search-email-composer").val(json.email);
                console.log(response);
            }
        });
    });

    $(document).on('click', '#email-composer-new', function (e) {
        // event.preventDefault();
        e.stopPropagation();
        var user_id = $('#user_id');
        var email_send_to = $('#email-send-to');
        var emailcomposer = $('.emailcomposer');
        var subjectcomposer = $('.subjectcomposer');
        var textcomposer = $('.textcomposer');
         
        if (isEmpty(emailcomposer) && isEmpty(subjectcomposer) && isEmpty(textcomposer)) {
            var filecomposer = $('#filecomposer').val();
            var textarea = textcomposer.val();

            if (filecomposer == '') {

                if (textarea != '') {
                    $.ajax({
                        url: "core/ajax_db/email_notification.php",
                        method: "POST",
                        data: {
                            key: 'textarea',
                            user_id: user_id.val(),
                            email_send_to: email_send_to.val(),
                            emailcomposer :emailcomposer.val(),
                            subjectcomposer: subjectcomposer.val(),
                            textcomposer: textcomposer.val(),
                        },
                        success: function (response) {
                            $("#responseSubmit").html(response).fadeIn();
                            setInterval(function () {
                                $("#responseSubmit").fadeOut();
                            }, 2000);
                            setInterval(function () {
                                // location.reload();
                            }, 2400);
                        }, error: function (response) {
                            $("#responseSubmit").html(response).fadeIn();
                            setInterval(function () {
                                $("#responseSubmit").fadeOut();
                            }, 3000);
                        }
                    });
                }
            }else {

            var extensions3 = $('#filecomposer').val().split('.').pop().toLowerCase();

            if (jQuery.inArray(extensions3, ['gif', 'png', 'jpg', 'mp4', 'mp3', 'jpeg', 'bmp', 'pdf', 'doc', 'ppt', 'docx', 'xlsx', 'xls', 'zip']) == -1) {
                $("#responseSubmit").html('Invalid Image File').fadeIn();
                setInterval(function () {
                    $("#responseSubmit").fadeOut();
                }, 4000);
                $('#filecomposer').val('');
                return false;
            } else if ($('#send').attr("value") == "sendx") {
                //do button 1 thing
                $.ajax({
                    url: 'core/ajax_db/email_notification.php',
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
                        $("#responseSubmit").html(response).fadeIn();
                        setInterval(function () {
                            $("#responseSubmit").fadeOut();
                        }, 2000);
                        setInterval(function () {
                            // location.reload();
                        }, 2400);
                    }, error: function (response) {
                        $("#responseSubmit").html(response).fadeIn();
                        setInterval(function () {
                            $("#responseSubmit").fadeOut();
                        }, 3000);
                    }
                });
                return false;
            }
            }
        }
    });

});