package com.exam.system.modules.answer.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SimpleController {

	@RequestMapping("/exam")
	public String login() {
		return "error/500";
	}
}
