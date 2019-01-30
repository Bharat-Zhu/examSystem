package com.exam.system.modules.sys.entitys;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.exam.system.core.entitys.CommonModel;
import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
@TableName("tbl_menu")
public class Menu extends CommonModel {
	private int id;
	private String messageCode;
	private String name;
	private String type;
	private String url;
	private String parentId;
	private Integer rank;
	private String icon;
	private String remark;
	private String isShow;

	@TableField(exist = false)
	private List<Menu> childrenMenu;

	@TableField(exist = false)
	private String parentName;

	/**
	 * 获取id
	 *
	 * @return id id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * 设置id
	 *
	 * @param id id
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	@Override
	protected Serializable pkVal() {
		return id;
	}
}
