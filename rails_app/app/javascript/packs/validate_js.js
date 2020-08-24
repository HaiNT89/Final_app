require("jquery")
require("jquery-validation")


$(".edit_album").validate({
    rules: {
        "album[title]": {
            required: true,

        }
    },
    messages: {
        "album[title]": {
            required: "Title khong duoc rong"

        }
    }
});

$("i").click(function() {
    if ($(this).hasClass('item_heart_blue')) {
        $(this).addClass('item_heart_gray')
        $(this).removeClass('item_heart_blue')
    } else {
        $(this).removeClass('item_heart_gray')
        $(this).addClass('item_heart_blue')
    }
});