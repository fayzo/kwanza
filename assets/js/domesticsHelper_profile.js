$(document).ready(function () {

    $(document).on('click', '#domestics-view', function (e) {
        e.stopPropagation();
        var domestic_id = $(this).data('domestics');

        $.ajax({
            url: 'core/ajax_db/domesticHelper_Profile.php',
            method: 'POST',
            dataType: 'text',
            data: {
                domestic_id: domestic_id,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".domestic-popup").hide();
                });
                console.log(response);

            }
        });
    });

    $(document).on('click', '#employers-view', function (e) {
        e.stopPropagation();
        var employer_id = $(this).data('domestics');

        $.ajax({
            url: 'core/ajax_db/domesticEmployer_Profile.php',
            method: 'POST',
            dataType: 'text',
            data: {
                employer_id: employer_id,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".employer-popup").hide();
                });
                console.log(response);

            }
        });
    });
});
