package com.exam.system.modules.sys.mappers;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.exam.system.modules.sys.entitys.Menu;

import java.util.List;

public interface MenuMapper extends BaseMapper<Menu> {

    List<Menu> selectAll();

    Menu selectMaxRank();

    boolean insertMenu(Menu menu);
}
