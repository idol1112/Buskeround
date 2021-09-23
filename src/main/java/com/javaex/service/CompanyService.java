package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.CompanyDao;
import com.javaex.vo.CompanyVo;

@Service
public class CompanyService {
	
	@Autowired
	CompanyDao companyDao;
	
	public int companyInsert(CompanyVo companyVo) {
		System.out.println("CompanyService.companyInsert()");
		
		return 0;
	}

}
