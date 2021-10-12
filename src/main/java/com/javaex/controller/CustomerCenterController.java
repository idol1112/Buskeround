package com.javaex.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaex.service.CustomerCenterService;

@RequestMapping(value = "/CustomerCenter")
@Controller
public class CustomerCenterController {
	
	@Autowired
	CustomerCenterService customerCenterService;
	
	@RequestMapping(value = "/Main", method = {RequestMethod.GET, RequestMethod.POST})
	public String customercenter(@RequestParam(value = "keyword", required = false) String keyword, 
								 @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage, 
								 Model model) {
	    System.out.println("[BlogController.CustomerCenter()]");
	    
	    // 서치 값 맵에 담기
	    Map<String, Object> searchvalue = new HashMap<String, Object>();
	    searchvalue.put("search", keyword);
	    searchvalue.put("crtPage", crtPage);
	    
	    // 리스트 가져오기
	    Map<String, Object> listMap = customerCenterService.noticeList(searchvalue);
	    System.out.println(listMap);
	    model.addAttribute("listMap", listMap);
		
		return "CustomerCenter/customer";
	}

}
