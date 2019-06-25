$(document).ready(function () {
    $(document).on('click', '.jobHovers', function () {
        // e.stopPropagation();
        var job_id = $(this).data('job');
        var business_id = $(this).data('business');
        $.ajax({
            url: 'core/ajax_db/businessPostView.php',
            method: 'POST',
            dataType: 'text',
            data: {
                job_id: job_id,
                business_id: business_id,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".job-popup").hide();
                });
                console.log(response);
            }
        });
    });

    $(document).on('click', '.inbox-view', function () {
        // e.stopPropagation();
        var cv_id = $(this).data('cv_id');
        var business_id = $(this).data('business');
        $.ajax({
            url: 'core/ajax_db/businessApplyViewinbox.php',
            method: 'POST',
            dataType: 'text',
            data: {
                cv_id: cv_id,
                business_id: business_id,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".inbox-popup").hide();
                });
                console.log(response);
            }
        });
    });

    $(document).on('keyup', '.search0', function () {
        if ($(this).val() != "") {
            $('.job-hide').hide();
        } else {
            $('.job-hide').show();
        }
        var searching = $(this).val();
        $.ajax({
            url: 'core/ajax_db/businessPostView.php',
            method: 'POST',
            dataType: 'text',
            data: {
                search: searching,
            }, success: function (response) {
                $(".job-show").html(response);
                console.log(response);
            }
        });
    });
});