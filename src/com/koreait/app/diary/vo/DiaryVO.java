package com.koreait.app.diary.vo;

public class DiaryVO {
//	 DIARY_NUM NUMBER,
//	   DIARY_NAME VARCHAR2(2000),
//	   DIARY_DETAIL VARCHAR2(2000),
//	   DIARY_DATE DATE,
//	   DIARY_OPEN NUMBER(1),
//	   DIARY_LIKE NUMBER,
//	   DIARY_VIEWNUM NUMBER,
//	   FILE_NAME VARCHAR2(2000),
//	   MEMBER_NUM NUMBER(10),

	int diary_num;
	String diary_name;
	String diary_dtail;
	String diary_date;
	int diary_open;
	int diary_like;
	int diary_viewNum;
	String file_name;
	int member_num;
	
	public DiaryVO() {;}

	public int getDiary_num() {
		return diary_num;
	}

	public void setDiary_num(int diary_num) {
		this.diary_num = diary_num;
	}

	public String getDiary_name() {
		return diary_name;
	}

	public void setDiary_name(String diary_name) {
		this.diary_name = diary_name;
	}

	public String getDiary_dtail() {
		return diary_dtail;
	}

	public void setDiary_dtail(String diary_dtail) {
		this.diary_dtail = diary_dtail;
	}

	public String getDiary_date() {
		return diary_date;
	}

	public void setDiary_date(String diary_date) {
		this.diary_date = diary_date;
	}

	public int getDiary_open() {
		return diary_open;
	}

	public void setDiary_open(int diary_open) {
		this.diary_open = diary_open;
	}

	public int getDiary_like() {
		return diary_like;
	}

	public void setDiary_like(int diary_like) {
		this.diary_like = diary_like;
	}

	public int getDiary_viewNum() {
		return diary_viewNum;
	}

	public void setDiary_viewNum(int diary_viewNum) {
		this.diary_viewNum = diary_viewNum;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public int getMember_num() {
		return member_num;
	}

	public void setMember_num(int member_num) {
		this.member_num = member_num;
	}
	
	
}
