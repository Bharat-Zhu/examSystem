package com.exam.system.modules.sys.services.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.exam.system.core.services.BaseServiceImpl;
import com.exam.system.modules.sys.entitys.Menu;
import com.exam.system.modules.sys.mappers.MenuMapper;
import com.exam.system.modules.sys.services.MenuService;

@Service("menuService")
public class MenuServiceImpl extends BaseServiceImpl<MenuMapper, Menu> implements MenuService {

    public List<Menu> getMenuAll() {
        return baseMapper.selectAll();
    }
}
