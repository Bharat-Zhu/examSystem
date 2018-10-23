<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/common/images/logo.ico" />
<title><spring:message code="register.title" /></title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/vendors/bootstrap/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/vendors/font-awesome/css/font-awesome.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/static/vendors/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/vendors/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/vendors/layer/layer.js"></script>
</head>
<body>
<a href="?la=zh_CN"><spring:message code="language.cn" /></a>
<a href="?la=en_US"><spring:message code="language.en" /></a>
<form class="form-horizontal" role="form" action="register" method="post">
	<div class="form-group">
		<label for="registerId" class="col-sm-4 control-label"><spring:message code="login.id" /></label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="registerId" name="id" 
				   placeholder='<spring:message code="login.id.prompt.content" />'>
		</div>
	</div>
	<div class="form-group">
		<label for="registerPassword" class="col-sm-4 control-label"><spring:message code="login.password" /></label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="registerPassword" name="password"
				   placeholder='<spring:message code="login.password.prompt.content" />'>
		</div>
	</div>
	<div class="form-group">
		<label for="registerEmail" class="col-sm-4 control-label"><spring:message code="register.email" /></label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="registerEmail" name="email"
				   placeholder='<spring:message code="register.email.prompt.content" />'>
		</div>
	</div>
	<div class="form-group">
		<label for="registerPhone" class="col-sm-4 control-label"><spring:message code="register.phone" /></label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="registerPhone" name="phone"
				   placeholder='<spring:message code="register.phone.prompt.content" />'>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-6">
			<button type="submit" class="btn btn-default"><spring:message code="register.submit" /></button>
		</div>
	</div>
</form>
<a href="loign"><spring:message code="login.submit" /></a>
</body>
</html>