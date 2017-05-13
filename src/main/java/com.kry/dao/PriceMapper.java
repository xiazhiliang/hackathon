package com.kry.dao;

import com.kry.entity.Price;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PriceMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Price record);

    int insertSelective(Price record);

    Price selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Price record);

    int updateByPrimaryKey(Price record);
}