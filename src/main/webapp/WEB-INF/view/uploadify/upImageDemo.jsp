<%--
  Created by IntelliJ IDEA.
  User: jackieliu
  Date: 16/10/20
  Time: 下午4:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>uploadify</title>
    <%@ include file="../inc/inc.jsp" %>
    <link rel="stylesheet" type="text/css" href="${spmRes}/uploadify/uploadify.css">
    <style type="text/css">
        body {
            font: 13px Arial, Helvetica, Sans-serif;
        }
    </style>
</head>
<body>
<h1>Uploadify Demo</h1>
<form>
    <div id="queue"></div>
    <input id="file_upload" name="file" type="file" multiple="true">
    <a href="javascript:void(0);" onclick="showUp()">Upload Files</a>
</form>

</body>
<script type="text/javascript" src="${spmRes}/jquery/1.9.1/jquery.min.js" ></script>
<script type="text/javascript" src="${spmRes}/uploadify/jquery.uploadify.min.js" ></script>
<script type="text/javascript">
    $(function() {
        $('#file_upload').uploadify({
            'fileSizeLimit' : '5ß00KB',
            'fileObjName':'file',
            'formData'     : {
                'timestamp' : '<%= System.currentTimeMillis()%>',
                'token'     : '<%= "unique_salt"+System.currentTimeMillis()%>'
            },
            'swf'      : '${spmRes}/uploadify/uploadify.swf',
            'uploader' : '${base}/uploader/upfile'
        });
    });
    function showUp(){
        alert("one");
        return $('#file_upload').click();
    }
    </script>
</html>
