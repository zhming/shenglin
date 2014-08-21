package com.shenglin.base;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-5-19
 * Time: 下午3:26
 * To change this template use File | Settings | File Templates.
 *
 */


import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;

import java.io.Serializable;

/**
 * <p>
 * 系统领域对象的基类
 * </p>
 * <br>
 * 系统领域对象的基类，实现了Serializable接口。Allen. Lee
 * DomainObject还覆写了hashCode()方法和equals()方法。这两个方法都将基于代理主键进行操作。
 * 只有代理主键相等，领域对象才相等。如果创建的对象的entityId均未赋值，则直接比较物理地址。
 */
public class DomainObject implements Serializable {

    private static final long serialVersionUID = 6234793910389347162L;

    /**
     * 领域对象的代理主键.
     */
    private Long id;

     /*-------------------- construtors --------------------*/

    /**
     * 默认构造函数。
     */
    public DomainObject() {

    }

    /**
     * 通过代理主键构造领域对象。
     *
     * @param id
     */
    public DomainObject(Long id) {
        this();
        this.id = id;
    }

     /*----------------- public methods --------------------*/

    /**
     * 获取领域对象代理主键。
     *
     * @return
     */
    public Long getId() {
        return id;
    }

    /**
     * 设置领域对象代理主键。
     *
     * @param id
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * 覆写基类的hashCode方法，如果代理主键不为null，返回Id对应的hashCode值，否则返回基类的hashCode值。
     *
     * @return
     */
    @Override
    public int hashCode() {
        return new HashCodeBuilder().append(id).toHashCode();
    }

    /**
     * 根据代理主键判断领域对象是否相同。
     *
     * @see java.lang.Object#equals(java.lang.Object)
     */
    @Override
    public boolean equals(Object target) {
        if (target == null) {
            return false;
        }

        if (target == this) {
            return true;
        }

        if (target.getClass() != this.getClass()) {
            return false;
        }
        DomainObject t = (DomainObject) target;

        if (id == 0 || t.getId() == 0) {
            return t == this;
        }
        return new EqualsBuilder().append(id, t.getId()).isEquals();
    }
}
