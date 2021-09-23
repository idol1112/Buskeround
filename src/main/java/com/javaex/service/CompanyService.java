package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.javaex.dao.CompanyDao;
import com.javaex.dao.UserDao;
import com.javaex.vo.CompanyVo;
import com.javaex.vo.UserVo;

@Service
public class CompanyService {
	
	@Autowired
	CompanyDao companyDao;
	@Autowired
	UserDao userDao;
	
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
		
		UserVo userVo = new UserVo(user_no, company_type);
		
		userDao.companyType(userVo);
		
		System.out.println(companyVo);
		return companyDao.companyInsert(companyVo);
	}
	
	//company_type 바꾸기
}
