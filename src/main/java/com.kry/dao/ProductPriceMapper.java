package com.kry.dao;

import com.kry.entity.ProductPrice;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductPriceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(ProductPrice record);

    int insertSelective(ProductPrice record);

    ProductPrice selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ProductPrice record);

    int updateByPrimaryKey(ProductPrice record);
}