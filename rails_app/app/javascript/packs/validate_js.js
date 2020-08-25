require("jquery")
require("jquery-validation")

$("#reaction").click(function() {
    if ($(this).hasClass('item_heart_blue')) {
        $(this).addClass('item_heart_gray')
        $(this).removeClass('item_heart_blue')
    } else {
        $(this).removeClass('item_heart_gray')
        $(this).addClass('item_heart_blue')
    }
});