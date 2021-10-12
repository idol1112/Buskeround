package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.AppFilterVo;
import com.javaex.vo.ApplyListVo;
import com.javaex.vo.BusappVo;
import com.javaex.vo.BusdateVo;
import com.javaex.vo.BustimeVo;
import com.javaex.vo.CompanyVo;
import com.javaex.vo.StageVo;

@Repository
public class CompanyDao {
	
	@Autowired
	SqlSession sqlSession;
	
	///////////////////////////////// 제휴사 /////////////////////////////////
	//제휴사 등록
	public int companyInsert(CompanyVo companyVo) {
		System.out.println("CompanyDao.companyInsert()");
		
		return sqlSession.insert("company.insertCompanyInfo", companyVo);
	}
	
	//제휴사 정보 불러오기
	public CompanyVo selectCompany(int user_no) {
		System.out.println("CompanyDao.selectCompany()");
		
		return sqlSession.selectOne("company.selectCompany", user_no);
	}
	
	//제휴사 정보 수정
	public int companyUpdate(CompanyVo companyVo) {
		System.out.println("CompanyDao.companyModify()");
		
		return sqlSession.update("company.companyUpdate", companyVo);
	}
	///////////////////////////////// *제휴사* /////////////////////////////////
	
	///////////////////////////////// 공연장 /////////////////////////////////
	//공연장 리스트 불러오기
	public List<StageVo> selectStage(int user_no) {
		System.out.println("CompanyDao.selectStage()");
		
		return sqlSession.selectList("stage.selectStage", user_no);
	}
	
	//공연장 리스트 하나 불러오기
	public StageVo selectStageOne(int stage_no) {
		System.out.println("CompanyDao.selectStageOne()");
		
		return sqlSession.selectOne("stage.selectStageOne", stage_no);
	}
	
	//공연장 등록
	public int stageInsert(StageVo stageVo) {
		System.out.println("CompanyDao.stageInsert()");
		
		return sqlSession.insert("stage.stageInsert", stageVo);
	}
	
	//공연장 수정
	public int stageUpdate(StageVo stageVo) {
		System.out.println("CompanyDao.stageUpdate()");
		
		return sqlSession.update("stage.stageUpdate", stageVo);
	}
	
	//공연장 삭제
	public int stageDelete(int stage_no) {
		System.out.println("CompanyDao.stageDelete()");
		
		return sqlSession.delete("stage.stageDelete", stage_no);
	}

	///////////////////////////////// *공연장* /////////////////////////////////
	
	///////////////////////////////// 버스킹존 /////////////////////////////////
	//버스킹존(날짜)등록 키값 가져오기
	public int busdateInsertKey(BusdateVo busdateVo) {
		System.out.println("CompanyDao.busdateInsertKey()");
		
		return sqlSession.insert("busdate.busdateInsert", busdateVo);
	}
	
	//버스킹존(시간)등록
	public int bustimeInsert(List<BustimeVo> tList) {
		System.out.println("CompanyDao.busdateInsert()");
		
		return sqlSession.insert("bustime.bustimeInsert", tList);
	}
	
	//버스킹존 장소/날짜별 리스트 불러오기
	public List<BusdateVo> selectBusking(BusdateVo busdateVo) {
		System.out.println("CompanyDao.selectBusking()");
		
		return sqlSession.selectList("busdate.selectBusking", busdateVo);
	}
	
	//버스킹존 장소/날짜별 일정 불러오기
	public List<BusdateVo> selectBusPlan(BusdateVo busdateVo) {
		System.out.println("CompanyDao.selectBusPlan()");
		
		return sqlSession.selectList("busdate.selectBusPlan", busdateVo);
	}
	
	//버스킹존 삭제
	public int buskingZoneDelete(int date_no) {
		System.out.println("CompanyDao.buskingZoneDelete()");
		
		return sqlSession.delete("busdate.buskingDelete", date_no);
	}
	
	//해당 공연장 버스킹 날짜 불러오기
	public List<BusdateVo> selectBusdateList(int stage_no) {
		System.out.println("CompanyDao.selectBusdateList()");
		
		return sqlSession.selectList("busdate.selectBusdateList", stage_no);
	}
	
	///////////////////////////////// *버스킹존* /////////////////////////////////
	
	///////////////////////////////// 공연신청관리 /////////////////////////////////
	//제휴사별 전체 공연 리스트 불러오기
	public List<BusappVo> selectApplyList(Map<String, Object> applyMap) {
		System.out.println("CompanyDao.selectApplyList()");
		
		return sqlSession.selectList("busapp.selectApplyList", applyMap);
	}
	
	//제휴사별 전체 공연 리스트 갯수 불러오기
	public int selectTotalCnt(Map<String, Object> applyMap) {
		System.out.println("CompanyDao.selectTotalCnt()");
		
		return sqlSession.selectOne("busapp.selectTotalCnt", applyMap);
	}
	
	//전체 공연장 날짜~날짜 검색
	public List<BusappVo> selectFilterListAll(AppFilterVo appFilterVo) {
		System.out.println("CompanyDao.selectFilterListAll()");
		
		return sqlSession.selectList("busapp.selectFilterListAll", appFilterVo);
	}
	
	//특정 공연장 날짜~날짜 검색
	public List<BusappVo> selectFilterList(AppFilterVo appFilterVo) {
		System.out.println("CompanyDao.selectFilterList()");
		
		return sqlSession.selectList("busapp.selectFilterList", appFilterVo);
	}
	
	//공연 신청 수락
	public int statusAccept(List<Integer> aList) {
		System.out.println("CompanyDao.statusAccept()");
		
		return sqlSession.update("busapp.statusAccept", aList);
	}
	
	//공연 신청 거절
	public int statusRefuse(List<Integer> aList) {
		System.out.println("CompanyDao.statusRefuse()");
		
		return sqlSession.update("busapp.statusRefuse", aList);
	}
	
	//
	public String selectUserInfo(int apply_no) {
		System.out.println("CompanyDao.selectUserInfo()");
		
		return sqlSession.selectOne("busapp.selectUserInfo", apply_no);
	}
		
	///////////////////////////////// *공연신청관리* /////////////////////////////////
	
	///////////////////////////////// 공연신청현황 /////////////////////////////////
	//내 공연신청 현황 불러오기(아티스트)
	public List<ApplyListVo> selectMyApplyList(int user_no) {
		System.out.println("CompanyDao.myApplyList()");
	
		return sqlSession.selectList("busapp.selectMyApplyList", user_no);
	}
	
	//내 공연신청 현황 삭제
	public int applyListDelete(int apply_no) {
		System.out.println("CompanyService.myApplyList()");
		
		return sqlSession.delete("busapp.applyListDelete", apply_no);
	}
	
	///////////////////////////////// *공연신청현황* /////////////////////////////////
}
