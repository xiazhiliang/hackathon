package com.kry.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kry.common.TypeEnum;
import com.kry.entity.ProductProperty;
import com.kry.service.PortalService;
import com.kry.vo.SearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
        return "index";
    }

    @RequestMapping("/search")
    @ResponseBody
    public String search(@RequestBody SearchVo searchVo){
        List<ProductProperty> propers =  portalService.queryList(searchVo);
        try {
            return new ObjectMapper().writeValueAsString(propers);
        } catch (JsonProcessingException e) {
            return null;
        }
    }
}
