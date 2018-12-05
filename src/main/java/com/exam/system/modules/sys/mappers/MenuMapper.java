package com.exam.system.modules.sys.mappers;

import java.util.List;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.exam.system.modules.sys.entitys.Menu;

public interface MenuMapper extends BaseMapper<Menu> {

    List<Menu> selectAll();

    Menu selectMaxRank();

    boolean insertMenu(Menu menu);
    
    String selectParnetNameByParentId(String parentId);
}
