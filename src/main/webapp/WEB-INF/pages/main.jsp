<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="cache-control" content="no-cache">
    <link rel="icon" type="image/x-icon" href="${staticCommonPath}/images/logo.ico"/>
    <title><spring:message code="examSystem.title"/></title>
    <tiles:insertAttribute name="script"/>
</head>
<body>
<div>
    <tiles:insertAttribute name="body"/>
</div>
</body>
</html>