package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import com.javaex.dao.BlogDao2;
import com.javaex.vo.PostVo;

@Service
public class BlogService2 {

  @Autowired
  BlogDao2 blogDao2;

  /*** 공연 시작 ***/
  public int live_start(PostVo postVo) {

    blogDao2.live_on(postVo);

    if (postVo.getP_img().equals("1")) {
      postVo.setP_img("noimg.png");
      return blogDao2.live_start(postVo);

    } else {
      return blogDao2.live_start(postVo);
    }


  }

  /*** 공연 종료 ***/
  public int live_end(int user_no) {

    blogDao2.live_off(user_no);
    return blogDao2.live_end(user_no);

  }

  /*** 타임라인(메인) 조회 ***/
  public List<PostVo> timeline_main(int user_no) {

    return blogDao2.timeline_main(user_no);
  }

  /*** 타임라인 조회 ***/
  public List<PostVo> timeline(Map<String, Object> date_map) {

    return blogDao2.timeline(date_map);

  }

  /*** 썸네일 등록 ***/
  public void restore(PostVo postVo, MultipartFile file) {

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

    postVo.setP_img(logoFile);

    blogDao2.restore(postVo);

  }

}
