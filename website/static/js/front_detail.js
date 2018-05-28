$(function () {
    $("#comment-btn").click(function (event) {
        event.preventDefault();
        var loginTag = $("#login-tag").html();
        if(!loginTag){
            window.location = '/singin/';
        }
        else{

        }
    })
})