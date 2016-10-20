<%--
  Created by IntelliJ IDEA.
  User: jackieliu
  Date: 16/9/16
  Time: 下午2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="base" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9,chrome=1"/>
    <title>uploader示例页面</title>
</head>
<body>
<a href="${base}/webUploader/fileUpView" title="webUpload">webUpload</a>
<a href="${base}/jqUpload/upFileView" title="jQueryFileUpload">jQuery File</a>
</body>
</html>
