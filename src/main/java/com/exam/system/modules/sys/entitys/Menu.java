package com.exam.system.modules.sys.entitys;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.exam.system.core.entitys.CommonModel;

import java.io.Serializable;
import java.util.List;

@TableName("tbl_menu")
@SuppressWarnings("serial")
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

	/**
	 * @return the messageCode
	 */
	public String getMessageCode() {
		return messageCode;
	}

	/**
	 * @param messageCode the messageCode to set
	 */
	public void setMessageCode(String messageCode) {
		this.messageCode = messageCode;
	}

	/**
	 * 获取name
	 *
	 * @return name name
	 */
	public String getName() {
		return name;
	}

	/**
	 * 设置name
	 *
	 * @param name name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 获取type
	 *
	 * @return type type
	 */
	public String getType() {
		return type;
	}

	/**
	 * 设置type
	 *
	 * @param type type
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * 获取url
	 *
	 * @return url url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * 设置url
	 *
	 * @param url url
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * 获取parentId
	 *
	 * @return parentId parentId
	 */
	public String getParentId() {
		return parentId;
	}

	/**
	 * 设置parentId
	 *
	 * @param parentId parentId
	 */
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	/**
	 * 获取rank
	 *
	 * @return rank rank
	 */
	public Integer getRank() {
		return rank;
	}

	/**
	 * 设置rank
	 *
	 * @param rank rank
	 */
	public void setRank(Integer rank) {
		this.rank = rank;
	}

	/**
	 * 获取icon
	 *
	 * @return icon icon
	 */
	public String getIcon() {
		return icon;
	}

	/**
	 * 设置icon
	 *
	 * @param icon icon
	 */
	public void setIcon(String icon) {
		this.icon = icon;
	}

	/**
	 * 获取remark
	 *
	 * @return remark remark
	 */
	public String getRemark() {
		return remark;
	}

	/**
	 * 设置remark
	 *
	 * @param remark remark
	 */
	public void setRemark(String remark) {
		this.remark = remark;
	}

	/**
	 * 获取childrenMenu
	 *
	 * @return childrenMenu childrenMenu
	 */
	public List<Menu> getChildrenMenu() {
		return childrenMenu;
	}

	/**
	 * 设置childrenMenu
	 *
	 * @param childrenMenu childrenMenu
	 */
	public void setChildrenMenu(List<Menu> childrenMenu) {
		this.childrenMenu = childrenMenu;
	}

	/**
	 * @return the isShow
	 */
	public String getIsShow() {
		return isShow;
	}

	/**
	 * @param isShow the isShow to set
	 */
	public void setIsShow(String isShow) {
		this.isShow = isShow;
	}

	/**
	 * @return the parentName
	 */
	public String getParentName() {
		return parentName;
	}

	/**
	 * @param parentName the parentName to set
	 */
	public void setParentName(String parentName) {
		this.parentName = parentName;
	}

	@Override
	protected Serializable pkVal() {
		return id;
	}
}
