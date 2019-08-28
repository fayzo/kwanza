$(document).ready(function () {

    $(document).on('click', '.deletehotel', function (e) {
        e.preventDefault();
        var hotel_id = $(this).data('hotel');
        var user_id = $(this).data('user');

        $.ajax({
            url: 'core/ajax_db/hotel_delete.php',
            method: 'POST',
            dataType: 'text',
            data: {
                deleteEvents: user_id,
                showpopupdelete: hotel_id,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-retweet-popup,.cancel-it").click(function () {
                    $(".hotel-popup").hide();
                });
                $(".delete-it-hotel").click(function () {
                    $.ajax({
                        url: 'core/ajax_db/hotel_delete.php',
                        method: 'POST',
                        dataType: 'text',
                        data: {
                            deleteTweetHome: hotel_id,
                        }, success: function (response) {
                            $("#responseDeletePost").html(response);
                            setInterval(function () {
                                $("#responseDeletePost").fadeOut();
                            }, 1000);
                            setInterval(function () {
                                // location.reload();
                            }, 1100);
                            console.log(response);
                        }

                    });
                });
                console.log(response);
            }

        });
    });

    $(document).on('click', '.update-hotel-btn', function (e) {
        e.preventDefault();
        var hotel_id = $(this).data('hotel');
        var user_id = $(this).data('user');
        // var available = $('#available' + hotel_id).val();
        var discount_change = $('#discount_change' + hotel_id).val();
        var discount_price = $('#discount_price' + hotel_id).val();
        var price = $('#price' + hotel_id).val();
        var banner = $('#banner' + hotel_id).val();

            $.ajax({
                url: 'core/ajax_db/hotel_delete.php',
                method: 'POST',
                dataType: 'text',
                data: {
                    hotel_id: hotel_id,
                    user_id: user_id,
                    discount_change: discount_change,
                    discount_price: discount_price,
                    price: price,
                    banner: banner,
                }, success: function (response) {
                    $("#response"+ hotel_id).html(response);
                    setInterval(function () {
                        $("#response"+ hotel_id).fadeOut();
                    }, 1000);
                    setInterval(function () {
                        // location.reload();
                    }, 1100);
                    console.log(response);
                }

            });
        });

});