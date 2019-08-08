$(document).on('click', '.deleteFundraisingComment', function (e) {
    e.preventDefault();
    var fund_id = $(this).data('fund');
    var comment_id = $(this).data('comment');

    $.ajax({
        url: 'core/ajax_db/fundraising_comment.php',
        method: 'POST',
        dataType: 'text',
        data: {
            fund_id: fund_id,
            deletecomment_id: comment_id,
        }, success: function (response) {
            $("#responseComment").html(response);
            $("#userComment"+comment_id).html('');
            console.log(response);
        }
    });
});