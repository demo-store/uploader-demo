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
<div id="uploader-demo" >
    <div id="fileList" class="uploader-list"></div>
    <div id="filePicker">选择图片</div>
</div>
<script type="text/javascript" src="${spmRes}/jquery/1.9.1/jquery.min.js" ></script>
<script type="text/javascript" src="${spmRes}/webuploader/webuploader.min.js" ></script>
<script type="text/javascript">
    $(function(){
        var $list = $('#fileList'),
                $btn = $('#ctlBtn'),
                // 优化retina, 在retina下这个值是2
                ratio = window.devicePixelRatio || 1,
                // 缩略图大小
                thumbnailWidth = 100 * ratio,
                thumbnailHeight = 100 * ratio;
        if ( !WebUploader.Uploader.support() ) {
            alert( 'Web Uploader 不支持您的浏览器！如果你使用的是IE浏览器，请尝试升级 flash 播放器');
            throw new Error( 'WebUploader does not support the browser you are using.' );
        }
        var uploader = WebUploader.create({
            runtimeOrder:"flash",
            auto:true,
            swf:"${spmRes}/webuploader/Uploader.swf",
            server:"${base}/uploader/upfile",
            pick:'#filePicker',
            resize:false,
            accept:{
                title:"Images",
                extensions:"gif,jpg,jpeg,bmp,png",
                mimeTypes:"image/gif,image/jpg,image/jpeg,image/bmp,image/png"
            }
        });
        //显示用户输入,将上传加入队列中
        uploader.on("fileQueued",function(file){
            var $li = $("<div id='"+file.id + "' class='file-item thumbmail'>" +
                        "<img>"+
                        "<div class='info'"+file.name+"</div>"+
                        "</div>"),
                    $img = $li.find('img');
            $list.append($li);

            //缩略图
            uploader.makeThumb(file,function(error,src){
               if(error){
                   $img.replaceWith("<span>不能预览</span>");
                   return;
               }
                $img.attr("src",src);
            },thumbnailWidth,thumbnailHeight);
        });
        //显示文件上传进度
        uploader.on("uploadProgress", function (file,percentage){
            var $li = $("#"+file.id),
                    $percent = $li.find('.progress .progress-bar');
            //避免重复创建
            if(!$percent.length){
                $percent = $("<p class='progress'><span></span></p>")
                        .appendTo($li).find("span");
            }
            $percent.css("width",percentage*100 + "%");
        });
        //上传失败
        uploader.on("uploadError",function(file){
            var $li = $("#"+file.id),
                    $error = $li.find("div.error");
            if (!$error.length){
                $error = $("<div class='error'></div>").appendTo($li);
            }
            $error.text("上传是吧")
        });
        //上传成功
        uploader.on("uploadSuccess",function(file){
            $("#"+file.id).addClass("upload-state-done");
        });
        //上传完成,包括成功和失败
        uploader.on("uploadComplete",function(file){
            $("#"+file.id).find(".progress").fadeOut();
        });
    });
</script>
</body>
</html>
