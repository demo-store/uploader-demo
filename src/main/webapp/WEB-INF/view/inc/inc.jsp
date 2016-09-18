<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="base" value="${pageContext.request.contextPath}"/>
<c:set var="localRes" value="${base}/resources/local"/>
<c:set var="spmRes" value="${base}/resources/spm_modules"/>
<c:set var="accountBalanceLink" value="${base}/account/balance/index"/>
<c:set var="accountRechargeOneLink" value="${base}/account/recharge/one"/>
<%
    response.setHeader("Cache-Control", "no-cache");
    response.setDateHeader("Expires", 0);
    response.setHeader("Pragma", "No-cache");
%>
<c:set var="uedroot" value="${pageContext.request.contextPath}/resources/template/default"/>
<script>
    var _base = "${base}";
    var _spm_res = "${spmRes}";
</script>

<!-- <link rel="stylesheet" type="text/css" href="${base}/resources/slpmall/styles/bootstrap.css"> -->

<script src="${base}/resources/spm_modules/seajs/2.3.0/dist/sea.js"></script>
<script src="${base}/resources/spm_modules/seajs/seajs-css.js"></script>
<script src="${base}/resources/spm_modules/app/seajs/config.js"></script>