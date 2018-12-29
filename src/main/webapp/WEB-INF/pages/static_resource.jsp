<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/bootstrap/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/font-awesome/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/toastr/toastr.min.css" />
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/jquery-ui-1.10.4.custom/css/ui-lightness/jquery-ui-1.10.4.custom.min.css" />
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/jqgrid/css/ui.jqgrid-bootstrap.css" />
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/zTree/css/zTreeStyle/zTreeStyle.css" />
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/metisMenu/css/metisMenu.css" />
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/bootstrap-cr/css/checkboxs_radios.css" />
<link type="text/css" rel="stylesheet" href="${staticCommonPath}/css/style.css" />
<script type="text/javascript" src="${staticVendorsPath}/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/jquery/jquery.serializejson.min.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/layer/layer.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/toastr/toastr.min.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/jqgrid/js/jquery.jqGrid.min.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/jqgrid/js/i18n/grid.locale-cn.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/zTree/js/jquery.ztree.core.min.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/bootstrapvalidator/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/jquery.cookie/jquery.cookie.js"></script>
<script type="text/javascript" src="${staticVendorsPath}/metisMenu/js/metisMenu.min.js"></script>
<script type="text/javascript">
    var requestFailedNotFoundMessage = '<spring:message code="request.failed.not.found.message" />';
    var requestFailedErrorMessage = '<spring:message code="request.failed.error.message" />';
    var requestFailedConnectTimeoutMessage = '<spring:message code="request.failed.connect.timeout.message" />';
</script>
<script type="text/javascript" src="${staticCommonPath}/js/common.js"></script>
<%@include file="js.jsp" %>