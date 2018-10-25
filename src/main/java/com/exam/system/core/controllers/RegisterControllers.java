package com.exam.system.core.controllers;

import com.exam.system.core.utils.MessageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.exam.system.core.utils.LogUtils;
import com.exam.system.modules.sys.entitys.Employee;
import com.exam.system.modules.sys.services.EmployeeService;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Map;

@Controller
public class RegisterControllers {
	
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public String register() {
		return "register";
	}

	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(Employee emp, Map<String, String> map) {
	    try {
            int result = employeeService.addEmployee(emp);
            LogUtils.log(getClass()).info(MessageUtils.getMessage("validation.constrains.insert.success.message", result));
            map.put("1", "success");
	    } catch (Exception e) {
            LogUtils.log(getClass()).error(MessageUtils.getMessage("validation.constrains.insert.fail.message"));
            map.put("0", "fail");
        }

        return "register";
	}
}
