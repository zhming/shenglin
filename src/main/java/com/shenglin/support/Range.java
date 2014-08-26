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

/**
 * 范围比较基础类 <br>
 *
 * @author chenzhao
 * @version 1.0 , 2012-12-17
 * @see
 * @since 1.0
 */
public abstract class Range {

	/**
	 *
	 */
	private Object min;
	/**
	 *
	 */
	private Object max;

	/**
	 * @return the min
	 */
	public Object getMin() {
		return min;
	}

	/**
	 * @param min the min to set
	 */
	public void setMin(Object min) {
		this.min = min;
	}

	/**
	 * @return the max
	 */
	public Object getMax() {
		return max;
	}

	/**
	 * @param max the max to set
	 */
	public void setMax(Object max) {
		this.max = max;
	}

	/**
	 * 判断是否在范围内 <br>
	 *
	 * @param obj
	 * @return
	 * @see
	 * @since 1.0
	 */
	public abstract boolean contains(Object obj);

}
