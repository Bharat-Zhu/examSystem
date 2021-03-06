<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<style>
	table{
		border-collapse: collapse;
		border: #dddddd;
		width: 96%;
		margin: 0 auto;
	}
	table th{
		text-align: right;
		background-color: #f5f5f5;
	}
	
	table td {
		padding: 10px 10px;
		width: 38%;
	}
</style>
<script>
	$(function() {
		$("#clearParentName").click(function() {
			$("#parentId").val("");
			$("#parentName").val("");
		});
		
		$("#searchParentName").click(function () {
		    layer.open({
                type: 2,
                title: "Menu Tree",
                content: "${appPath}/sys/menu/searchMenus",
                area: ['30%', '100%'],
            });
        });

		var isSuccess = "${isSuccess}";
		if (isSuccess != "") {
            if (isSuccess == "true") {
                layer.msg('操作成功', {icon: 1, time: 1200});
                closeIFrame();
            } else {
                layer.msg('操作失败', {icon: 2});
            }
        }
	});
</script>
<div class="center-block popupContent">
	<form id="deptForm" class="form-horizontal" role="form" action="${appPath}/sys/menu/insertOrUpdate" method="post">
		<c:if test="${!empty menu.id }">
			<input type="hidden" name="id" value="${menu.id }" />
		</c:if>
		<table>
			<tr>
				<th>上级菜单：</th>
				<td>
					<input type="hidden" id="parentId" name="parentId" value="${menu.parentId }" />
					<div class="input-group">
	                    <input type="text" id="parentName" value="${menu.parentName }" class="form-control" disabled>
	                    <span class="input-group-btn">
	                        <button id="clearParentName" class="btn btn-default" type="button">
	                        	<i class="fa fa-remove" style="font-size:18px;"></i>
	                        </button>
	                    	<button id="searchParentName" class="btn btn-info" type="button">
	                    		<i class="fa fa-search" style="font-size:18px; color: white;"></i>
	                    	</button>
	                    </span>
	                </div>
                    <i class="fa fa-info-circle"></i><span style="font-size:10px;">&nbsp;没有内容时，默认为上级菜单</span>
				</td>
				<th>菜单名称：</th>
				<td>
					<input type="text" class="form-control" name="name" value="${menu.name }" placeholder='菜单名称' >
				</td>
			</tr>
			<tr>
				<th>链接：</th>
				<td>
					<input type="text" class="form-control" name="url" value="${menu.url }" placeholder='URL' >
					<i class="fa fa-info-circle"></i><span style="font-size:10px;">&nbsp;点击菜单时跳转页面的URL</span>
				</td>
				<th>权限标识：</th>
				<td>
					<input type="text" class="form-control" name="permission" value="" placeholder='权限标识' >
				</td>
			</tr>
			<tr>
				<th>图标：</th>
				<td>
					<input type="text" class="form-control" name="icon" value="${menu.icon }" placeholder='icon' >
				</td>
				<th>属性：</th>
				<td>
					<input type="text" class="form-control" name="type" value="${menu.type }" placeholder='属性' >
				</td>
			</tr>
			<tr>
				<th>是否显示：</th>
				<td colspan="3">
					<div class="radio radio-info radio-inline">
						<input id="isShow1" type="radio" checked name="isShow" value="1" />
                        <label for="isShow1">是</label>
                    </div>
                    <div class="radio radio-info radio-inline">
						<input id="isShow2" type="radio" name="isShow" value="0" />
                        <label for="isShow2">否</label>
                    </div>
				</td>
			</tr>
			<tr>
				<th>国际化Code：</th>
				<td colspan="3">
					<input type="text" class="form-control" name="messageCode" value="${menu.messageCode }" placeholder='国际化Code' >
				</td>
			</tr>
			<tr>
				<th>备注：</th>
				<td colspan="3">
					<textarea class="form-control" rows="3" name="remark">${menu.remark }</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right">
	        		<input type="button" class="btn btn-default" onclick="closeIFrame();" 
	        			value='<spring:message code="examSystem.close"/>'/>
		        	&nbsp;&nbsp;
		           <input type="submit" class="btn btn-info" value='<spring:message code="exam.common.submit"/>' />
				</td>
			</tr>
		</table>
    </form>
</div>