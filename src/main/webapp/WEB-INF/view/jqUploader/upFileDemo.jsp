<%--
  Created by IntelliJ IDEA.
  User: jackieliu
  Date: 16/9/22
  Time: 下午22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9,chrome=1"/>
    <title>uploader示例页面</title>
    <%@ include file="../inc/inc.jsp" %>
    <style>
        .bar {
            height: 18px;
            background: green;
        }
    </style>
</head>
<body>
<input id="fileupload" type="file" name="file">
<div id="progress">
    <div class="bar" style="width: 0%;"></div>
</div>
<script type="text/javascript" src="${spmRes}/jquery/1.9.1/jquery.js" ></script>
<script src="${spmRes}/jqueryFileUpload/vendor/jquery.ui.widget.js"></script>
<script type="text/javascript" src="${spmRes}/jqueryFileUpload/jquery.iframe-transport.js" ></script>
<script type="text/javascript" src="${spmRes}/jqueryFileUpload/jquery.fileupload.js" ></script>
<script type="text/javascript">
    $(function () {
        $('#fileupload').fileupload({
            dataType: 'json',
            url: '${base}/uploader/upfile',
//            formData: {script: true},//自定义添加内容
            done: function (e, data) {
                data.context.text('Upload finished.');
//                $.each(data.result.files, function (index, file) {
//                    $('<p/>').text(file.name).appendTo(document.body);
//                });
            },
            progressall: function (e, data) {
                var progress = parseInt(data.loaded / data.total * 100, 10);
                $('#progress .bar').css('width',progress + '%');
            }
        });
    });
</script>
</body>
</html>
