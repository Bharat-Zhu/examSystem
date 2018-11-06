<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    $(function () {
        $("#loginForm").bootstrapValidator({
            live: 'disabled',//验证时机，enabled是内容有变化就验证（默认），disabled和submitted是提交再验证
            excluded: [':disabled', ':hidden', ':not(:visible)'],//排除无需验证的控件，比如被禁用的或者被隐藏的
            fields: {
                id: {
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
                }
            }
        });

        var error = "${loginErr}";
        if (error != "") {
            showToast(error, "error");
        }

        $("#register").on("click", function () {
            layer.open({
                type: 2,
                content: '${appPath}/register',
                title: '<spring:message code="register.title" />',
                area: ['500px', '550px'],
            });
        });
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
        };
        toastr[shortCutFunction](msg);
    }
</script>
<div class="center-block" style="margin-top: 8%; border: 1px solid #d5d5d5; border-radius: 2%; width: 30%;">
    <div class="page-header" style="width: 95%;margin: 0 auto;">
        <h1>
            <spring:message code="login.title"/>
        </h1>
    </div>
    <div class="text-right" style="height: 35px;line-height: 35px; padding-right: 3%;">
        <a href="?la=zh_CN"><spring:message code="language.cn"/></a>
        <a href="?la=en_US"><spring:message code="language.en"/></a>
    </div>
    <form id="loginForm" class="form-horizontal" action="${appPath}/login" method="post" role="form">
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-user" style="font-size:18px"></i></span>
                <input type="text" class="form-control" name="id" value="${user.id}"
                       placeholder='<spring:message code="login.id" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-lock" style="font-size:20px"></i></span>
                <input type="password" class="form-control" name="password"
                       placeholder='<spring:message code="login.password" />' required>
            </div>
        </div>
        <div class="page-header" style="width: 95%;margin: 20px auto; "></div>
        <div class="form-group">
            <div class="col-sm-7 input-group text-right" style="margin: auto;">
                <a id="register" href="javascript:void(0);"><spring:message code="register.title"/></a>
                &nbsp;&nbsp;
                <button type="submit" id="submit_btn" class="btn btn-success">
                    <spring:message code="login.submit"/>
                    <i class="fa fa-angle-double-right"></i>
                </button>
            </div>
        </div>
    </form>
</div>