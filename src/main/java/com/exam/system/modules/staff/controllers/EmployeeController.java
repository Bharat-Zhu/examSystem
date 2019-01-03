package com.exam.system.modules.staff.controllers;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.Common.Common;
import com.exam.system.core.Common.PagePathEnum;
import com.exam.system.core.controllers.BaseController;
import com.exam.system.core.entitys.CustomPage;
import com.exam.system.core.entitys.FrontPage;
import com.exam.system.core.utils.MessageUtils;
import com.exam.system.modules.staff.entitys.Employee;
import com.exam.system.modules.staff.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/staff")
public class EmployeeController extends BaseController {
	
	@Autowired
	private EmployeeService employeeService;

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

	@Override
	public String setPage(String pageName) {
		return PagePathEnum.STAFF.getName() + pageName;
	}
}
