package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.CompanyDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.AppFilterVo;
import com.javaex.vo.ApplyListVo;
import com.javaex.vo.BusappVo;
import com.javaex.vo.BusdateVo;
import com.javaex.vo.BustimeVo;
import com.javaex.vo.CompanyVo;
import com.javaex.vo.StageVo;
import com.javaex.vo.UserVo;

@Service
public class CompanyService {
	
	@Autowired
	CompanyDao companyDao;
	@Autowired
	UserDao userDao;
	///////////////////////////////// 제휴사 /////////////////////////////////	
	//제휴사 등록
	public int companyInsert(Map<String, Object> companyInsertMap) {
		System.out.println("CompanyService.companyInsert()");
		
		MultipartFile file = (MultipartFile) companyInsertMap.get("com_img");
		int user_no = (int)companyInsertMap.get("user_no");
		String company_type = (String)companyInsertMap.get("company_type");
		String com_name = (String)companyInsertMap.get("com_name");
		String address = (String)companyInsertMap.get("address");
		String com_number = (String)companyInsertMap.get("com_number");
		String ceo_name = (String)companyInsertMap.get("ceo_name");
		String business_number = (String)companyInsertMap.get("business_number");
		double latitude = (double)companyInsertMap.get("latitude");
		double longitude = (double)companyInsertMap.get("longitude");

		String saveDir = "C:\\javaStudy\\upload";

		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName:" + exName);
		
		// 저장파일이름(관리 떄문에 겹치지 않는 새이름 부여)
		String logoFile = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("saveName:" + logoFile);

		// 파일패스
		String filePath = saveDir + "\\" + logoFile;
		System.out.println("filePath:" + filePath);
		
		// 파일 서버하드디스크에 저장
		try {

			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		CompanyVo companyVo = new CompanyVo(user_no, logoFile, com_name, address, com_number, ceo_name, business_number, latitude, longitude);
		
		UserVo userVo = new UserVo(user_no, company_type);
		
		userDao.companyType(userVo);
		
		System.out.println(companyVo);
		return companyDao.companyInsert(companyVo);
	}
	
	//제휴사 정보 불러오기
	public CompanyVo selectCompany(int user_no) {
		System.out.println("CompanyService.selectCompany()");
		
		return companyDao.selectCompany(user_no);
	}
	
	//제휴사 정보 수정
	public int companyModify(Map<String, Object> companyInsertMap) {
		System.out.println("CompanyService.companyModify()");
		
		MultipartFile file = (MultipartFile) companyInsertMap.get("com_img");
		int user_no = (int)companyInsertMap.get("user_no");
		String com_name = (String)companyInsertMap.get("com_name");
		String address = (String)companyInsertMap.get("address");
		String com_number = (String)companyInsertMap.get("com_number");
		String ceo_name = (String)companyInsertMap.get("ceo_name");
		String business_number = (String)companyInsertMap.get("business_number");

		String saveDir = "C:\\javaStudy\\upload";

		// 확장자
		String exName = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println("exName:" + exName);
		
		// 저장파일이름(관리 떄문에 겹치지 않는 새이름 부여)
		String logoFile = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
		System.out.println("saveName:" + logoFile);

		// 파일패스
		String filePath = saveDir + "\\" + logoFile;
		System.out.println("filePath:" + filePath);
		
		// 파일 서버하드디스크에 저장
		try {

			byte[] fileData = file.getBytes();
			OutputStream out = new FileOutputStream(filePath);
			BufferedOutputStream bout = new BufferedOutputStream(out);

			bout.write(fileData);
			bout.close();

		} catch (Exception e) {
			// TODO: handle exception
		}
		
		CompanyVo companyVo = new CompanyVo(user_no, logoFile, com_name, address, com_number, ceo_name, business_number);
		
		return companyDao.companyUpdate(companyVo);
	}
	
	//제휴사 정보 수정(이미지 변경x)
	public int companyModify2(CompanyVo companyVo) {
		System.out.println("CompanyService.companyModify2()");
		
		return companyDao.companyUpdate(companyVo);
	}
	///////////////////////////////// *제휴사* /////////////////////////////////
	
	///////////////////////////////// 공연장 /////////////////////////////////
	//공연장 리스트 불러오기
	public List<StageVo> getStage(int user_no) {
		System.out.println("CompanyService.getStage()");
		
		return companyDao.selectStage(user_no);
	}
	
	//공연장 리스트 하나 불러오기
	public StageVo getStageOne(int stage_no) {
		System.out.println("CompanyService.getStageOne()");
		
		return companyDao.selectStageOne(stage_no);
	}
	
	//공연장 등록
	public int stageInsert(StageVo stageVo) {
		System.out.println("CompanyService.stageInsert()");
		
		return companyDao.stageInsert(stageVo);
	}
	
	//공연장 수정
	public int stageModify(StageVo stageVo) {
		System.out.println("CompanyService.stageModify()");
		
		return companyDao.stageUpdate(stageVo);
	}
	
	//공연장 삭제
	public int stageRemove(int stage_no) {
		System.out.println("CompanyService.stageRemove()");
		
		return companyDao.stageDelete(stage_no);
	}
	
	///////////////////////////////// *공연장* /////////////////////////////////
	
	///////////////////////////////// 버스킹존 /////////////////////////////////
	//버스킹존 등록
	public int buskingZoneInsert(BusdateVo busdateVo, List<String> sList, List<String> eList) {
		System.out.println("CompanyService.buskingZoneInsert()");
		
		System.out.println(busdateVo);
		companyDao.busdateInsertKey(busdateVo);
		int no = busdateVo.getDate_no();
		String date = busdateVo.getBus_date();
		//공연시간 리스트에 차곡차곡 데이터 넣어주기
		List<BustimeVo> tList = new ArrayList<>();
		for(int i=0; i < sList.size(); i++) {
			
			int date_no = no;
			String start_time = (date+" "+sList.get(i));
			String end_time = (date+" "+eList.get(i));
			
			tList.add(new BustimeVo(date_no, start_time, end_time));		
		}
		for(BustimeVo o : tList) {
			System.out.println(o);
		}
		
		return companyDao.bustimeInsert(tList);
	}
	
	//버스킹존 장소/날짜별 리스트 불러오기
	public List<BusdateVo> getBuskingZone(BusdateVo busdateVo) {
		System.out.println("CompanyService.getBuskingZone()");
		
		return companyDao.selectBusking(busdateVo);
	}
	
	//버스킹존 장소/날짜별 일정 불러오기
	public List<BusdateVo> getBusPlan(BusdateVo busdateVo) {
		System.out.println("CompanyService.getBusPlan()");
		
		return companyDao.selectBusPlan(busdateVo);
	}
	
	//버스킹존 수정
	public int buskingZoneUpdate(BusdateVo busdateVo, List<String> sList, List<String> eList) {
		System.out.println("CompanyService.buskingZoneUpdate()");
		
		int date_no = busdateVo.getDate_no();
		System.out.println(date_no);
		
		companyDao.buskingZoneDelete(date_no);
		
		
		System.out.println(busdateVo);
		
		companyDao.busdateInsertKey(busdateVo);
		int no = busdateVo.getDate_no();
		String date = busdateVo.getBus_date();
		//공연시간 리스트에 차곡차곡 데이터 넣어주기
		List<BustimeVo> tList = new ArrayList<>();
		for(int i=0; i < sList.size(); i++) {

			String start_time = (date+" "+sList.get(i));
			String end_time = (date+" "+eList.get(i));
			
			tList.add(new BustimeVo(no, start_time, end_time));		
		}
		for(BustimeVo o : tList) {
			System.out.println(o);
		}
		
		return companyDao.bustimeInsert(tList);
		
	}
	
	//버스킹존 삭제
	public int buskingZoneDelete(int date_no) {
		System.out.println("CompanyService.buskingZoneDelete()");
		
		return companyDao.buskingZoneDelete(date_no);
	}
	
	//해당 공연장 버스킹 날짜 불러오기
	public List<BusdateVo> buskingDateList(int stage_no) {
		System.out.println("CompanyService.buskingDateList()");
		
		return companyDao.selectBusdateList(stage_no);
	}
	
	///////////////////////////////// *버스킹존* /////////////////////////////////
	
	///////////////////////////////// 공연신청관리 /////////////////////////////////
	//공연신청리스트 불러오기
	public Map<String, Object> getApplyList(Map<String, Object> applyMap) {
		System.out.println("CompanyService.getApplyList()");
		
		//맵에서 crtPage 꺼내서(int)형으로 담음 (object형이니까 명시적 변환)
		int crtPage = (int)applyMap.get("crtPage");
	    
		//예상) crtPage의 값이 0 초과가 아니면 crtPage값을 1로 초기화
	    crtPage = (crtPage > 0) ? crtPage : (crtPage=1);
	    
	    //한 페이지 개수 선언
	    int listCnt = 10;
	    
	    //시작번호 계산하기
	  	int startRnum = ((crtPage-1)*listCnt+1);
	  	
	    //끝번 계산하기
	  	int endRnum = (crtPage*listCnt);
	  	applyMap.put("startRnum", startRnum);
	  	applyMap.put("endRnum", endRnum);
		
	  	List<BusappVo> applyList = companyDao.selectApplyList(applyMap);
	  	System.out.println("리스트 가져오기 성공!: " + applyList);
	  	
		////////////////////////////////////////////////
		// 페이징 게산
		////////////////////////////////////////////////
	  	
	  	//전체 리스트 갯수
		int totalCount = companyDao.selectTotalCnt(applyMap);
		System.out.println(totalCount);
		
		//페이지당 버튼 갯수
		int pageBtnCount = 5;
		
		//마지막 버튼 번호
		int endPageBtnNo = (int) (Math.ceil((crtPage/(double)pageBtnCount)) * pageBtnCount);
		
		//시작 버튼 번호
		int startPageBtnNo = endPageBtnNo - pageBtnCount + 1;
		
		//다음 화살표 표현 유무
		boolean next = false;
		if((endPageBtnNo * listCnt) < totalCount){
			next = true;
		} else {
			//다음 화살표 버튼이 없을때 endPageBtnNo를 다시 계산해야된다
			//전체글갯수 / 한폐이지의 글갯수
			
			endPageBtnNo = (int) Math.ceil(totalCount/(double)listCnt);
		}
		
		//이전 화살표 표현 유무
		boolean prev = false;
		if((startPageBtnNo) != 1) {
			prev = true;
		}
		
		Map<String, Object> listMap = new HashMap<String, Object>();
		listMap.put("applyList", applyList);
		listMap.put("prev", prev);
		listMap.put("startPageBtnNo", startPageBtnNo);
		listMap.put("endPageBtnNo", endPageBtnNo);
		listMap.put("next", next);
		
		return listMap;
	}
	
	//공연신청리스트 필터 검색
	public List<BusappVo> getFilterList(AppFilterVo appFilterVo) {
		System.out.println("CompanyService.getFilterList()");
		List<BusappVo>busappVo = new ArrayList<>();
		
		int stage_no = appFilterVo.getStage_no();
		if(stage_no == 0) {
			busappVo = companyDao.selectFilterListAll(appFilterVo);
		}else {
			busappVo = companyDao.selectFilterList(appFilterVo);
		}
		
		return busappVo;
	}
	
	//공연 신청자 (수락/거절) 상태 변경
	public int statusModify(List<Integer> aList, String status) {
		System.out.println("CompanyService.statusModify()");
		int count = 0;
		if(status.equals("1")) {
			count = companyDao.statusAccept(aList);
		}else if(status.equals("2")) {
			count = companyDao.statusRefuse(aList);
		}
		
		
		return count;
	}
	
	//공연 신청자 상세정보 불러오기
	
	public String getUserInfo(int apply_no) {
		System.out.println("CompanyService.getUserInfo()");
		
		return companyDao.selectUserInfo(apply_no);
	}
	
	///////////////////////////////// *공연신청관리* /////////////////////////////////
	
	///////////////////////////////// 공연신청현황 /////////////////////////////////
	//내 공연신청 현황 불러오기(아티스트)
	public List<ApplyListVo> myApplyList(int user_no) {
		System.out.println("CompanyService.myApplyList()");
		
		return companyDao.selectMyApplyList(user_no);
	}
	
	//내 공연신청 현황 삭제
	public int applyListRemove(int apply_no) {
		System.out.println("CompanyService.myApplyList()");
		
		return companyDao.applyListDelete(apply_no);
	}
	
	///////////////////////////////// *공연신청현황* /////////////////////////////////
}
