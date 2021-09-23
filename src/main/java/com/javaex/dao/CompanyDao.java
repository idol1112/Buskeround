package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CompanyVo;

@Repository
public class CompanyDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public int companyInsert(CompanyVo companyVo) {
		System.out.println("CompanyDao.companyInsert()");
		
		return sqlSession.insert("company.insertCompanyInfo", companyVo);
	}

}
