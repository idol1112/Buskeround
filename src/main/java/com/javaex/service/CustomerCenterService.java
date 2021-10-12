package com.javaex.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.CustomerCenterDao;
import com.javaex.vo.CustomerCenterVo;

@Service
public class CustomerCenterService {

	  @Autowired
	  CustomerCenterDao customerCenterDao;
	  
	  // Notice List (공지사항 리스트 가져오기)
	  public Map<String, Object> noticeList(Map<String, Object> searchvalue) {
		    System.out.println("CustomerCenterService.noticeList()");
		    
		    int crtPage = (int) searchvalue.get("crtPage");
		    
		    crtPage = (crtPage > 0) ? crtPage : (crtPage=1);
		    
		    int listCnt = 10;
		    
		    //시작번호 계산하기
		  	int startRnum = ((crtPage-1)*listCnt+1);
		  	
		    //끝번 계산하기
		  	int endRnum = (crtPage*listCnt);
		  	searchvalue.put("startRnum", startRnum);
		  	searchvalue.put("endRnum", endRnum);
		  	
		  	List<CustomerCenterVo> noticeList = customerCenterDao.noticeList(searchvalue);
		  	
			////////////////////////////////////////////////
			// 페이징 게산
			////////////////////////////////////////////////
		  	
			//전체글 갯수
			int totalCount = customerCenterDao.selectTotalCnt(searchvalue);
			
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
			listMap.put("noticeList", noticeList);
			listMap.put("prev", prev);
			listMap.put("startPageBtnNo", startPageBtnNo);
			listMap.put("endPageBtnNo", endPageBtnNo);
			listMap.put("next", next);

		    return listMap;
	  }
}
