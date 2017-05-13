package com.kry.service;

import com.kry.dao.AttributeMapper;
import com.kry.dao.ProductMapper;
import com.kry.entity.Attribute;
import com.kry.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    public List<Product> queryList() {
        return null;
    }
}
