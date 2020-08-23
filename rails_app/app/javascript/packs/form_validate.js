require("jquery")
require("jquery-validation")

$(document).ready(function() {
    $.validator.addMethod("password", function(value, element) {
        return /^[A-Za-z0-9\d=!-@._*]+$/.test(value);
    }), "Password invalid";
});



$(document).ready(function() {
    $("#new_user").validate({
        rules: {
            "user[first_name]": {
                required: true,
                maxlength: 25
            },
            "user[last_name]": {
                required: true,
                maxlength: 25
            },
            "user[email]": {
                required: true,
                email: true,
                maxlength: 255
            },
            "user[password]": {
                required: true,
                password: true,
                maxlength: 64
            },
            "user[password_confirmation]": {
                required: true,
                equalTo: "#password_Input_Signup",
                maxlength: 64
            }
        },
        messages: {
            "user[first_name]": {
                required: "Pleases enter first name",
                maxlength: "Maximum 25 characters long "
            },
            "user[last_name]": {
                required: "Pleases enter first name",
                maxlength: "Maximum 25 characters long "
            },
            "user[email]": {
                required: "Pleases enter email",
                email: "Invalid email",
                maxlength: "Maximum 255 characters long "
            },
            "user[password]": {
                required: "Pleases enter password",
                password: "Invalid password",
                maxlength: "Maximum 64 characters long "
            },
            "user[password_confirmation]": {
                required: "Pleases enter password",
                equalTo: "Password incorrect",
                maxlength: "Maximum 64 characters long "
            }
        }
    });
    $("#btn").click(function(e) {
        $("new_user").submit();

    });
});