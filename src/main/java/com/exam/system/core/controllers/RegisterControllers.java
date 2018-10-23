package com.exam.system.core.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.exam.system.core.utils.LogUtils;
import com.exam.system.modules.sys.entitys.Employee;
import com.exam.system.modules.sys.services.EmployeeService;

@Controller
public class RegisterControllers {
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}
	
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public void register(Employee emp) {
		int result = employeeService.addEmployee(emp);
		LogUtils.log(getClass()).info("ADD Employee -->" + result);
	}
}
