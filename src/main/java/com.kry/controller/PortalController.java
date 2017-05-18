package com.kry.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kry.common.TypeEnum;
import com.kry.entity.Attribute;
import com.kry.entity.ProductProperty;
import com.kry.service.PortalService;
import com.kry.vo.SearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.List;

/**
 * Created by xia.zl on 2017/5/13.
 * 主頁
 */
@Controller
@RequestMapping("/portal")
public class PortalController {

    @Autowired
    private PortalService portalService;

    @RequestMapping("/home")
    public String portal(Model model){
        model.addAttribute("sign",portalService.queryByType(TypeEnum.KEY_WORD.getKey()));
        model.addAttribute("business",portalService.queryByType(TypeEnum.BUSINESS.getKey()));
        model.addAttribute("module",portalService.queryByType(TypeEnum.PRODUCT_MODULE.getKey()));
        model.addAttribute("module",portalService.queryByType(TypeEnum.PRICE_RANCE.getKey()));
        model.addAttribute("area",portalService.queryByType(TypeEnum.AREA.getKey()));
        return "main";
    }

    @RequestMapping("/search")
    @ResponseBody
    public String search(SearchVo searchVo){
        Long[] ids = {26L,27L,28L,29L,30L,31L,32L};
        List<Attribute> attributes =  portalService.queryByPriceType(TypeEnum.PRICE_RANCE.getKey(), Arrays.asList(ids));
        searchVo.setAttributePrice(attributes.get(2).getName());
        Long []attributeId = new Long[26];
        for(int i=1;i<26;i++){
            attributeId[i]= Long.valueOf(i);
        }
        searchVo.setAttributeId(attributeId);
        List<ProductProperty> list =  portalService.queryList(searchVo);
        try {
            return new ObjectMapper().writeValueAsString(list);
        } catch (JsonProcessingException e) {
            return null;
        }
    }
}
