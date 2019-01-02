<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/pages/common/taglibs.jspf" %>
<script>
    /**
     * 弹出frame窗口
     *
     * @param pageTypeEnum 需要打开的是那个画面 例如：PAGE_TYPE_ENUM.EDIT
     * @param url 地址
     * @param frameSize 窗口大小 <p>窗口大小输入内容为数组 例如：['30%', '60%']; 第一个参数为宽，第二个为高；</p>
     * @param list_id_selector 列表的Id值，传入时需要带#， 例如： '#emp_list'
     */
    function openIFrame(pageTypeEnum, url, frameSize, list_id_selector) {
        var title = "";
        var is_update_list = true;

        if (pageTypeEnum === PAGE_TYPE_ENUM.EDIT) {
            title = '<spring:message code="exam.common.edit" />';
        } else if(pageTypeEnum === PAGE_TYPE_ENUM.INFO) {
            title = '<spring:message code="exam.common.info" />';
            is_update_list = false;
        } else if (pageTypeEnum === PAGE_TYPE_ENUM.CREATE) {
            title = '<spring:message code="exam.common.create" />';
        } else {
            console.log("The first parameter was set incorrectly.");
            return;
        }

        layer.open({
            type: 2,
            title: title,
            content: url,
            area: frameSize,
            end: function () {
                if (is_update_list) {
                    jQuery(list_id_selector).trigger("reloadGrid");
                }
            }
        });
    }

    /**
     * 删除当前选择数据的Ajax请求(DELETE请求)
     *
     * @param url 访问地址
     * @param list_id_selector 列表的Id值，传入时需要带#， 例如： '#emp_list'
     */
    function ajaxDelete(url, list_id_selector) {
        var title = '<spring:message code="exam.system.prompt.message" />';
        var message = '<spring:message code="validation.constrains.delete.message" />';
        var successMessage = '<spring:message code="validation.constrains.delete.success.message" />';
        var failMessage = '<spring:message code="validation.constrains.delete.fail.message" />';
        layer.confirm(message, {
            icon: 5, title: title
        }, function (index) {
            ajaxRequest(url, function (data) {
                if (data.isSuccess) {
                    layer.alert(successMessage, {
                        end: function () {
                            jQuery(list_id_selector).trigger("reloadGrid");
                        }
                    });
                } else {
                    layer.alert(failMessage);
                }
            }, "", "DELETE");
            layer.close(index);
        });
    }
</script>
