package com.exam.system.modules.sys.controllers;

import com.exam.system.modules.sys.entitys.Department;
import com.exam.system.modules.sys.services.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

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
    public List<Department> getDeptJson(Department dept) {
        return departmentService.getDepartmentByAll(dept);
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
    public String actionDeleteDeptById(@PathVariable("id") Integer id, Map<String, Object> map) {
        Department dept = departmentService.getDepartmentById(id);
        int result = departmentService.deleteDepartment(dept);
        map.put("deptFlg", "dept_del");
        map.put("result", result);
        String resultString = "{\"result\":" + result + "}";
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
        if (dept.getDepartmentId() != null) {
            map.put("deptFlg", "dept_edit");
            result = departmentService.updateDepartment(dept);
        } else {
            map.put("deptFlg", "dept_create");
            result = departmentService.addDepartment(dept);
        }
        map.put("dept", dept);
        map.put("result", result);
        return "modules/sys/department_edit.action";
    }
}
