package com.javaex.vo;

import org.springframework.web.multipart.MultipartFile;

public class ThumbnailVo {

  // 필드
  private String id;
  private String filePath;
  private String orgName;
  private String saveName;
  private long fileSize;
  private MultipartFile imgFile;

  // 생성자
  public ThumbnailVo() {

  }

  public ThumbnailVo(String filePath, String orgName, String saveName, long fileSize) {
    super();
    this.filePath = filePath;
    this.orgName = orgName;
    this.saveName = saveName;
    this.fileSize = fileSize;
  }

  public ThumbnailVo(String id, String filePath, String orgName, String saveName, long fileSize, MultipartFile imgFile) {
    super();
    this.id = id;
    this.filePath = filePath;
    this.orgName = orgName;
    this.saveName = saveName;
    this.fileSize = fileSize;
    this.imgFile = imgFile;
  }

  // 메소드 - GS
  public String getId() {
    return id;
  }

  public void setid(String id) {
    this.id = id;
  }

  public String getFilePath() {
    return filePath;
  }

  public void setFilePath(String filePath) {
    this.filePath = filePath;
  }

  public String getOrgName() {
    return orgName;
  }

  public void setOrgName(String orgName) {
    this.orgName = orgName;
  }

  public String getSaveName() {
    return saveName;
  }

  public void setSaveName(String saveName) {
    this.saveName = saveName;
  }

  public long getFileSize() {
    return fileSize;
  }

  public void setFileSize(long fileSize) {
    this.fileSize = fileSize;
  }

  public MultipartFile getImgFile() {
    return imgFile;
  }

  public void setImgFile(MultipartFile imgFile) {
    this.imgFile = imgFile;
  }

  // 메소드 - 일반
  @Override
  public String toString() {
    return "thumbnailVo [id=" + id + ", filePath=" + filePath + ", orgName=" + orgName + ", saveName=" + saveName + ", fileSize=" + fileSize
        + ", imgFile=" + imgFile + "]";
  }

}


