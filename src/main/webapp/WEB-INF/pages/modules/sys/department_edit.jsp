<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script type="text/javascript">
    $(function () {
        $("form").submit(function(event) {
            event.preventDefault();

            var url = "${appPath}/sys/dept";
            var id = $("input[name='departmentId']").val();
            var data = $(this).serialize();

            if (id == "" || id == null) {
                ajaxInsert(url, data);
            } else {
                ajaxUpdate(url + "/" + id, data);
            }

        });
    });
</script>
<div class="center-block popupContent">
    <form id="deptForm" class="form-horizontal" role="form" method="post">
        <input type="hidden" name="departmentId" value="${dept.departmentId}" disabled>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-2 control-label"><spring:message code="department.info.name"/>:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="name" value="${dept.name}"
                       placeholder='<spring:message code="department.info.name" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-2 control-label"><spring:message code="department.info.tel"/>:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="tel" value="${dept.tel}"
                       placeholder='<spring:message code="department.info.tel" />' required>
            </div>
        </div>
        <div class="form-group" style="width: 62%; margin-left: auto; margin-right: auto; margin-bottom: 15px;">
            <label class="col-sm-2 control-label"><spring:message code="exam.common.remark"/>:</label>
            <div class="col-sm-10">
                <textarea class="form-control" rows="5" name="remark"
                          placeholder='<spring:message code="exam.common.remark" />'>${dept.remark}</textarea>
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
