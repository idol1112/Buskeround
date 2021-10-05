package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	//날짜별 버스킹정보 불러오기
	public List<BusdateVo> selectBusking(BusdateVo busdateVo) {
		System.out.println("CompanyDao.selectBusking()");
		
		return sqlSession.selectList("busdate.selectBusking", busdateVo);
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
	
	///////////////////////////////// *공연장* /////////////////////////////////
}
