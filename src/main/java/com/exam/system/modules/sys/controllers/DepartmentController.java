package com.exam.system.modules.sys.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.entitys.CustomPage;
import com.exam.system.core.entitys.FrontPage;
import com.exam.system.core.utils.MessageUtils;
import com.exam.system.modules.sys.entitys.Department;
import com.exam.system.modules.sys.services.DepartmentService;
import com.fasterxml.jackson.core.JsonProcessingException;

@Controller
@RequestMapping("/sys")
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    @RequestMapping("/showDepartments")
    public String actionShowDeptList() {
        return "modules/sys/department_list.page";
    }

    @ResponseBody
    @RequestMapping(value = "/showDepts")
    public String getDeptJson(FrontPage<Department> page) {
        Wrapper<Department> wrapper = new EntityWrapper<Department>();
        wrapper.eq("del_flag", "1");
        Page<Department> pageList = departmentService.selectPage(page.getPagePlus(), wrapper);
        CustomPage<Department> customPage = new CustomPage<Department>(pageList);
        return JSON.toJSONString(customPage);
    }

    @RequestMapping("/dept/{operate}/{id}")
    public String actionShowDeptById(@PathVariable("operate") String operate, @PathVariable("id") Integer id, Map<String, Object> map) {
        if ("info".equals(operate)) {
            map.put("deptFlg", "dept_info");
        } else if ("edit".equals(operate)){
            map.put("deptFlg", "dept_edit");
        }
        map.put("dept", departmentService.getDepartmentById(id));
        return "modules/sys/department_edit.action";
    }

    @ResponseBody
    @RequestMapping("/dept/delete/{id}")
    public String actionDeleteDeptById(@PathVariable("id") Integer id, Map<String, Object> map) throws JsonProcessingException {
        Department dept = departmentService.getDepartmentById(id);
        String message = "";
        try {
        	departmentService.deleteDepartment(dept);
        	message = MessageUtils.getMessage("validation.constrains.delete.success.message");
        } catch (Exception e) {
        	message = MessageUtils.getMessage("validation.constrains.delete.fail.message");
		}
        map.put("deptFlg", "dept_del");
        map.put("message", message);
        return JSON.toJSONString(map);
    }

    @RequestMapping("/dept/create")
    public ModelAndView actionCreateDept(Map<String, Object> map) {
        map.put("deptFlg", "dept_create");
        return new ModelAndView("modules/sys/department_edit.action");
    }

    @RequestMapping("/dept/insertOrUpdate")
    public String actionInsertOrUpdate(Department dept, Map<String, Object> map) {
        int result = 0;
        String message = "";
        if (dept.getDepartmentId() != null) {
            map.put("deptFlg", "dept_edit");
            try {
            	result = departmentService.updateDepartment(dept);
            	message = MessageUtils.getMessage("validation.constrains.update.success.message", result);
            } catch (Exception e) {
            	message = MessageUtils.getMessage("validation.constrains.update.fail.message", result);
			}
        } else {
            map.put("deptFlg", "dept_create");
            try {
            	result = departmentService.addDepartment(dept);
            	message = MessageUtils.getMessage("validation.constrains.insert.success.message", result);
            } catch (Exception e) {
            	message = MessageUtils.getMessage("validation.constrains.insert.fail.message", result);
			}
        }
        map.put("message", message);
        map.put("dept", dept);
        map.put("result", result);
        return "modules/sys/department_edit.action";
    }
}
