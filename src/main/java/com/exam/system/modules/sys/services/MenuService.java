package com.exam.system.modules.sys.services;

import java.util.List;

import com.exam.system.core.services.IBaseService;
import com.exam.system.modules.sys.entitys.Menu;

public interface MenuService extends IBaseService<Menu>{
    List<Menu> getMenuAll();
    
    int getMenuMaxRank();

    boolean insertMenu(Menu menu);
    
    boolean deleteMenuById(Integer id);
    
    String getParentNameByParentId(String parentId);
}
