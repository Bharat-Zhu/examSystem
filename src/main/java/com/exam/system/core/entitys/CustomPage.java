package com.exam.system.core.entitys;

import com.baomidou.mybatisplus.plugins.Page;
import lombok.Data;

import java.util.List;

@Data
public class CustomPage<T> {
	// 当前页数
	private long page;

	// 每页显示数量
	private long pageSize;

	// 总条数
	private long records;

	// 数据列表
	private List<T> rows;

	// 总页数
	private long total;

	// 排序字段
	private String orderByField;

	// 是否升序
	private boolean isAsc;

	public CustomPage(Page<T> page) {
		this.page = page.getCurrent();
		this.pageSize = page.getSize();
		this.records = page.getTotal();
		this.rows = page.getRecords();
		this.total = page.getPages();
		this.orderByField = page.getOrderByField();
		this.isAsc = page.isAsc();
	}
}
