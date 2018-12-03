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
                    	<c:if test="${menu.isShow == '1'}">
	                        <a href="javascript:void(0);"
	                           <c:if test="${!empty menu.url}">onclick="clickMenu(this, '${appPath}/${menu.url}')"</c:if>>
	                            <i class="fa
	                                <c:choose>
	                                    <c:when test="${empty menu.icon}">
	                                         fa-angle-right
	                                    </c:when>
	                                    <c:otherwise>
	                                        ${menu.icon}
	                                    </c:otherwise>
	                                </c:choose>
	                            fa-fw" style="font-size: 18px;"></i> 
	                            <c:choose>
	                                <c:when test="${!empty menu.messageCode}">
	                                	<spring:message code="${menu.messageCode}" />
	                                </c:when>
	                                <c:otherwise>
	                                    ${menu.name}
	                                </c:otherwise>
	                            </c:choose>
	                            <c:if test="${fn:length(menu.childrenMenu) > 0}"><span class="fa arrow"></span></c:if>
	                        </a>
                        </c:if>
                        <c:if test="${fn:length(menu.childrenMenu) > 0}">
                            <ul class="nav nav-second-level">
                                <c:forEach items="${menu.childrenMenu}" var="childMenu">
                                    <c:if test="${childMenu.parentId == menu.id && childMenu.isShow == '1'}">
                                        <li>
                                            <a href="javascript:void(0);"
                                               <c:if test="${!empty childMenu.url}">onclick="clickMenu(this, '${appPath}/${childMenu.url}')"</c:if>>
                                                <i class="fa
                                                    <c:choose>
                                                        <c:when test="${empty childMenu.icon}">
                                                            fa-angle-right
                                                        </c:when>
                                                        <c:otherwise>
                                                             ${childMenu.icon}
                                                        </c:otherwise>
                                                    </c:choose>
                                                fa-fw" style="font-size: 16px;"></i> 
                                                <c:choose>
					                                <c:when test="${!empty childMenu.messageCode}">
					                                	<spring:message code="${childMenu.messageCode}" />
					                                </c:when>
					                                <c:otherwise>
					                                    ${childMenu.name}
					                                </c:otherwise>
					                            </c:choose>
                                                <c:if test="${fn:length(childMenu.childrenMenu) > 0}"><span
                                                        class="fa arrow"></span></c:if>
                                            </a>
                                            <c:if test="${fn:length(childMenu.childrenMenu) > 0}">
                                                <ul class="nav nav-third-level">
                                                    <c:forEach items="${childMenu.childrenMenu}" var="thirdChildMenu">
                                                        <c:if test="${thirdChildMenu.parentId == childMenu.id && thirdChildMenu.isShow == '1'}">
                                                        <li>
                                                            <a href="javascript:void(0);"
                                                               <c:if test="${!empty thirdChildMenu.url}">onclick="clickMenu(this, '${appPath}/${thirdChildMenu.url}')"</c:if>>
                                                                <i class="fa
                                                                    <c:choose>
                                                                        <c:when test="${empty thirdChildMenu.icon}">
                                                                            fa-angle-right
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                             ${thirdChildMenu.icon}
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                 fa-fw" style="font-size: 18px;"></i>
                                                                 <c:choose>
									                                <c:when test="${!empty thirdChildMenu.messageCode}">
									                                	<spring:message code="${thirdChildMenu.messageCode}" />
									                                </c:when>
									                                <c:otherwise>
									                                    ${thirdChildMenu.name}
									                                </c:otherwise>
									                            </c:choose>
                                                            </a>
                                                        </li>
                                                    	</c:if>
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