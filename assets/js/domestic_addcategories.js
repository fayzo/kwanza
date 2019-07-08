$(document).ready(function () {

    $(document).on('click', '#helper-family', function (e) {
        e.stopPropagation();

        $.ajax({
            url: 'core/ajax_db/domestic_addcategories.php',
            method: 'POST',
            dataType: 'text',
            data: {
                helper_family: 'helper-family',
            }, success: function (response) {
                $(".domestic-forms").html(response);
                console.log(response);
            }
        });
    });

    $(document).on('click', '#job-helper', function (e) {
        e.stopPropagation();

        $.ajax({
            url: 'core/ajax_db/domestic_addcategories.php',
            method: 'POST',
            dataType: 'text',
            data: {
                job_helper: 'job-helper',
            }, success: function (response) {
                $(".domestic-forms").html(response);
                console.log(response);
            }
        });
    });

    $(document).on('click', '#job-helper-readmore', function (e) {
        e.stopPropagation();
        var blog_id = $(this).data('blog');

        $.ajax({
            url: 'core/ajax_db/blog_readmore.php',
            method: 'POST',
            dataType: 'text',
            data: {
                blog_id: blog_id,
            }, success: function (response) {
                $(".popupTweet").html(response);
                $(".close-imagePopup").click(function () {
                    $(".blog-popup").hide();
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
