package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping(value ="/Company")
@Controller
public class CompanyController {

	//제휴사 수정 폼
	@RequestMapping(value = "/companyInfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyInfo() {
		System.out.println("[CompanyController.companyInfo()]");
		
		return "/Company/companyInfo";
	}
	
	//공연장 관리 폼(추가/삭제)
	@RequestMapping(value = "/stageManage", method = {RequestMethod.GET, RequestMethod.POST})
	public String stageManage() {
		System.out.println("[CompanyController.stageManage()]");
		
		return "/Company/stageManage";
	}
	
	//버스킹존 관리 폼(추가/수정/삭제)
	@RequestMapping(value = "/buskingZoneManage", method = {RequestMethod.GET, RequestMethod.POST})
	public String buskingZoneManage() {
		System.out.println("[CompanyController.buskingZoneManage()]");
		
		return "/Company/buskingZoneManage";
	}
	
	//공연 신청 관리 폼(수락/거절)
	@RequestMapping(value = "/applyManage", method = {RequestMethod.GET, RequestMethod.POST})
	public String applyManage() {
		System.out.println("[CompanyController.applyManage()]");
		
		return "/Company/applyManage";
	}
}
