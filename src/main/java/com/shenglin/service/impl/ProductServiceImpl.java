package com.shenglin.service.impl;

import com.mybatis.mapper.ProductMapper;
import com.shenglin.beans.entity.ProductEntity;
import com.shenglin.service.ProductService;
import org.apache.ibatis.session.RowBounds;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Zhiming Qian
 * Date: 14-5-21
 * Time: 上午9:56
 * To change this template use File | Settings | File Templates.
 */
@Service("productService")
public class ProductServiceImpl implements ProductService {
	private static final Logger logger = LoggerFactory.getLogger(ProductServiceImpl.class);
	@Resource
	private ProductMapper productMapper;

	@Override
	public ProductEntity getProductById(String id) {
		ProductEntity product = null;
		product = productMapper.getProductById(id);
		logger.info("查询结果: id = {}, product: {}", id, product.toString());
		return product;
	}

	@Override
	public int countProductAll() {
		return productMapper.countProductAll();
	}

	@Override
	public List<ProductEntity> getProductAll(int offset, int limit) {
		List<ProductEntity> products = productMapper.getProductAll(new RowBounds(offset, limit));
		logger.info("getProductAll() list.size = {}", products.size());
		return products;
	}

	@Override
	public int addProduct(ProductEntity productEntity) {
		int result = productMapper.addProduct(productEntity);
		logger.info("addProduct() product:{}, result:{}", productEntity.toString(), result);
		return result;
	}

	@Override
	public int updateProduct(ProductEntity productEntity) {
		int result = productMapper.updateProduct(productEntity);
		logger.info("updateProduct() product:{}, result:{}", productEntity.toString(), result);
		return result;
	}

	@Override
	public int deleteProduct(String id) {
		int result = productMapper.deleteProduct(id);
		logger.info("deleteProduct() id={}, result:{}", id, result);
		return result;
	}

	@Override
	public int countProductByType(String type) {
		return productMapper.countByType(type);
	}

	@Override
	public List<ProductEntity> getProductsByType(int offset, int limit, String type) {
		List<ProductEntity> list = productMapper.getProductsByType(new RowBounds(offset, limit), type);
		logger.info("getProductsByType() type={}, result:{}", type, list.size());
		return list;
	}

	@Override
	public int countByVo(ProductEntity productEntity) {
		return productMapper.countByVo(productEntity);
	}

	@Override
	public List<ProductEntity> queryByVo(int offset, int limit, ProductEntity productEntity) {
		List<ProductEntity> list = productMapper.queryByVo(new RowBounds(offset, limit), productEntity);
		return list;
	}


}
