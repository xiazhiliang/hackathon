package com.kry.controller;

import com.kry.common.TypeEnum;
import com.kry.service.PortalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by xia.zl on 2017/5/13.
 * 主頁
 */
@Controller
@RequestMapping("/portal")
public class PortalController {

    @Autowired
    private PortalService portalService;

    @RequestMapping("/index")
    public String portal(Model model){
        model.addAttribute("sign",portalService.queryByType(TypeEnum.KEY_WORD.getKey()));
        model.addAttribute("business",portalService.queryByType(TypeEnum.BUSINESS.getKey()));
        model.addAttribute("module",portalService.queryByType(TypeEnum.PRODUCT_MODULE.getKey()));
        model.addAttribute("module",portalService.queryByType(TypeEnum.PRICE_RANCE.getKey()));
        return "main";
    }
}
