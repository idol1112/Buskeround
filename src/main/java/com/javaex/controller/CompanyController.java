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
import com.javaex.vo.AppFilterVo;
import com.javaex.vo.ApplyListVo;
import com.javaex.vo.BusappVo;
import com.javaex.vo.BusdateVo;
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
								@RequestParam ("latitude") double latitude,
								@RequestParam ("longitude") double longitude,
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
		companyInsertMap.put("latitude", latitude);
		companyInsertMap.put("longitude", longitude);
		
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
	//버스킹존 등록 폼
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
	
	//버스킹존 등록
	@ResponseBody
	@RequestMapping(value = "/buskingZoneInsert", method = {RequestMethod.GET, RequestMethod.POST})
	public int buskingZoneInsert(@RequestParam ("stage_no") int stage_no,
									@RequestParam ("bus_date") String bus_date,
									@RequestParam ("requirements") String requirements,
									@RequestParam ("startArray[]") List<String> sList,
									@RequestParam ("endArray[]") List<String> eList
									) {
		
		System.out.println("[CompanyController.buskingZoneInsert()]");
		
		BusdateVo busdateVo = new BusdateVo(stage_no, bus_date, requirements);
		System.out.println(busdateVo);
		System.out.println("-시작시간-");
		for(String s : sList) {
			System.out.println(s);
		}
		
		System.out.println("-종료시간-");
		for(String e : eList) {
			System.out.println(e);
		}
		
		int count= companyService.buskingZoneInsert(busdateVo, sList, eList);
		
		System.out.println("버스킹존 ["+count+"]건 저장 완료");
	 
		
		return count;
	}
	
	//버스킹존 관리 폼
	@RequestMapping(value = "/buskingZoneModifyForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String buskingZoneModifyForm(HttpSession session, Model model) {
		System.out.println("[CompanyController.buskingZoneModifyForm()]");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int user_no = authUser.getUser_no();
		
		List<StageVo> stageList = companyService.getStage(user_no);
		
		System.out.println(stageList);
		
		model.addAttribute("stageList", stageList);
		
		return"/Company/buskingZoneModifyForm";
	}
	
	//버스킹존 리스트 불러오기
	@ResponseBody
	@RequestMapping(value = "/buskingZoneList", method = {RequestMethod.GET, RequestMethod.POST})
	public List<BusdateVo> buskingZoneList(@ModelAttribute BusdateVo busdateVo) {
		System.out.println("[CompanyController.buskingZoneList()]");
		
		System.out.println(busdateVo);
		
		List<BusdateVo> busdateList = companyService.getBuskingZone(busdateVo);
		
		System.out.println(busdateList);
		
		return busdateList;
	}
	
	//버스킹존 일정 불러오기
	@ResponseBody
	@RequestMapping(value = "/buskingZonePlan", method = {RequestMethod.GET, RequestMethod.POST})
	public List<BusdateVo> buskingZonePlan(@ModelAttribute BusdateVo busdateVo) {
		System.out.println("[CompanyController.buskingZonePlan()]");
		
		System.out.println(busdateVo);
		List<BusdateVo> result = companyService.getBusPlan(busdateVo);
		System.out.println(result);
		return result;
	}
	
	//버스킹존 일정 수정
	@ResponseBody
	@RequestMapping(value = "/buskingZoneModify", method = {RequestMethod.GET, RequestMethod.POST})
	public int buskingZoneModify(	@RequestParam ("date_no") int date_no,
									@RequestParam ("stage_no") int stage_no,
									@RequestParam ("bus_date") String bus_date,
									@RequestParam ("requirements") String requirements,
									@RequestParam ("startArray[]") List<String> sList,
									@RequestParam ("endArray[]") List<String> eList
									) {
		
		System.out.println("[CompanyController.buskingZoneModify()]");
		
		BusdateVo busdateVo = new BusdateVo(date_no, stage_no, bus_date, requirements);
		System.out.println(busdateVo);
		System.out.println("-시작시간-");
		for(String s : sList) {
			System.out.println(s);
		}
		
		System.out.println("-종료시간-");
		for(String e : eList) {
			System.out.println(e);
		}
		
		int count = companyService.buskingZoneUpdate(busdateVo, sList, eList);
		
		System.out.println("버스킹존 ["+count+"]건 수정 완료");
	 
		
		return count;
	}
	
	//버스킹존 일정 삭제
	@RequestMapping(value = "/buskingZoneDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public String buskingZoneDelete(@RequestParam ("no") int date_no) {
		System.out.println("[CompanyController.buskingZoneDelete()]");
		System.out.println(date_no);
		
		int count = companyService.buskingZoneDelete(date_no);
		
		System.out.println("버스킹존 ["+count+"]건 삭제 완료");
		
		return "redirect:/Company/buskingZoneModifyForm";
		
	}
	
	//해당 공연장 버스킹 날짜 불러오기
	@ResponseBody
	@RequestMapping(value = "/buskingDateList", method = {RequestMethod.GET, RequestMethod.POST})
	public List<BusdateVo> buskingDateList(int stage_no) {
		System.out.println("[CompanyController.buskingDateList()]");
		
		System.out.println(stage_no);
		List<BusdateVo> busdateVo = companyService.buskingDateList(stage_no);
		System.out.println(busdateVo);
		return busdateVo;
	}
	
	///////////////////////////////// *버스킹존* /////////////////////////////////
	
	///////////////////////////////// 공연신청관리 /////////////////////////////////
	//공연 신청 관리 폼(수락/거절)
	@RequestMapping(value = "/applyManage", method = {RequestMethod.GET, RequestMethod.POST})
	public String applyManage(HttpSession session, Model model,
							  @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {
		System.out.println("[CompanyController.applyManage()]");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int user_no = authUser.getUser_no();
		
		List<StageVo> stageList = companyService.getStage(user_no);
		
		System.out.println(stageList);
		
		model.addAttribute("stageList", stageList);
		
		 Map<String, Object> applyMap = new HashMap<String, Object>();
		 applyMap.put("user_no", user_no);
		 applyMap.put("crtPage", crtPage);
		
		 Map<String, Object>listMap = companyService.getApplyList(applyMap);
		System.out.println(listMap);
		model.addAttribute("listMap", listMap);
		
		
		return "/Company/applyManage";
	}
	
	//공연 신청관리 필터 검색
	@RequestMapping(value = "/getFilterList", method = {RequestMethod.GET, RequestMethod.POST})
	public String getFilterList(HttpSession session, @ModelAttribute AppFilterVo appFilterVo, Model model) {
		System.out.println("[CompanyController.getFilterList()]");
		System.out.println(appFilterVo);
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int user_no = authUser.getUser_no();
		int stage_no = appFilterVo.getStage_no();
		
		List<StageVo> stageList = companyService.getStage(user_no);
		
		System.out.println(stageList);
		
		model.addAttribute("stageList", stageList);
		
		if(stage_no == 0) {appFilterVo.setUser_no(user_no);}
		
		List<BusappVo> busappVo = companyService.getFilterList(appFilterVo);
		model.addAttribute("busappVo", busappVo);
		
		return "/Company/applyManage";
	}
	
	//공연 신청관리 수락/거절 상태 변경
	@RequestMapping(value = "/statusModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String statusUpdate(@RequestParam ("arrayParam") List<Integer> aList,
							   @RequestParam ("status") String status) {
		System.out.println("[CompanyController.statusModify()]");
		System.out.println(aList);
		System.out.println(status);
		
		int count = companyService.statusModify(aList, status);
		System.out.println("공연장 ["+count+"]건 변경 완료");
		
		return"redirect:/Company/applyManage";
	}
	
	//공연 신청자 상세정보 불러오기
	@ResponseBody
	@RequestMapping(value = "/getUserInfo", method = {RequestMethod.GET, RequestMethod.POST})
	public String getUserInfo(@RequestParam ("apply_no") int apply_no) {
		System.out.println("[CompanyController.getUserInfo()]");
		System.out.println(apply_no);
		
		return companyService.getUserInfo(apply_no);
	}
	
	///////////////////////////////// *공연신청관리* /////////////////////////////////
	
	///////////////////////////////// 공연신청현황 /////////////////////////////////
	//내 공연신청 현황 불러오기(아티스트)
	@RequestMapping(value = "/applyList", method = {RequestMethod.GET, RequestMethod.POST})
	public String applyList(HttpSession session, Model model) {
		System.out.println("[CompanyController.applyList()]");
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int user_no = authUser.getUser_no();
		
		List<ApplyListVo> applyListVo = companyService.myApplyList(user_no);
		System.out.println(applyListVo);
		
		model.addAttribute("applyListVo", applyListVo);
		
		return"/MyPage/applyList";
	}
	
	//내 공연신청 현황 삭제
	@RequestMapping(value = "/applyListRemove", method = {RequestMethod.GET, RequestMethod.POST})
	public String applyListRemove(@RequestParam("no") int apply_no) {
		System.out.println("[CompanyController.applyListRemove()]");
		
		System.out.println(apply_no);
		int count = companyService.applyListRemove(apply_no);
		System.out.println("공연 신청 ["+count+"]건 삭제 완료");
		
		return"redirect:/Company/applyList";
	}
	///////////////////////////////// *공연신청현황* /////////////////////////////////
	
}
