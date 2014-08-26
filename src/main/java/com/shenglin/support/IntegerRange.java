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
 * 整数类型的范围<br>
 *
 * @author chenzhao
 * @version 1.0 , 2012-12-17
 * @see
 * @since 1.0
 */
public class IntegerRange extends Range {
	/**
	 *
	 */
	public IntegerRange() {
		this(0, 0);
	}

	/**
	 * @param min
	 * @param max
	 */
	public IntegerRange(int min, int max) {
		setMin(min);
		setMax(max);
	}

	/**
	 * 判断当前属性是否在范围中
	 *
	 * @see com.shenglin.support.Range#contains(Object)
	 */
	@Override
	public boolean contains(Object obj) {
		Integer val = (Integer) obj;
		return (Integer) getMin() <= val && (Integer) getMax() >= val;
	}
}
