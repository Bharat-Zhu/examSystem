package com.exam.system.core.controllers;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.exam.system.core.utils.LogUtils;
import com.exam.system.core.utils.MessageUtils;
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
	public ModelAndView register(@Valid Employee emp, BindingResult bindingResult, Map<String, String> map) {
	    try {
	    	
	    	if (bindingResult.getErrorCount() > 0) {
	    		for (FieldError error : bindingResult.getFieldErrors()) {
	    			LogUtils.log(this).info(error.getField() + ": " + error.getDefaultMessage());
				}
	    		return new ModelAndView("register");
	    	}
	    	
            int result = employeeService.addEmployee(emp);
            LogUtils.log(this).info(MessageUtils.getMessage("validation.constrains.insert.success.message", result));
            map.put("registerStatus", "1");
            map.put("registerMessage", MessageUtils.getMessage("validation.constrains.register.success.message"));
	    } catch (Exception e) {
            LogUtils.log(this).error(MessageUtils.getMessage("validation.constrains.insert.fail.message") + "--->" + e.getMessage());
            map.put("registerStatus", "0");
            map.put("registerMessage", MessageUtils.getMessage("validation.constrains.register.fail.message"));
        }

        return new ModelAndView("register");
	}
}
