package com.exam.system.modules.sys.controllers;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.Common.Common;
import com.exam.system.core.Common.OperateTypeEnum;
import com.exam.system.core.Common.PagePathEnum;
import com.exam.system.core.controllers.BaseController;
import com.exam.system.core.entitys.CustomPage;
import com.exam.system.core.entitys.FrontPage;
import com.exam.system.core.utils.MessageUtils;
import com.exam.system.modules.sys.entitys.Department;
import com.exam.system.modules.sys.services.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
@RequestMapping("/sys")
public class DepartmentController extends BaseController {

    @Autowired
    private DepartmentService departmentService;

    @RequestMapping("/showDepartments")
    public String actionShowDeptList() {
        return setPage("department_list.page");
    }

    @ResponseBody
    @RequestMapping(value = "/showDepts", method = RequestMethod.GET)
    public String getDeptJson(FrontPage<Department> page) {
        Wrapper<Department> wrapper = new EntityWrapper<Department>();
        wrapper.eq("del_flag", "0");
        Page<Department> pageList = departmentService.selectPage(page.getPagePlus(), wrapper);
        CustomPage<Department> customPage = new CustomPage<Department>(pageList);
        return JSON.toJSONString(customPage);
    }

    @RequestMapping(value = "/dept/{operate}/{id}", method = RequestMethod.GET)
    public String actionShowDeptById(@PathVariable("operate") String operate, @PathVariable("id") Integer id, Map<String, Object> map) {
        map.put("dept", departmentService.getDepartmentById(id));

        if (OperateTypeEnum.INFO.getName().equals(operate)) {
            return setPage("department_info.action");
        } else if (OperateTypeEnum.EDIT.getName().equals(operate)){
            return setPage("department_edit.action");
        }

        return error404Page();
    }

    @RequestMapping(value = "/dept/create", method = RequestMethod.GET)
    public ModelAndView actionCreateDept() {
        return new ModelAndView(setPage("department_edit.action"));
    }

    @ResponseBody
    @RequestMapping(value = "/dept/{id}", method = RequestMethod.PUT)
    public String actionUpdate(@PathVariable("id") Integer id, Department dept) {
        boolean isSuccess = false;
        String message = "";

        try {
            dept.setDepartmentId(id);
            isSuccess = departmentService.updateDepartment(dept);
            message = MessageUtils.getMessage("validation.constrains.update.success.message");
        } catch (Exception e) {
            message = MessageUtils.getMessage("validation.constrains.update.fail.message");
        }

        return Common.afterExecuteToJsonString(message, isSuccess);
    }

    @ResponseBody
    @RequestMapping(value = "/dept/{id}", method = RequestMethod.DELETE)
    public String actionDelete(@PathVariable("id") Integer id) {
        boolean isSuccess = departmentService.deleteDeptById(id);
        return Common.afterExecuteToJsonString(isSuccess);
    }

    @ResponseBody
    @RequestMapping(value = "/dept", method = RequestMethod.POST)
    public String actionInsert(Department dept) {
        boolean isSuccess = false;
        String message = "";

        try {
            isSuccess = departmentService.addDepartment(dept);
            message = MessageUtils.getMessage("validation.constrains.insert.success.message");
        } catch (Exception e) {
            message = MessageUtils.getMessage("validation.constrains.insert.fail.message");
        }

        return Common.afterExecuteToJsonString(message, isSuccess);
    }

    @Override
    public String setPage(String pageName) {
        return PagePathEnum.SYS.getName() + pageName;
    }
}
