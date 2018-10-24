<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="cache-control" content="no-cache">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/common/images/logo.ico"/>
    <title><spring:message code="login.title"/></title>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/static/vendors/bootstrap/css/bootstrap.css"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/static/vendors/font-awesome/css/font-awesome.min.css"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/static/vendors/toastr/toastr.min.css"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/static/vendors/jquery/jquery.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/static/vendors/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/vendors/layer/layer.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/static/vendors/toastr/toastr.min.js"></script>
    <script type="text/javascript">
        $(function () {
            var error = "${loginErr}";
            if (error != "") {
                showToast(error, "error");
            }
        });

        function showToast(msg, shortCutFunction) {
            toastr.options = {
                "closeButton": true,
                "debug": false,
                "progressBar": true,
                "positionClass": "toast-top-center",
                "onclick": null,
                "showDuration": "400",
                "hideDuration": "1000",
                "timeOut": "5000",
                "extendedTimeOut": "1000",
                "showEasing": "swing",
                "hideEasing": "linear",
                "showMethod": "fadeIn",
                "hideMethod": "fadeOut"
            }
            toastr[shortCutFunction](msg);
        }
    </script>
</head>
<body>
<div class="center-block" style="margin-top: 8%; border: 1px solid #d5d5d5; border-radius: 2%; width: 30%;">
    <div class="page-header" style="width: 95%;margin: 0 auto;">
        <h1>
            <spring:message code="examSystem.title"/>
        </h1>
    </div>
    <div class="text-right" style="height: 35px;line-height: 35px; padding-right: 3%;">
        <a href="?la=zh_CN"><spring:message code="language.cn"/></a>
        <a href="?la=en_US"><spring:message code="language.en"/></a>
    </div>
    <form id="loginForm" class="form-horizontal" action="login" method="post" role="form">
        <div class="form-group">
            <div class="col-sm-7 input-group" style="margin: auto;">
                <span class="input-group-addon"><i class="fa fa-user" style="font-size:20px"></i></span>
                <input type="text" class="form-control" name="id" value="${user.id}"
                       placeholder='<spring:message code="login.id" />' required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-7 input-group" style="margin: auto;">
                <label for="loginPassword" class="input-group-addon"><i class="fa fa-lock" style="font-size:20px"></i></label>
                <input id="loginPassword" type="password" class="form-control" name="password"
                       placeholder='<spring:message code="login.password" />' required>
            </div>
        </div>
        <div class="page-header" style="width: 95%;margin: 20px auto; "></div>
        <div class="form-group">
            <div class="col-sm-7 input-group text-right" style="margin: auto;">
                <a href="register"><spring:message code="register.title"/></a>
                &nbsp;&nbsp;
                <button class="btn btn-success">
                    <spring:message code="login.submit"/>
                    <i class="fa fa-angle-double-right"></i>
                </button>
            </div>
        </div>
    </form>
</div>
</body>
</html>