<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script>
    function examPaperChangeType(value) {
        if (value != 1) {
            $("#new_exam_paper").css('display', 'block');
            $("#prior_exam_paper").css('display', 'none');
        } else {
            $("#new_exam_paper").css('display', 'none');
            $("#prior_exam_paper").css('display', 'block');
        }
    }
</script>
<div style="text-align: center; height: 240px; padding-top: 10px;">
    <form id="form1" name="form1" class="form-horizontal" role="form">
        <div class="radio radio-info radio-inline">
            <input id="exam_paper_type1" type="radio" checked name="select_exam_paper_type" value="0" onchange="examPaperChangeType(this.value);" />
            <label for="exam_paper_type1">创建新试卷</label>
        </div>&nbsp;&nbsp;
        <div class="radio radio-info radio-inline">
            <input id="exam_paper_type2" type="radio" name="select_exam_paper_type" value="1" onchange="examPaperChangeType(this.value);" />
            <label for="exam_paper_type2">选择已有试卷</label>
        </div>
        <div id="new_exam_paper" style="width: 50%; margin: 20px auto;">
            <div class="form-group">
                <label class="col-sm-4 control-label">试卷名称：</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" placeholder="试卷名称">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">试卷科目：</label>
                <div class="col-sm-8">
                    <input type="text" class="form-control" placeholder="试卷科目">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-4 control-label">组卷方式：</label>
                <div class="col-sm-8" style="text-align: left;">
                    <div class="radio radio-info radio-inline">
                        <input id="group_paper_mode1" type="radio" checked name="group_paper_mode" value="0" />
                        <label for="group_paper_mode1">自主选题</label>
                    </div>&nbsp;&nbsp;
                    <div class="radio radio-info radio-inline">
                        <input id="group_paper_mode2" type="radio" name="group_paper_mode" value="1" />
                        <label for="group_paper_mode2">随机抽取</label>
                    </div>
                </div>
            </div>
        </div>
        <div id="prior_exam_paper" style="width: 50%; margin: 35px auto; display: none;">
            <input type="button" class="btn btn-default" value="选择试卷"/>
        </div>
    </form>
</div>