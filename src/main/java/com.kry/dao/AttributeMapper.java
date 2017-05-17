package com.kry.dao;

import com.kry.entity.Attribute;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AttributeMapper {
    List<Attribute> queryByType(@Param("type") Integer type);

    List<Attribute> queryByPriceType(@Param("type") Integer type,@Param("ids")List<Long> ids);


    int insert(Attribute attribute);
}