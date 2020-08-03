$(document).ready(function() {
    $.validator.addMethod("password", function(value, element) {
        return /^[A-Za-z0-9\d=!-@._*]+$/.test(value);
    }), "Password invalid";
});



$(document).ready(function() {
    $("#form_signup").validate({
        rules: {
            text_Input_First_Signup: {
                required: true,
                maxlength: 25
            },
            text_Input_Last_Signup: {
                required: true,
                maxlength: 25
            },
            email_Input_Signup: {
                required: true,
                email: true,
                maxlength: 255
            },
            password_Input_Signup: {
                required: true,
                password: true,
                maxlength: 64
            },
            password_Input_Confirm_Singup: {
                required: true,
                equalTo: "#password_Input_Signup",
                maxlength: 64
            }
        },
        messages: {
            text_Input_First_Signup: {
                required: "Pleases enter first name",
                maxlength: "Maximum 25 characters long "
            },
            text_Input_Last_Signup: {
                required: "Pleases enter first name",
                maxlength: "Maximum 25 characters long "
            },
            email_Input_Signup: {
                required: "Pleases enter email",
                email: "Invalid email",
                maxlength: "Maximum 255 characters long "
            },
            password_Input_Signup: {
                required: "Pleases enter password",
                password: "Invalid password",
                maxlength: "Maximum 64 characters long "
            },
            password_Input_Confirm_Singup: {
                required: "Pleases enter password",
                equalTo: "Password incorrect",
                maxlength: "Maximum 64 characters long "
            }
        }
    });
    $("button").click(function(e) {
        $("form_signup").submit();

    });
});