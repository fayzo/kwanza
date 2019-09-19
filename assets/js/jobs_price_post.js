$(document).ready(function () {

    $(document).on('click', '.price-jobs', function (e) {
        e.stopPropagation();
        var post_jobs = $(this).data('pricejob');

        $.ajax({
            url: 'core/ajax_db/price_jobsPost.php',
            method: 'POST',
            dataType: 'text',
            data: {
                post_jobs: post_jobs,

            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".jobs-popup").hide();
                });
                console.log(response);
            }
        });
    });

    $(document).on('click', '.payment-job', function (e) {
        e.stopPropagation();
        var user = $(this).data('user');
        var payment_jobs_jobs = 'df';

        $.ajax({
            url: 'core/ajax_db/price_jobsPost.php',
            method: 'POST',
            dataType: 'text',
            data: {
                payment_jobs_jobs: payment_jobs_jobs,
                user: user

            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".jobs-popup").hide();
                });
                console.log(response);
            }
        });
    });
});
