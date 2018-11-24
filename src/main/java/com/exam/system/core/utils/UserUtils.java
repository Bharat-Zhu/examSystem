package com.exam.system.core.utils;

import com.exam.system.core.entitys.User;
import com.exam.system.modules.sys.entitys.Menu;
import com.exam.system.modules.sys.services.MenuService;
import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;

import java.util.ArrayList;
import java.util.List;

public class UserUtils {

    private static MenuService menuService = SpringContextUtils.getBean(MenuService.class);
    public static final String USER_CACHE = "userCache";
    public static final String MENU_LIST_CACHE = "menuList";
    public static final String ROLE_LIST_CACHE = "roleList";

    /**
     * 获取当前用户
     *
     * @return 取不到返回 new User();
     */
    public static User getUser() {
        PrincipalCollection principals = getPrincipal();
        if (principals != null) {
            User user = (User) principals.getPrimaryPrincipal();
            if (user != null) {
                return user;
            }
        }
        return new User();
    }

    /**
     * 获取当前登录者对象
     *
     * @return Principal
     */
    public static PrincipalCollection getPrincipal() {
        try {
            Subject subject = SecurityUtils.getSubject();
            return subject.getPrincipals();
        } catch (Exception e) {
            return null;
        }
    }

    public static void clearCache() {
        removeCache(MENU_LIST_CACHE);
        removeCache(ROLE_LIST_CACHE);
    }

    /**
     * 获取Menu菜单
     *
     * @return 菜单树
     */
    public static List<Menu> getMenuList() {
        List<Menu> rootMenu = (List<Menu>) getCache(MENU_LIST_CACHE);
        List<Menu> menuList = new ArrayList<Menu>();

        if (rootMenu == null) {
            rootMenu = menuService.getMenuAll();
        } else {
            return rootMenu;
        }

        // 设置一级菜单
        for (Menu menu : rootMenu) {
            if (StringUtils.isBlank(menu.getParentId())) {
                menuList.add(menu);
            }
        }

        // 添加子菜单
        for (Menu childMenu : menuList) {
            childMenu.setChildrenMenu(getChild(childMenu.getId(), rootMenu));
        }

        putCache(MENU_LIST_CACHE, menuList);

        return menuList;
    }

    private static List<Menu> getChild(String menuId, List<Menu> rootMenu) {
        List<Menu> childMenu = new ArrayList<Menu>();
        for (Menu menu : rootMenu) {
            if (StringUtils.isNotBlank(menu.getParentId())) {
                if (menu.getParentId().equals(menuId)) {
                    childMenu.add(menu);
                }
            }
        }

        for (Menu child : childMenu) {
            if (StringUtils.isBlank(child.getUrl())) {
                // 递归
                child.setChildrenMenu(getChild(child.getId(), rootMenu));
            }
        }

        if (childMenu.size() == 0) {
            return null;
        }

        return childMenu;
    }

    // =====user cache====
    public static Object getCache(String key) {
        return getCache(key, null);
    }

    public static Object getCache(String key, Object defaultValue) {
        Object obj = ExamUtils.getSession().getAttribute(key);
        return obj == null ? defaultValue : obj;
    }

    public static void putCache(String key, Object value) {
        ExamUtils.getSession().setAttribute(key, value);
    }

    public static void removeCache(String key) {
        ExamUtils.getSession().removeAttribute(key);
    }
}
