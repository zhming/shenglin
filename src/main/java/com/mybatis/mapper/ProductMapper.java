package com.mybatis.mapper;

import com.shenglin.beans.entity.ProductEntity;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-5-21
 * Time: 上午9:09
 * To change this template use File | Settings | File Templates.
 */
public interface ProductMapper {
    public ProductEntity getProductById(Long id);

    public int countProductAll();

    public List<ProductEntity> getProductAll(RowBounds rowBounds);

    public int addProduct(ProductEntity productEntity);

    public int updateProduct(ProductEntity productEntity);

    public int deleteProduct(Long id);

    public int countByType(String type);

    public List<ProductEntity> getProductsByType(RowBounds rowBounds, String type);

    public int countByVo(ProductEntity productEntity);

    public List<ProductEntity> queryByVo(RowBounds rowBounds, ProductEntity productEntity);

}
