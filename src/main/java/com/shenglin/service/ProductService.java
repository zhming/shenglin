package com.shenglin.service;

import com.shenglin.beans.entity.ProductEntity;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-5-21
 * Time: 上午9:55
 * To change this template use File | Settings | File Templates.
 */
public interface ProductService {
    public ProductEntity getProductById(Long id);

    public int countProductAll();

    public List<ProductEntity> getProductAll(int offset, int limit);

    public int addProduct(ProductEntity productEntity);

    public int updateProduct(ProductEntity productEntity);

    public int deleteProduct(Long id);

    public int countProductByType(String type);

    public List<ProductEntity> getProductsByType(int offset, int limit, String type);

    public int countByVo(ProductEntity productEntity);

    public List<ProductEntity> queryByVo(int offset, int limit, ProductEntity productEntity);
}
