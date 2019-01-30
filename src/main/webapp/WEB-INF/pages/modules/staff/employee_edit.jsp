<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    $(function () {
        $("form").submit(function(event) {
            event.preventDefault();

            var url = "${appPath}/staff/emp";
            var id = $("input[name='id']").val();
            var data = $(this).serialize();

            if (id == "" || id == null) {
                ajaxInsert(url, data);
            } else {
                ajaxUpdate(url + "/" + id, data);
            }

        });

        $(".form_date").datetimepicker({
            format: "yyyy-mm-dd",
            weekStart: 0,
            todayBtn:  1,
            autoclose: 1,
            pickerPosition:"bottom-left",
            showMeridian: true,
            keyboardNavigation: false,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            minuteStep: 10,
            forceParse: 0
        });
    });
</script>
<div class="center-block popupContent">
    <form id="deptForm" class="form-horizontal" role="form" method="post">
        <input type="hidden" name="id" value="${emp.id}" disabled>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-4 control-label"><spring:message code="exam.common.name"/>:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="name" value="${emp.name}"
                       placeholder='<spring:message code="employee.info" /><spring:message code="register.name" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-4 control-label"><spring:message code="exam.common.email"/>:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="email" value="${emp.email}"
                       placeholder='<spring:message code="exam.common.email" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-4 control-label"><spring:message code="exam.common.phone"/>:</label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="phone" value="${emp.phone}"
                       placeholder='<spring:message code="exam.common.phone" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-4 control-label"><spring:message code="register.birth"/>:</label>
            <div class="col-sm-8">
                <div class="input-group date form_date">
                    <input type="text" class="form-control" value='<fmt:formatDate value="${emp.birth}" pattern="yyyy-MM-dd" />' name="birth" readonly placeholder='<spring:message code="register.birth"/>'>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-4 control-label"><spring:message code="department.info"/>:</label>
            <div class="col-sm-8">
                <select class="form-control" name="department.departmentId">
                    <c:forEach items="${depts}" var="dept">
                        <c:choose>
                            <c:when test="${emp.department.departmentId != dept.departmentId}">
                                <option value="${dept.departmentId}">${dept.name}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${dept.departmentId}" selected>${dept.name}</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-7 input-group text-right" style="margin: auto;">
                <input type="button" class="btn btn-default" onclick="closeIFrame();"
                       value='<spring:message code="examSystem.close"/>'/>
                &nbsp;&nbsp;
                <input type="submit" class="btn btn-primary" value='<spring:message code="exam.common.submit"/>' />
            </div>
        </div>
    </form>
</div>
