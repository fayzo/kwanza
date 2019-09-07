$(document).ready(function () {

    $(document).on('click', '.footballMatch_Readmore', function (e) {
        e.stopPropagation();
        var football_id = $(this).data('footballmatchread');

        $.ajax({
            url: 'core/ajax_db/football_readmore.php',
            method: 'POST',
            dataType: 'text',
            data: {
                football_id: football_id,
                username: 'jojo',
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".football-popup").hide();
                });
                console.log(response);
            }
        });
    });

});
