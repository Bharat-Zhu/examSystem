package com.exam.system.modules.sys.controllers;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.exam.system.core.entitys.FrontPage;
import com.exam.system.core.utils.MessageUtils;
import com.exam.system.modules.sys.entitys.Department;
import com.exam.system.modules.sys.services.DepartmentService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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
    @RequestMapping("/showDepts")
    public List<Department> getDeptJson(FrontPage<Department> page) {
        List<Department> pageList = departmentService.getDepartmentByAll(page.getPagePlus());
//        CustomPage<Department> CustomPage = new CustomPage<Department>(pageList);
        return pageList;
    }

    @RequestMapping("/dept/info/{id}")
    public String actionShowDeptById(@PathVariable("id") Integer id, Map<String, Object> map) {
        map.put("deptFlg", "dept_info");
        map.put("dept", departmentService.getDepartmentById(id));
        return "modules/sys/department_edit.action";
    }

    @RequestMapping("/dept/edit/{id}")
    public String actionEditDeptById(@PathVariable("id") Integer id, Map<String, Object> map) {
        map.put("deptFlg", "dept_edit");
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
        ObjectMapper objectMapper = new ObjectMapper();
        String resultString = objectMapper.writeValueAsString(map);
        return resultString;
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
