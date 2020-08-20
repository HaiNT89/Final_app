$(".modal_click").click(function() {
    var parent = $(this).closest(".test_js");
    var title = parent.find(".title_photo");
    $("#id_title").text(title);
    console.log(title);
});