<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/static/common/images/logo.ico"/>
    <title><spring:message code="register.title"/></title>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/static/vendors/bootstrap/css/bootstrap.css"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/static/vendors/bootstrapvalidator/css/bootstrapValidator.min.css"/>
    <link type="text/css" rel="stylesheet"
          href="${pageContext.request.contextPath }/static/vendors/font-awesome/css/font-awesome.min.css"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/static/vendors/jquery/jquery.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/static/vendors/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/static/vendors/layer/layer.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/static/vendors/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#registerForm").bootstrapValidator({
                live: 'disabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
                excluded: [':disabled', ':hidden', ':not(:visible)'],//排除无需验证的控件，比如被禁用的或者被隐藏的
                submitButtons: '#submit_btn',//指定提交按钮，如果验证失败则变成disabled，但我没试成功，反而加了这句话非submit按钮也会提交到action指定页面
                fields: {
                    id: {
                        validators: {
                            notEmpty: {
                                message: '<spring:message code="validation.constrains.notNull.message" />'
                            },
                        },
                    },
                    name: {
                        validators: {
                            notEmpty: {
                                message: '<spring:message code="validation.constrains.notNull.message" />'
                            },
                        },
                    },
                    password: {
                        validators: {
                            notEmpty: {
                                message: '<spring:message code="validation.constrains.notNull.message" />'
                            },
                        },
                    },
                    email: {
                        validators: {
                            notEmpty: {
                                message: '<spring:message code="validation.constrains.notNull.message" />'
                            },
                            emailAddress: {//验证email地址
                                message: '<spring:message code="validation.constrains.register.email.error.message" />'
                            },
                        },
                    },
                    phone: {
                        validators: {
                            notEmpty: {
                                message: '<spring:message code="validation.constrains.notNull.message" />'
                            },
                        },
                    },
                }
            });

            $("#submit_btn").on('click', function () {
                $("#registerForm").bootstrapValidator('validate');
            });

            $("#close_btn").on('click', function () {
                var index = parent.layer.getFrameIndex(window.name); //先得到当前iframe层的索引
                parent.layer.close(index);
            });
        });
    </script>
</head>
<body>
<div class="center-block"
     style="margin-top: 8%; border: 1px solid #d5d5d5; border-radius: 2%; width: 85%; padding-top: 20px;">
    <form id="registerForm" class="form-horizontal" role="form" action="register" method="post">
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user" style="font-size:18px"></i></span>
                <input type="text" class="form-control" name="id" value="${user.id}"
                       placeholder='<spring:message code="login.id" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <div class="input-group">
                <span class="input-group-addon" style="font-size: 18px;"><b>N</b></span>
                <input type="text" class="form-control" name="name"
                       placeholder='<spring:message code="register.name" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock" style="font-size:20px"></i></span>
                <input type="password" class="form-control" name="password"
                       placeholder='<spring:message code="login.password" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-envelope" style="font-size:14px"></i></span>
                <input type="email" class="form-control" name="email"
                       placeholder='<spring:message code="register.email" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-phone" style="font-size:18px"></i></span>
                <input type="tel" class="form-control" name="phone"
                       placeholder='<spring:message code="register.phone" />' required>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-7 input-group text-right" style="margin: auto;">
                <input id="close_btn" class="btn btn-default" style="width: 70px;" value='<spring:message code="examSystem.close"/>' />
                &nbsp;&nbsp;
                <button type="submit" id="submit_btn" class="btn btn-success">
                    <spring:message code="register.submit"/>
                    <i class="fa fa-angle-double-right"></i>
                </button>
            </div>
        </div>
    </form>
</div>
</body>
</html>