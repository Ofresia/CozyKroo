package com.koreait.app.boards.vo;

public class SecreplyVO {

/*	BOARD_NUM NUMBER,
	   MEMBER_ID VARCHAR2(1000) NOT NULL,
	   BOARD_TITLE VARCHAR2(1000) NOT NULL,
	   BOARD_CONTENT VARCHAR2(2000) NOT NULL,
	   BOARD_VIEWNUM NUMBER DEFAULT 0,
	   BOARD_DATE DATE DEFAULT SYSDATE,
	   BOARD_LIKE NUMBER DEFAULT 0,*/
	private int reply_num;
	private String reply_content;
	private String member_id;
	private String reply_date;
	private int board_num;

	
	public SecreplyVO() {;}

	public int getReply_num() {
		return reply_num;
	}

	public void setReply_num(int reply_num) {
		this.reply_num = reply_num;
	}

	public String getReply_content() {
		return reply_content;
	}

	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getReply_date() {
		return reply_date;
	}

	public void setReply_date(String reply_date) {
		this.reply_date = reply_date;
	}

	public int getBoard_num() {
		return board_num;
	}

	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}

	

	
}
