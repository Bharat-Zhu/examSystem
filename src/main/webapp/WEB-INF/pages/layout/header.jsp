<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="navbar-header" style="border-right: 1px solid #e6e6e6;">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                class="icon-bar"></span><span class="icon-bar"></span>
        </button>
        <span class="navbar-brand"><b><spring:message code="examSystem.title"/></b></span>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown"
                   style="padding-top: 10px;padding-bottom: 10px; margin-right: 10px; cursor: pointer;">
                    <img src="${pageContext.request.contextPath}/static/common/images/default_user.jpg"
                         style="width: 30px;height:30px;" class="img-circle"> <b><shiro:principal property="name" /></b> <strong class="caret"></strong>
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="${appPath }/logout">
                            <i class="fa fa-key" style="font-size: 16px;"></i>
                            <spring:message code="exam.system.update.password"/>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="${appPath }/logout">
                            <i class="fa fa-sign-out" style="font-size: 16px;"></i>
                            <span style="line-height: 10px;"><spring:message code="exam.system.user.exit"/></span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>

</nav>