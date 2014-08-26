/**
 * Description: <类功能描述-必填> 
 * Copyright:   Copyright (c)2012  
 * Company:     ChunYu 
 * @author: ChenZhao
 * @version: 1.0
 * Create at:   2012-12-21 下午4:22:51  
 *
 * Modification History:  
 * Date         Author      Version     Description  
 * ------------------------------------------------------------------  
 * 2012-12-21   ChenZhao      1.0       如果修改了;必填  
 */
package com.shenglin.support;

import java.io.Serializable;
import java.util.List;

/**
 * <br>
 *
 * @author chenzhao
 * @version 1.0 , 2012-12-17
 * @see
 * @since 1.0
 */
public class GridData<T> implements Serializable {

	private static final long serialVersionUID = -5551363717235602026L;
	/**
	 *
	 */
	private int total;
	/**
	 *
	 */
	private List<T> rows;

	/**
	 * @param total
	 * @param rows
	 */
	public GridData(int total, List<T> rows) {
		this.total = total;
		this.rows = rows;
	}

	/**
	 * @return
	 */
	public int getTotal() {
		return total;
	}

	/**
	 * @param total
	 */
	public void setTotal(int total) {
		this.total = total;
	}

	/**
	 * @return
	 */
	public List<T> getRows() {
		return rows;
	}

	/**
	 * @param total
	 */
	public void setRows(List<T> rows) {
		this.rows = rows;
	}

}
