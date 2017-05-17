package com.kry.dao;

import com.kry.entity.Product;
import com.kry.entity.ProductProperty;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ProductMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Product record);

    int insertSelective(Product record);

    Product selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Product record);

    int updateByPrimaryKey(Product record);

    List<ProductProperty> queryByCondition(@Param("attributeId")Long[] attributeId, @Param("lowerLimit")Integer lowerLimit, @Param("upperLimit")Integer upperLimit);
}