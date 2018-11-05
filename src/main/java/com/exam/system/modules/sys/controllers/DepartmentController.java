package com.exam.system.modules.sys.controllers;

import com.exam.system.modules.sys.entitys.Department;
import com.exam.system.modules.sys.services.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

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
    public List<Department> getDeptJson(Department dept, String sord, String sidx) {
        return departmentService.getDepartmentByAll(dept);
    }
}
