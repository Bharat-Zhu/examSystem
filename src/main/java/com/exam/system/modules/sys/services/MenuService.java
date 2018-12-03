package com.exam.system.modules.sys.services;

import com.exam.system.core.services.IBaseService;
import com.exam.system.modules.sys.entitys.Menu;

import java.util.List;

public interface MenuService extends IBaseService<Menu>{
    List<Menu> getMenuAll();

    int getMenuMaxRank();

    boolean insertMenu(Menu menu);
}
