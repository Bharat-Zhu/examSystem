<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<link type="text/css" rel="stylesheet" href="${staticVendorsPath}/wizard/css/wizard.min.css" />
<link type="text/css" rel="stylesheet" href="${staticCommonPath}/css/wizard.css" />
<script type="text/javascript" src="${staticVendorsPath}/wizard/js/jquery-wizard.min.js"></script>
<div class="container" style="width: 100%;">
    <section>
        <div id="examBasic" class="wizard">
            <ul class="wizard-steps" role="tablist">
                <li data-target="#form_step1" role="tab" style="z-index: 4;">
                    <span>1</span>创建试卷
                </li>
                <li data-target="#form_step2" role="tab" style="z-index: 3;">
                    <span>2</span>试题选择
                </li>
                <li data-target="#form_step3" role="tab" style="z-index: 2;">
                    <span>3</span>试卷预览
                </li>
                <li data-target="#form_step4" role="tab" style="z-index: 1;">
                    <span>4</span>生成试卷
                </li>
            </ul>
            <div class="wizard-content">
                <div id="form_step1" class="wizard-pane active" role="tabpanel">
                    <jsp:include page="create_exam_paper.jsp" />
                </div>
                <div id="form_step2" class="wizard-pane" role="tabpanel">
                    <jsp:include page="select_exam_questions.jsp" />
                </div>
                <div id="form_step3" class="wizard-pane" role="tabpanel">
                    <jsp:include page="preview_exam_paper.jsp" />
                </div>
                <div id="form_step4" class="wizard-pane" role="tabpanel">
                    <jsp:include page="generate_exam_paper.jsp" />
                </div>
            </div>
            <div class="amount-content" style="">
                <jsp:include page="exam_amount.jsp" />
            </div>
        </div>
        <script type="text/javascript">
            $(function() {
                var wizardDistanceTop = $(".wizard-content").offset().top;
                var amountDistanceTop = $(".amount-content").offset().top;
                var amountHeight = $(".amount-content").outerHeight();
                var footerDistanceTop = $("#footer").offset().top;

                amountDistanceTop = wizardDistanceTop - amountDistanceTop;
                $(".amount-content").css("margin-top", amountDistanceTop + "px");
                $(".amount-content").css('display', 'none');

                $(document).scroll(function () {
                    var scroll = $(this).scrollTop();
                    if(footerDistanceTop <= scroll + amountHeight) {
                        $(".amount-content").css("margin-top", (footerDistanceTop - amountHeight - $("#footer").outerHeight() - 15) + "px");
                        return;
                    }

                    if (scroll > amountDistanceTop) {
                        $(".amount-content").css('margin-top', scroll + 5 + 'px');
                    } else {
                        $(".amount-content").css("margin-top", amountDistanceTop + "px");
                    }
                });

                var wizard = $('#examBasic').wizard({
                    buttonLabels: {
                        next: '下一步 <i class="fa fa-hand-o-right"></i>',
                        back: '<i class="fa fa-hand-o-left"></i> 上一步',
                        finish: '完成 <i class="fa fa-check"></i>'
                    },
                    onAfterShow: function(step) {
                        if (step.index == 1 || step.index == 2) {
                            $(".amount-content").css('display', 'block');
                        } else {
                            $(".amount-content").css('display', 'none');
                        }
                    },
                    onFinish: function() {

                    }
                }).data('wizard');

                wizard.get('#form_step1').setValidator(function() {
                    var form1 = $(this).children("form");
                    // 验证表单的数据 OK：返回true; NO OK：返回false;
                    // true：继续往下走；false：停留当前步骤；
                    return true;
                });

                wizard.get('#form_step2').setValidator(function() {
                    var form2 = $(this).children("form");
                    // 验证表单的数据 OK：返回true; NO OK：返回false;
                    return true;
                });

                wizard.get('#form_step3').setValidator(function() {
                    var form3 = $(this).children("form");
                    // 验证表单的数据 OK：返回true; NO OK：返回false;
                    return true;
                });

                wizard.get('#form_step4').setValidator(function() {
                    var form4 = $(this).children("form");
                    // 验证表单的数据 OK：返回true; NO OK：返回false;
                    return true;
                });
            });
        </script>
    </section>
</div>