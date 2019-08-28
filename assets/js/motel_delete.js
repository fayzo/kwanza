$(document).ready(function () {

    $(document).on('click', '.deletemotel', function (e) {
        e.preventDefault();
        var motel_id = $(this).data('motel');
        var user_id = $(this).data('user');

        $.ajax({
            url: 'core/ajax_db/motel_delete.php',
            method: 'POST',
            dataType: 'text',
            data: {
                deleteEvents: user_id,
                showpopupdelete: motel_id,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-retweet-popup,.cancel-it").click(function () {
                    $(".motel-popup").hide();
                });
                $(".delete-it-motel").click(function () {
                    $.ajax({
                        url: 'core/ajax_db/motel_delete.php',
                        method: 'POST',
                        dataType: 'text',
                        data: {
                            deleteTweetHome: motel_id,
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

    $(document).on('click', '.update-motel-btn', function (e) {
        e.preventDefault();
        var motel_id = $(this).data('motel');
        var user_id = $(this).data('user');
        // var available = $('#available' + motel_id).val();
        var discount_change = $('#discount_change' + motel_id).val();
        var discount_price = $('#discount_price' + motel_id).val();
        var price = $('#price' + motel_id).val();
        var banner = $('#banner' + motel_id).val();

            $.ajax({
                url: 'core/ajax_db/motel_delete.php',
                method: 'POST',
                dataType: 'text',
                data: {
                    motel_id: motel_id,
                    user_id: user_id,
                    discount_change: discount_change,
                    discount_price: discount_price,
                    price: price,
                    banner: banner,
                }, success: function (response) {
                    $("#response"+ motel_id).html(response);
                    setInterval(function () {
                        $("#response"+ motel_id).fadeOut();
                    }, 1000);
                    setInterval(function () {
                        // location.reload();
                    }, 1100);
                    console.log(response);
                }

            });
        });

});