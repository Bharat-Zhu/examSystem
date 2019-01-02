package com.exam.system.core.controllers;

public abstract class BaseController {

    /**
     * 设置需要显示的画面
     *
     * @param pageName
     *          画面名称
     *          <p>
     *          例如***.action OR ***.page,
     *          .page是框架的右边内容画面，
     *          .action显示整个画面（不带页面框架）
     *          </p>
     * @return 对应路径下的jsp页面
     */
    public abstract String setPage(String pageName);

    public String error404Page() {
        return "error/404.page";
    }

    public String error403Page() {
        return "error/403.page";
    }

    public String error400Page() {
        return "error/400.page";
    }

    public String error500Page() {
        return "error/500.page";
    }

    public String errorPage() {
        return "error/error.page";
    }
}
