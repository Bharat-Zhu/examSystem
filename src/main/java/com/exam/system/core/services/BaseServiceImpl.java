package com.exam.system.core.services;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.exam.system.core.entitys.CommonModel;
import com.exam.system.core.entitys.User;
import com.exam.system.core.utils.UserUtils;

public class BaseServiceImpl<M extends BaseMapper<T>, T extends CommonModel> extends ServiceImpl<M, T> {

    /**
     * 给创建者，更新者ID赋值
     *
     * @param t 对应实体
     */
    public void setCreatorUpdaterId(T t) {
        User user = UserUtils.getUser();
        t.setCreatorId(user.getId());
        t.setUpdaterId(user.getId());
    }

    /**
     * 给更新者ID赋值
     *
     * @param t 对应实体
     */
    public void setUpdaterId(T t) {
        User user = UserUtils.getUser();
        t.setUpdaterId(user.getId());
    }
}
