$("#form_update").validate({
    //error place
    errorPlacement: function(error, element) {
        error.insertBefore(element);
    },
    //adding rule
    rules: {
        // username is required with max of 20 and min of 6
        title_album: {
            required: true,
            maxlength: 20,
            minlength: 10
        }
    },
    messages: {
        title_album: {
            required: "Username is required.",
            maxlength: "Username must be less than 20",
            minlength: "Username must be more than 6"
        }
    }
});






// $("#form_update").validate({
//     rules: {
//         title_album: {
//             required: true,
//             maxlength: 25
//         }
//     },
//     messages: {
//         title_album: {
//             required: "Pleases enter first name",
//             maxlength: "Maximum 25 characters long "
//         }
//     }
// });
// $("button").click(function(e) {
//     $("form_update").submit();

// });