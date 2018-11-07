package com.exam.system.modules.staff.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.exam.system.core.utils.LogUtils;
import com.exam.system.modules.staff.entitys.Employee;
import com.exam.system.modules.staff.services.EmployeeService;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value = "/addEmployee", method = RequestMethod.POST)
	public void add(Employee emp) {
		int result = employeeService.addEmployee(emp);
		LogUtils.log(this.getClass()).info("Success Add " + result + "Data.");
	}
}	
