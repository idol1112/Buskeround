package com.javaex.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.CustomerCenterVo;

@Repository
public class CustomerCenterDao {
	
	@Autowired
	SqlSession sqlSession;
	
	//카운트
	public int selectTotalCnt(Map<String, Object> searchvalue) {
		System.out.println("CustomerCenterDao.selectTotalCnt()");
		
		return sqlSession.selectOne("customercenter.selectTotalCnt", searchvalue);
	}
	
	public List<CustomerCenterVo> noticeList(Map<String, Object> searchvalue) {
		System.out.println("CustomerCenterDao.noticeList()");
		
		return sqlSession.selectList("customercenter.noticeList", searchvalue);
	}

}
