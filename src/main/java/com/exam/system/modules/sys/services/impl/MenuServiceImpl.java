package com.exam.system.modules.sys.services.impl;

import com.exam.system.modules.sys.entitys.Menu;
import com.exam.system.modules.sys.mappers.MenuMapper;
import com.exam.system.modules.sys.services.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service("menuService")
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;

    public List<Menu> getMenuAll() {
        return menuMapper.selectAll();
    }
}
