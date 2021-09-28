package com.javaex.service;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
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
    return blogDao2.live_start(postVo);

  }

  /*** 공연 종료 ***/
  public void live_end(int user_no) {

    blogDao2.live_end(user_no);
    blogDao2.live_off(user_no);

  }

  /*** 타임라인(메인) 조회 ***/
  public List<PostVo> timeline_main(int user_no) {

    return blogDao2.timeline_main(user_no);
  }

  /*** 파일 업로드 처리 ***/
  public void restore(MultipartFile file) {
    System.out.println("[사용 메소드: GalleryService.restore()]");

    // 원본 파일명
    String orgName = file.getOriginalFilename();

    // 확장자
    String exName = orgName.substring(orgName.lastIndexOf("."));

    // 저장 파일명
    String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;

    // 파일 저장 위치
    String filePath = "E:\\javaStudy\\upload\\" + saveName;


    // 1. 파일을 서버의 하드디스크에 저장
    try {
      byte[] fileData = file.getBytes();
      OutputStream out = new FileOutputStream(filePath);
      BufferedOutputStream bos = new BufferedOutputStream(out);

      bos.write(fileData);
      bos.close();

    } catch (IOException e) {

      e.printStackTrace();
    }

  }

}
