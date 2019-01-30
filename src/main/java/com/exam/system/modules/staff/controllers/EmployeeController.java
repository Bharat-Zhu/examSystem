package com.exam.system.modules.staff.controllers;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.Common.Common;
import com.exam.system.core.Common.OperateTypeEnum;
import com.exam.system.core.Common.PagePathEnum;
import com.exam.system.core.controllers.BaseController;
import com.exam.system.core.entitys.CustomPage;
import com.exam.system.core.entitys.FrontPage;
import com.exam.system.core.utils.MessageUtils;
import com.exam.system.modules.staff.entitys.Employee;
import com.exam.system.modules.staff.services.EmployeeService;
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
@RequestMapping("/staff")
public class EmployeeController extends BaseController {
	
	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private DepartmentService departmentService;

	@RequestMapping("/showEmps")
	public String showEmpList() {
        return setPage("employee_list.page");
    }

    @ResponseBody
    @RequestMapping("/searchEmpList")
    public String actionEmpList(FrontPage<Employee> page, Employee emp) {
        Page<Employee> employeePage = employeeService.selectPageByWhere(page.getPagePlus(), emp);
        CustomPage<Employee> customPage = new CustomPage<Employee>(employeePage);
        return JSON.toJSONString(customPage);
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public ModelAndView actionCreateDept(Map<String, Object> map) {
        map.put("depts", departmentService.getAll());
        return new ModelAndView(setPage("employee_edit.action"));
    }

    @RequestMapping(value = "/{operate}/{id}", method = RequestMethod.GET)
    public String actionShowEmployeeById(@PathVariable("operate") String operate, @PathVariable("id") String id, Map<String, Object> map) {
        map.put("emp", employeeService.getEmployeeById(id));

	    if (OperateTypeEnum.INFO.getName().equals(operate)) {
            return setPage("employee_info.action");
        } else if (OperateTypeEnum.EDIT.getName().equals(operate)) {
            map.put("depts", departmentService.getAll());
            return setPage("employee_edit.action");
        }

	    return error400Page();
    }

	@ResponseBody
	@RequestMapping(value = "/emp", method = RequestMethod.POST)
	public String actionInsert(Employee emp) {
        String message = "";
        boolean isSuccess = false;

        try{
            isSuccess = employeeService.addEmployee(emp);
            message = MessageUtils.getMessage("validation.constrains.insert.success.message");
        } catch (Exception e) {
            message = MessageUtils.getMessage("validation.constrains.insert.fail.message");
        }

        return Common.afterExecuteToJsonString(message, isSuccess);
	}

    @ResponseBody
    @RequestMapping(value = "/emp/{id}", method = RequestMethod.PUT)
	public String actionUpdate(@PathVariable("id") String id, Employee emp) {
        String message = "";
        boolean isSuccess = false;

        try{
            emp.setId(id);
            isSuccess = employeeService.updateEmployee(emp);
            message = MessageUtils.getMessage("validation.constrains.update.success.message");
        } catch (Exception e) {
            message = MessageUtils.getMessage("validation.constrains.update.fail.message");
        }

        return Common.afterExecuteToJsonString(message, isSuccess);
    }

    @ResponseBody
    @RequestMapping(value = "/emp/{id}", method = RequestMethod.DELETE)
    public String actionDelete(@PathVariable("id") String id) {
	    boolean isSuccess = employeeService.deleteById(id);
        return Common.afterExecuteToJsonString(isSuccess);
    }

	@Override
	public String setPage(String pageName) {
		return PagePathEnum.STAFF.getName() + pageName;
	}
}
