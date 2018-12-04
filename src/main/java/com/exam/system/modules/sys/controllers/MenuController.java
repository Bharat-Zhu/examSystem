package com.exam.system.modules.sys.controllers;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.exam.system.core.entitys.CustomPage;
import com.exam.system.core.entitys.FrontPage;
import com.exam.system.core.entitys.TreeEntity;
import com.exam.system.core.utils.TreeUtils;
import com.exam.system.modules.sys.entitys.Menu;
import com.exam.system.modules.sys.services.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

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
	
	@RequestMapping("/addPage")
	public ModelAndView actionCreateMenu(Map<String, Object> map) {
		return new ModelAndView("modules/sys/menu_edit.action");
	}

	@RequestMapping("/searchMenus")
	public ModelAndView actionSearchMenuList(Map<String, Object> map) {
        List<Menu> menuList =  menuService.getMenuAll();
        List<TreeEntity> menuTreeList = TreeUtils.menuConvertTree(menuList);
        map.put("tree", JSON.toJSONString(menuTreeList));
	    return new ModelAndView("tree.action");
    }

    @RequestMapping("/insert")
    public ModelAndView actionInsert(Menu menu, Map<String, Object> map) {
        boolean isSuccess = menuService.insertMenu(menu);
        map.put("isSuccess", isSuccess);
        return new ModelAndView("modules/sys/menu_edit.action");
    }

	@RequestMapping("/delete/{id}")
    public ModelAndView actionDelete(@PathVariable("id") Integer id, Map<String, Object> map) {
        Wrapper<Menu> deleteWrapper = new EntityWrapper<Menu>();
        deleteWrapper.eq("id", id);
        boolean isSuccess = menuService.delete(deleteWrapper);
        map.put("isSuccess", isSuccess);
		return new ModelAndView("modules/sys/menu_list.page");
	}
}
