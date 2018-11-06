<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    $(function () {
        var result = "${result}";

        if (result != "") {
            var message = "${result}";
            layer.alert(message, {
                title: false,
                closeBtn: 0,
            }, function (index) {
                if (result == "1") {
                    closeIFrame();
                } else {
                    layer.close(index);
                }
            });
        }

        $("#close_btn").on('click', function () {
            closeIFrame();
        });
    });
</script>
<div class="center-block"
     style="margin-top: 8%; border: 1px solid #d5d5d5; border-radius: 2%; width: 85%; padding-top: 20px;">
    <form id="deptForm" class="form-horizontal" role="form" action="${appPath}/sys/dept/insertOrUpdate" method="post">
        <input type="hidden" name="departmentId" value="${dept.departmentId}">
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-2 control-label"><spring:message code="department.info.name"/>:</label>
            <div class="col-sm-10">
                <c:if test="${deptFlg == 'dept_info'}">
                    ${dept.name}
                </c:if>
                <c:if test="${deptFlg == 'dept_edit' || deptFlg == 'dept_create'}">
                    <input type="text" class="form-control" name="name" value="${dept.name}"
                           placeholder='<spring:message code="department.info.name" />' required>
                </c:if>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-2 control-label"><spring:message code="department.info.tel"/>:</label>
            <div class="col-sm-10">
                <c:if test="${deptFlg == 'dept_info'}">
                    ${dept.tel}
                </c:if>
                <c:if test="${deptFlg == 'dept_edit' || deptFlg == 'dept_create'}">
                    <input type="text" class="form-control" name="tel" value="${dept.tel}"
                           placeholder='<spring:message code="department.info.tel" />' required>
                </c:if>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-2 control-label"><spring:message code="exam.common.remark"/>:</label>
            <div class="col-sm-10">
                <c:if test="${deptFlg == 'dept_info'}">
                    ${dept.remark}
                </c:if>
                <c:if test="${deptFlg == 'dept_edit' || deptFlg == 'dept_create'}">
                    <textarea class="form-control" rows="5" name="remark"
                              placeholder='<spring:message code="exam.common.remark" />'>${dept.remark}</textarea>
                </c:if>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-7 input-group text-right" style="margin: auto;">
                <input type="button" id="close_btn" class="btn btn-default"
                       value='<spring:message code="examSystem.close"/>'/>
                &nbsp;&nbsp;
                <c:if test="${deptFlg != 'dept_info'}">
                    <input type="submit" class="btn btn-success" value='<spring:message code="exam.common.submit"/>' />
                </c:if>
            </div>
        </div>
    </form>
</div>
