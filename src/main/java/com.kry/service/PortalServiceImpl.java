package com.kry.service;

import com.kry.common.TypeEnum;
import com.kry.dao.AttributeMapper;
import com.kry.dao.ProductMapper;
import com.kry.entity.Attribute;
import com.kry.entity.ProductProperty;
import com.kry.vo.SearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

/**
 * Created by xia.zl on 2017/5/13.
 */

@Service("portalService")
public class PortalServiceImpl implements PortalService {

    @Autowired
    private AttributeMapper attributeMapper;
    @Autowired
    private ProductMapper productMapper;

    @Override
    public List<Attribute> queryByType(Integer type){
        return attributeMapper.queryByType(type);
    }

    @Override
    public List<Attribute> queryByPriceType(Integer type, List<Long> list) {
        return attributeMapper.queryByPriceType(type,list);
    }

    @Override
    public List<ProductProperty> queryList(SearchVo searchVo) {
        List<Attribute> attributes = queryByPriceType(TypeEnum.PRICE_RANCE.getKey(), Arrays.asList(searchVo.getAttributePrice()));
        Integer upperLimit = null,lowerLimit=null;
        if(attributes!=null) {
            String[] priceSection = attributes.get(0).getName().split(",");
            if (priceSection.length > 1) {
                lowerLimit = Integer.valueOf(priceSection[0]);
                upperLimit = Integer.valueOf(priceSection[1]);
            } else {
                lowerLimit = Integer.valueOf(priceSection[0]);
            }
        }
        return productMapper.queryByCondition(searchVo.getAttribute(),lowerLimit,upperLimit);
    }
}
