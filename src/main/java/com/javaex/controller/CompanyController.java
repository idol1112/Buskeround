package com.javaex.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.service.CompanyService;
import com.javaex.service.UserService;
import com.javaex.vo.CompanyVo;
import com.javaex.vo.StageVo;
import com.javaex.vo.UserVo;

@RequestMapping(value ="/Company")
@Controller
public class CompanyController {
	
	@Autowired
	CompanyService companyService;
	@Autowired
	UserService userService;
		
	///////////////////////////////// 제휴사 /////////////////////////////////
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
								@RequestParam ("business_number") String business_number,
								HttpSession session) {
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
		
		//유저 정보 가져오기
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		
		//수정된 정보 AuthUser 덮어쓰기
		UserVo userVo = new UserVo(authUser.getId(), authUser.getPassword());
		authUser = userService.getPerson(userVo);
		session.setAttribute("authUser", authUser);
		
		
		return "redirect:/Company/companyInfo";
	}
	

	//제휴사 수정 폼
	@RequestMapping(value = "/companyInfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyInfo(HttpSession session, Model model) {
		System.out.println("[CompanyController.companyInfo()]");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int user_no = authUser.getUser_no();
		
		CompanyVo companyVo = companyService.selectCompany(user_no);
		System.out.println(companyVo);
		model.addAttribute("companyVo", companyVo);
		
		return "/Company/companyInfo";
	}
	
	//제휴사 수정
	@RequestMapping(value = "/companyModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String companyModify(@RequestParam (value="com_img", required=false, defaultValue="0") MultipartFile file,
								@RequestParam ("user_no") int user_no,
								@RequestParam ("com_name") String com_name,
								@RequestParam ("address") String address,
								@RequestParam ("com_number") String com_number,
								@RequestParam ("ceo_name") String ceo_name,
								@RequestParam ("business_number") String business_number,
								@RequestParam ("used_img") String used_img,
								HttpSession session) {
		int count = 0;
		System.out.println("[CompanyController.companyModify()]");
		
		if(file.isEmpty()) {
			CompanyVo companyVo = new CompanyVo(user_no, used_img, com_name, address, com_number, ceo_name, business_number);
			count = companyService.companyModify2(companyVo);
		}else {
			Map<String, Object> companyInsertMap = new HashMap<>();
			
			companyInsertMap.put("com_img", file);
			companyInsertMap.put("user_no", user_no);
			companyInsertMap.put("com_name", com_name);
			companyInsertMap.put("address", address);
			companyInsertMap.put("com_number", com_number);
			companyInsertMap.put("ceo_name", ceo_name);
			companyInsertMap.put("business_number", business_number);
			
			System.out.println(companyInsertMap);
			
			count = companyService.companyModify(companyInsertMap);
		}
		System.out.println("제휴사 ["+count+"]건 수정 완료");
		
		//유저 정보 가져오기
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		
		//수정된 정보 AuthUser 덮어쓰기
		UserVo userVo = new UserVo(authUser.getId(), authUser.getPassword());
		authUser = userService.getPerson(userVo);
		session.setAttribute("authUser", authUser);
		
		return "redirect:/Company/companyInfo";
	}
	///////////////////////////////// *제휴사* /////////////////////////////////
	
	///////////////////////////////// 공연장 /////////////////////////////////
	//공연장 관리 폼(추가/삭제)
	@RequestMapping(value = "/stageManage", method = {RequestMethod.GET, RequestMethod.POST})
	public String stageManage(HttpSession session, Model model) {
		System.out.println("[CompanyController.stageManage()]");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int user_no = authUser.getUser_no();
		
		List<StageVo> stageList = companyService.getStage(user_no);
		
		System.out.println(stageList);
		
		model.addAttribute("stageList", stageList);
		
		return "/Company/stageManage";
	}
	
	//공연장 등록
	@RequestMapping(value = "/stageInsert", method = {RequestMethod.GET, RequestMethod.POST})
	public String stageInsert(@ModelAttribute StageVo stageVo) {
		System.out.println("[CompanyController.stageInsert()]");
		
		int count = companyService.stageInsert(stageVo);
		
		System.out.println("공연장 ["+count+"]건 저장 완료");
		
		return "redirect:/Company/stageManage";
	}
	
	//공연장 해당 데이터 가져오기
	@ResponseBody
	@RequestMapping(value = "/stageModifyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public StageVo stageModifyForm(@RequestParam ("stage_no") int stage_no) {
		System.out.println("[CompanyController.stageModifyForm()]");
		
		return companyService.getStageOne(stage_no);
	}
	
	//공연장 수정
	@RequestMapping(value = "/stageModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String stageModify(@ModelAttribute StageVo stageVo) {
		System.out.println("[CompanyController.stageModify()]");
		
		int count = companyService.stageModify(stageVo);
		System.out.println("공연장 ["+count+"]건 수정 완료");
		
		return "redirect:/Company/stageManage";
	}
	
	//공연장 삭제
	@ResponseBody
	@RequestMapping(value = "/stageRemove", method = {RequestMethod.GET, RequestMethod.POST})
	public int stageRemove(@RequestParam ("stage_no") int stage_no) {
		System.out.println("[CompanyController.stageRemove()]");
		
		System.out.println(stage_no);
		
		int count = companyService.stageRemove(stage_no);
		return count;
	}
	///////////////////////////////// *공연장* /////////////////////////////////
	
	///////////////////////////////// 버스킹존 /////////////////////////////////
	//버스킹존 관리 폼(추가/수정/삭제)
	@RequestMapping(value = "/buskingZoneManage", method = {RequestMethod.GET, RequestMethod.POST})
	public String buskingZoneManage(HttpSession session, Model model) {
		System.out.println("[CompanyController.buskingZoneManage()]");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int user_no = authUser.getUser_no();
		
		List<StageVo> stageList = companyService.getStage(user_no);
		
		System.out.println(stageList);
		
		model.addAttribute("stageList", stageList);
		
		return "/Company/buskingZoneManage";
	}
	
	///////////////////////////////// *버스킹존* /////////////////////////////////
	
	//공연 신청 관리 폼(수락/거절)
	@RequestMapping(value = "/applyManage", method = {RequestMethod.GET, RequestMethod.POST})
	public String applyManage() {
		System.out.println("[CompanyController.applyManage()]");
		
		return "/Company/applyManage";
	}
}
