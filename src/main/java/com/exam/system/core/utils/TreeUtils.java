package com.exam.system.core.utils;

import com.exam.system.core.entitys.TreeEntity;
import com.exam.system.modules.sys.entitys.Menu;

import java.util.ArrayList;
import java.util.List;

public class TreeUtils {

    public static List<TreeEntity> menuConvertTree(final List<Menu> menuList) {
        List<TreeEntity> treeList = new ArrayList<>();
        for (Menu menu: menuList) {
            TreeEntity  treeEntity = new TreeEntity();
            treeEntity.setId(menu.getId());
            treeEntity.setName(menu.getName());
            treeEntity.setParentId(menu.getParentId());
            treeList.add(treeEntity);
        }
        return treeList;
    }
}
