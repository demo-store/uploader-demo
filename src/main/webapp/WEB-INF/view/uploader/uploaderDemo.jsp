<%--
  Created by IntelliJ IDEA.
  User: jackieliu
  Date: 16/9/16
  Time: 下午2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <title>uploader示例页面</title>
    <%@ include file="../inc/inc.jsp" %>
    <link rel="stylesheet" type="text/css" href="${spmRes}/webuploader/webuploader.css">
</head>
<body>
<div id="uploader" class="wu-example">
    <div id="thelist" class="uploader-list"></div>
    <div class="btns">
        <div id="picker">选择文件</div>
        <button id="ctlBtn" class="btn btn-default">开始上传</button>
    </div>
</div>
</body>
<script type="text/javascript" src="${spmRes}/webuploader/webuploader.min.js"/>
<script type="text/javascript">
    var uploader = WebUploader.create({
        swf:"${spmRes}/webuploader/Uploader.swf",
        server:"${base}/uploader/upfile",
        pick:'#picker',
        resize:false
    });
    //显示用户输入,将上传加入队列中
    uploader.on("fileQueued",function(file){
       $file.append("<div id='"+file.id+"' class='item'" +
       "<h4 class='info'"+file.name+"</h4>" +
       "<p class='state'>等待上传...</p>" +
       "</div>");
    });
    //显示文件上传进度
    uploader.on("uploadProgress", function (file,percentage){
        var $li = $("#"+file.id),
                $perecnt = $li.find('.progress .progress-bar');

        if(!$perenct.length){
            $percent = $("<div class='progress progress-striped active'" +
                "<div class='progress-bar' role='progressbar' style = 'width:0%'" +
                "</div>" +
            "</div>").appendTo($li).find(".progress-bar");
        }
        $.li.find("p.state").text("上传中");
        $percent.css("width",percentage*100 + "%");
    });
    //上传失败
    uploader.on("uploadError",function(file){
        $("#"+file.id).find("p.state").text("上传错误!");
    });
    //上传成功
    uploader.on("uploadSuccess",function(file){
        $("#"+file.id).find("p.state").text("已上传");
    });
    //上传完成,包括成功和失败
    uploader.on("uploadComplete",function(file){
        $("#"+file.id).find(".progress").fadeOut();
    })
</script>
</html>
