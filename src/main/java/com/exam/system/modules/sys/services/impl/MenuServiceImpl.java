package com.exam.system.modules.sys.services.impl;

import com.exam.system.core.services.BaseServiceImpl;
import com.exam.system.core.utils.UserUtils;
import com.exam.system.modules.sys.entitys.Menu;
import com.exam.system.modules.sys.mappers.MenuMapper;
import com.exam.system.modules.sys.services.MenuService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("menuService")
public class MenuServiceImpl extends BaseServiceImpl<MenuMapper, Menu> implements MenuService {

    @Override
    public List<Menu> getMenuAll() {
        return baseMapper.selectAll();
    }

    @Override
    public int getMenuMaxRank() {
        Menu menu = baseMapper.selectMaxRank();
        int maxRank = menu.getRank() + 1;
        return maxRank;
    }

    @Override
    public boolean insertMenu(Menu menu) {
        String loginId = UserUtils.getUser().getId();
        menu.setRank(getMenuMaxRank());
        menu.setCreatorId(loginId);
        menu.setUpdaterId(loginId);
        return baseMapper.insertMenu(menu);
    }
}
