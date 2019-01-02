<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<style>
    table.table tbody th {
        width: 20%;
        text-align: right;
    }
</style>
<div class="center-block popupContent">
    <table class="table" style="width: 95%; margin-left: auto; margin-right: auto;">
        <tbody>
        <tr>
            <th><spring:message code="department.info.name"/>:</th>
            <td>${dept.name}</td>
        </tr>
        <tr>
            <th><spring:message code="department.info.tel"/>:</th>
            <td>${dept.tel}</td>
        </tr>
        <tr>
            <th><spring:message code="exam.common.remark"/>:</th>
            <td>${dept.remark}</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="button" class="btn btn-default" onclick="closeIFrame();"
                       value='<spring:message code="examSystem.close"/>'/>
            </td>
        </tr>
        </tbody>
    </table>
</div>
