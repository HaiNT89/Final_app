require("jquery")
require("jquery-validation")


$(".edit_album").validate({
    rules: {
        "album[title_album]": {
            required: true,

        }
    },
    messages: {
        "album[title_album]": {
            required: "Title khong duoc rong"

        }
    }
});