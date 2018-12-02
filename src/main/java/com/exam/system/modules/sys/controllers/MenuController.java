package com.exam.system.modules.sys.controllers;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.entitys.CustomPage;
import com.exam.system.core.entitys.FrontPage;
import com.exam.system.modules.sys.entitys.Menu;
import com.exam.system.modules.sys.services.MenuService;

@Controller
@RequestMapping("/sys/menu")
public class MenuController {

	@Autowired
	private MenuService menuService;

	@RequestMapping("/showMenu")
	public ModelAndView actionShowMenu() {
		return new ModelAndView("modules/sys/menu_list.page");
	}

	@ResponseBody
	@RequestMapping("/showMenuList")
	public String getMenuList(FrontPage<Menu> page) {
		Wrapper<Menu> wrapper = new EntityWrapper<Menu>();
		wrapper.eq("del_flag", "0");
		wrapper.orderBy("rank");
		Page<Menu> menuList = menuService.selectPage(page.getPagePlus(), wrapper);
		CustomPage<Menu> customMenuPage = new CustomPage<>(menuList);
		return JSON.toJSONString(customMenuPage);
	}
	
	@RequestMapping("/add")
	public ModelAndView actionCreateMenu(Map<String, Object> map) {
		return new ModelAndView("modules/sys/menu_edit.action");
	}
}
