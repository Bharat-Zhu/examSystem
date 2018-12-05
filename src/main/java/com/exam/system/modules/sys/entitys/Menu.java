package com.exam.system.modules.sys.entitys;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

@TableName("tbl_menu")
@SuppressWarnings("serial")
public class Menu extends Model<Menu> {
	private int id;
	private String messageCode;
	private String name;
	private String type;
	private String url;
	private String parentId;
	private String permission;
	private Integer rank;
	private String icon;
	private String remark;
	private String delFlag;
	private String creatorId;
	private Date createDatetime;
	private String updaterId;
	private Date updateDatetime;
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
	 * 获取permission
	 *
	 * @return permission permission
	 */
	public String getPermission() {
		return permission;
	}

	/**
	 * 设置permission
	 *
	 * @param permission permission
	 */
	public void setPermission(String permission) {
		this.permission = permission;
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
	 * 获取delFlag
	 *
	 * @return delFlag delFlag
	 */
	public String getDelFlag() {
		return delFlag;
	}

	/**
	 * 设置delFlag
	 *
	 * @param delFlag delFlag
	 */
	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

	/**
	 * 获取creatorId
	 *
	 * @return creatorId creatorId
	 */
	public String getCreatorId() {
		return creatorId;
	}

	/**
	 * 设置creatorId
	 *
	 * @param creatorId creatorId
	 */
	public void setCreatorId(String creatorId) {
		this.creatorId = creatorId;
	}

	/**
	 * 获取createDatetime
	 *
	 * @return createDatetime createDatetime
	 */
	public Date getCreateDatetime() {
		return createDatetime;
	}

	/**
	 * 设置createDatetime
	 *
	 * @param createDatetime createDatetime
	 */
	public void setCreateDatetime(Date createDatetime) {
		this.createDatetime = createDatetime;
	}

	/**
	 * 获取updaterId
	 *
	 * @return updaterId updaterId
	 */
	public String getUpdaterId() {
		return updaterId;
	}

	/**
	 * 设置updaterId
	 *
	 * @param updaterId updaterId
	 */
	public void setUpdaterId(String updaterId) {
		this.updaterId = updaterId;
	}

	/**
	 * 获取updateDatetime
	 *
	 * @return updateDatetime updateDatetime
	 */
	public Date getUpdateDatetime() {
		return updateDatetime;
	}

	/**
	 * 设置updateDatetime
	 *
	 * @param updateDatetime updateDatetime
	 */
	public void setUpdateDatetime(Date updateDatetime) {
		this.updateDatetime = updateDatetime;
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
