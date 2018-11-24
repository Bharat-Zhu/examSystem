<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<link rel="stylesheet" type="text/css" href="${staticCommonPath}/css/menu.css"/>
<script type="text/javascript" src="${staticCommonPath}/js/menu.js"></script>
<nav class="navbar navbar-default navbar-static-top">
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <c:forEach items="${menuList}" var="menu">
                    <li>
                        <a href="javascript:void(0);"
                           <c:if test="${!empty menu.url}">onclick="clickMenu(this, '${appPath}/${menu.url}')"</c:if>>
                            <i class="fa
                                <c:choose>
                                    <c:when test="${empty menu.menuIcon}">
                                         fa-angle-right
                                    </c:when>
                                    <c:otherwise>
                                        ${menu.menuIcon}
                                    </c:otherwise>
                                </c:choose>
                            fa-fw" style="font-size: 18px;"></i> ${menu.name}
                            <c:if test="${fn:length(menu.childrenMenu) > 0}"><span class="fa arrow"></span></c:if>
                        </a>
                        <c:if test="${fn:length(menu.childrenMenu) > 0}">
                            <ul class="nav nav-second-level">
                                <c:forEach items="${menu.childrenMenu}" var="childMenu">
                                    <c:if test="${childMenu.parentId == menu.id}">
                                        <li>
                                            <a href="javascript:void(0);"
                                               <c:if test="${!empty childMenu.url}">onclick="clickMenu(this, '${appPath}/${childMenu.url}')"</c:if>>
                                                <i class="fa
                                                    <c:choose>
                                                        <c:when test="${empty childMenu.menuIcon}">
                                                            fa-angle-right
                                                        </c:when>
                                                        <c:otherwise>
                                                             ${childMenu.menuIcon}
                                                        </c:otherwise>
                                                    </c:choose>
                                                fa-fw" style="font-size: 16px;"></i> ${childMenu.name}
                                                <c:if test="${fn:length(childMenu.childrenMenu) > 0}"><span
                                                        class="fa arrow"></span></c:if>
                                            </a>
                                            <c:if test="${fn:length(childMenu.childrenMenu) > 0}">
                                                <ul class="nav nav-third-level">
                                                    <c:forEach items="${childMenu.childrenMenu}" var="thirdChildMenu">
                                                        <li>
                                                            <a href="javascript:void(0);"
                                                               <c:if test="${!empty thirdChildMenu.url}">onclick="clickMenu(this, '${appPath}/${thirdChildMenu.url}')"</c:if>>
                                                                <i class="fa
                                                                    <c:choose>
                                                                        <c:when test="${empty thirdChildMenu.menuIcon}">
                                                                            fa-angle-right
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                             ${thirdChildMenu.menuIcon}
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                 fa-fw" style="font-size: 18px;"></i> ${thirdChildMenu.name}
                                                            </a>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </c:if>
                                        </li>
                                    </c:if>
                                </c:forEach>
                            </ul>
                        </c:if>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>
</nav>