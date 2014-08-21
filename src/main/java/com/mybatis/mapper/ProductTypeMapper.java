package com.mybatis.mapper;

import com.shenglin.beans.entity.ProductTypeEntity;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-6-20
 * Time: 下午4:36
 * To change this template use File | Settings | File Templates.
 */
public interface ProductTypeMapper {
    public List<ProductTypeEntity> getProductTypeAll();
}
