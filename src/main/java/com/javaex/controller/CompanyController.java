package com.javaex.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.CompanyService;

@RequestMapping(value ="/Company")
@Controller
public class CompanyController {
	
	@Autowired
	CompanyService companyService;
		
	
	//제휴사 등록 폼
	@RequestMapping(value = "/mypageCompany", method = {RequestMethod.GET, RequestMethod.POST})
	public String mypageCompany() {
		System.out.println("[CompanyController.mypageCompany()]");
		
		return "/MyPage/mypageCompany";
	}
	
	//제휴사 등록
	@RequestMapping(value = "/companyInsert", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyInsert(@RequestParam ("com_img") MultipartFile file,
								@RequestParam ("user_no") int user_no,
								@RequestParam ("company_type") String company_type,
								@RequestParam ("com_name") String com_name,
								@RequestParam ("address") String address,
								@RequestParam ("com_number") String com_number,
								@RequestParam ("ceo_name") String ceo_name,
								@RequestParam ("business_number") String business_number) {
		System.out.println("[CompanyController.companyInsert()]");
		
		Map<String, Object> companyInsertMap = new HashMap<>();
		
		companyInsertMap.put("com_img", file);
		companyInsertMap.put("user_no", user_no);
		companyInsertMap.put("company_type", company_type);
		companyInsertMap.put("com_name", com_name);
		companyInsertMap.put("address", address);
		companyInsertMap.put("com_number", com_number);
		companyInsertMap.put("ceo_name", ceo_name);
		companyInsertMap.put("business_number", business_number);
		
		System.out.println(companyInsertMap);
		
		int count = companyService.companyInsert(companyInsertMap);
		
		System.out.println("제휴사 ["+count+"]건 저장 완료");
		
		
		
		return "redirect:/Company/companyInfo";
	}
	

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
