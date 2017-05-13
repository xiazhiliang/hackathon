package com.kry.service;

import com.kry.common.TypeEnum;
import com.kry.dao.AttributeMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Created by xia.zl on 2017/5/13.
 */

@RunWith(SpringRunner.class)
@SpringBootTest
public class PortalServiceTest {
//    @Autowired
//    private PortalService portalService;
    @Autowired
    private AttributeMapper attributeMapper;
    @Test
    public void queryByType(){
        attributeMapper.queryByType(TypeEnum.KEY_WORD.getKey());

//        Attribute attribute = new Attribute();
//        attribute.setType(1);
//        attribute.setName("test");
//        attribute.setIndex(2);
//        attribute.setDescription("");
//        attributeMapper.insert(attribute);
    }

}
