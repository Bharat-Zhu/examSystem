<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" scope="page"/>
<address style="height: 40px; line-height: 40px; margin-bottom: 0px;">
	Copyright © 2018-<fmt:formatDate value="${now}" pattern="yyyy" /> 考试系统  All Rights Reserved.
</address>