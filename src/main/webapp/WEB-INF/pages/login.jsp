<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/vendors/bootstrap/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }/static/vendors/font-awesome/css/font-awesome.min.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/static/vendors/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/vendors/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/vendors/layer/layer.js"></script>
</head>
<body>
<a href="login?locale=zh_CH"><fmt:message key="language.cn"></fmt:message></a>
<a href="login?locale=en_US"><fmt:message key="language.en"></fmt:message></a>
<form class="form-horizontal" role="form" action="exam" method="post">
	<div class="form-group">
		<label for="firstname" class="col-sm-2 control-label"><fmt:message key="login.id"></fmt:message></label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="loginId" 
				   placeholder="请输入账号">
		</div>
	</div>
	<div class="form-group">
		<label for="lastname" class="col-sm-2 control-label">password</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="loginPassword" 
				   placeholder="请输入密码">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<div class="checkbox">
				<label>
					<input type="checkbox"> 请记住我
				</label>
			</div>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<button type="submit" class="btn btn-default">登录</button>
		</div>
	</div>
</form>
</body>
</html>