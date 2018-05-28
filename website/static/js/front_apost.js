

$(function () {
   $("#submit").click(function (event) {
       event.preventDefault();

       var titleInput = $('input[name=title]');
        var captchaInput = $('input[name=graph_captcha]');

       var title = titleInput.val();
       var board_id = $('.board-select').val();
       var content = window.editor.$txt.html();
       var graph_captcha = captchaInput.val();

       xtajax.post({
           'url': '/add_tie/',
           'data':{
               'title': title,
               'board_id': board_id,
               'content': content,
               'graph_captcha': graph_captcha
           },
           'success': function (data) {
               if(data['code'] == 200){
                   xtalert.alertConfirm({
                       'msg': '恭喜！帖子发表成功！',
                       'cancelText': '回到首页',
                       'confirmText': '再发一篇',
                       'cancelCallback': function () {
                           window.location = '/';
                       },
                       'confirmCallback': function () {
                           titleInput.val('');
                           window.editor.clear();
                           captchaInput.val('');
                           $('#graph-captcha-btn').click();
                       }
                   });
               }else{
                   xtalert.alertInfoToast(data['message']);
                   $('#graph-captcha-btn').click();
               }
           }
       })
   });
});