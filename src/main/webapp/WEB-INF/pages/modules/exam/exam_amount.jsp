<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script>
    $(function () {
        $(".close-subject-tag").click(function() {
            var parentDiv = $(this).parent("div");
            layer.confirm("确定要清除这道大题？", {icon: 3, title:'提示'}, function(index){
                parentDiv.remove();
                layer.close(index);
                totalScore();
            });
        });
    });
    
    function totalScore() {
        var total = 0;
        $(".subject-tag-scores").each(function () {
            var aloneScore = $(this).children("input").val();
            total += parseInt(aloneScore);
        });

        $("#total").val(total);
    }
</script>
<div class="page-header" style="margin: 0 0; padding: 0 0;">
    <h3>试题统计</h3>
    <div style="text-align:right; font-size: 16px; margin-top: -10px; padding-bottom: 5px;">
        总分 <input id="total" name="total" class="form-control score" value="0" readonly> 分
    </div>
</div>
<div class="subject-tag" data-tag="select">
    <span style="font-size: 18px; font-weight: bold;">选择题</span>
    <span class="close close-subject-tag"><i class="fa fa-close"></i></span>
    <div style="text-align: right; margin-top: 10px;">
        <span class="subject-tag-questions">总共 <input name="select_question_total" class="form-control score" value="0" readonly> 题，</span>
        <span class="subject-tag-scores">合计 <input name="select_score_total" class="form-control score" value="20" onchange="totalScore()" readonly> 分</span>
    </div>
</div>
<div class="subject-tag" data-tag="select">
    <span style="font-size: 18px; font-weight: bold;">选择题1</span>
    <span class="close close-subject-tag"><i class="fa fa-close"></i></span>
    <div style="text-align: right; margin-top: 10px;">
        <span class="subject-tag-questions">总共 <input name="select_question_total" class="form-control score" value="0" readonly> 题，</span>
        <span class="subject-tag-scores">合计 <input name="select_score_total" class="form-control score" value="20" onchange="totalScore()" readonly> 分</span>
    </div>
</div>
<div class="subject-tag" data-tag="select">
    <span style="font-size: 18px; font-weight: bold;">选择题2</span>
    <span class="close close-subject-tag"><i class="fa fa-close"></i></span>
    <div style="text-align: right; margin-top: 10px;">
        <span class="subject-tag-questions">总共 <input name="select_question_total" class="form-control score" value="0" readonly> 题，</span>
        <span class="subject-tag-scores">合计 <input name="select_score_total" class="form-control score" value="20" onchange="totalScore()" readonly> 分</span>
    </div>
</div>
