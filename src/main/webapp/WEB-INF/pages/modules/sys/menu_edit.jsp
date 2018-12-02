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
		$("#clearParentMenu").click(function() {
			$("#parentMenu").val("")
		});
	});
</script>
<div class="center-block popupContent">
	<form id="deptForm" class="form-horizontal" role="form" action="" method="post">
		<table>
			<tr>
				<th>上级菜单：</th>
				<td>
					<input type="hidden" name="parent_id" />
					<div class="input-group">
	                    <input type="text" id="parentMenu" value="无" class="form-control" disabled>
	                    <span class="input-group-btn">
	                    	<button id="searchParentMenu" class="btn btn-default" type="button" style="border: 1px solid #5bc0de; background-color: #5bc0de;">
	                    		<i class="fa fa-search" style="font-size:18px; color: white;"></i>
	                    	</button>
	                        <button id="clearParentMenu" class="btn btn-default" type="button">
	                        	<i class="fa fa-remove" style="font-size:18px;"></i>
	                        </button>
	                    </span>
	                </div>
				</td>
				<th>菜单名称：</th>
				<td>
					<input type="text" class="form-control" name="name" value="" placeholder='菜单名称' >
				</td>
			</tr>
			<tr>
				<th>链接：</th>
				<td>
					<input type="text" class="form-control" name="url" value="" placeholder='URL' >
					<i class="fa fa-info-circle"></i><span style="font-size:10px;">点击菜单时跳转页面的URL</span>
				</td>
				<th>权限标识：</th>
				<td>
					<input type="text" class="form-control" name="permission" value="" placeholder='权限标识' >
				</td>
			</tr>
			<tr>
				<th>图标：</th>
				<td>
					<input type="text" class="form-control" name="icon" value="" placeholder='icon' >
				</td>
				<th>排序：</th>
				<td>
					<input type="text" class="form-control" name="rank" value="" placeholder='排序' >
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
						<input id="isShow2" type="radio" name="isShow" value="1" />
                        <label for="isShow2">否</label>
                    </div>
				</td>
			</tr>
			<tr>
				<th>国际化Code：</th>
				<td colspan="3">
					<input type="text" class="form-control" name="messageCode" value="" placeholder='国际化Code' >
				</td>
			</tr>
			<tr>
				<th>备注：</th>
				<td colspan="3">
					<textarea class="form-control" rows="3" name="remark"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="4" align="right">
	        		<input type="button" class="btn btn-default" onclick="closeIFrame();" 
	        			value='<spring:message code="examSystem.close"/>'/>
		        	&nbsp;&nbsp;
		           <input type="submit" class="btn btn-primary" value='<spring:message code="exam.common.submit"/>' />
				</td>
			</tr>
		</table>
    </form>
</div>