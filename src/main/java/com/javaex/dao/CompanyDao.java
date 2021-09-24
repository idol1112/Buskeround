package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CompanyVo;

@Repository
public class CompanyDao {
	
	@Autowired
	SqlSession sqlSession;
	
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
}
