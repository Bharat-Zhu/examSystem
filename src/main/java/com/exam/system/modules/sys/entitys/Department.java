package com.exam.system.modules.sys.entitys;

import java.io.Serializable;
import java.util.Date;

import com.exam.system.core.entitys.SortEntity;

public class Department extends SortEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer departmentId;
	private String name;
	private String tel;
	private String remark;
	private String createId;
	private String updateId;
	private Date createDatetime;
	private Date updateDatetime;
	private String delFlag;
	private String extendFirst;
	private String extendSecond;

	/**
	 * 获取departmentId
	 *
	 * @return departmentId departmentId
	 */
	public Integer getDepartmentId() {
		return departmentId;
	}

	/**
	 * 设置departmentId
	 *
	 * @param departmentId departmentId
	 */
	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
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
	 * 获取tel
	 *
	 * @return tel tel
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * 设置tel
	 *
	 * @param tel tel
	 */
	public void setTel(String tel) {
		this.tel = tel;
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
	 * 获取createId
	 *
	 * @return createId createId
	 */
	public String getCreateId() {
		return createId;
	}

	/**
	 * 设置createId
	 *
	 * @param createId createId
	 */
	public void setCreateId(String createId) {
		this.createId = createId;
	}

	/**
	 * 获取updateId
	 *
	 * @return updateId updateId
	 */
	public String getUpdateId() {
		return updateId;
	}

	/**
	 * 设置updateId
	 *
	 * @param updateId updateId
	 */
	public void setUpdateId(String updateId) {
		this.updateId = updateId;
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
	 * 获取extendFirst
	 *
	 * @return extendFirst extendFirst
	 */
	public String getExtendFirst() {
		return extendFirst;
	}

	/**
	 * 设置extendFirst
	 *
	 * @param extendFirst extendFirst
	 */
	public void setExtendFirst(String extendFirst) {
		this.extendFirst = extendFirst;
	}

	/**
	 * 获取extendSecond
	 *
	 * @return extendSecond extendSecond
	 */
	public String getExtendSecond() {
		return extendSecond;
	}

	/**
	 * 设置extendSecond
	 *
	 * @param extendSecond extendSecond
	 */
	public void setExtendSecond(String extendSecond) {
		this.extendSecond = extendSecond;
	}
}
