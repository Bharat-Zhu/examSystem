package com.exam.system.modules.sys.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sys")
public class SystemController {

	@RequestMapping("/user")
	public String actionUser() {
		return "modules/sys/system.page";
	}
}
