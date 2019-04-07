package com.dean.solrBoard;

public class BoardVO {
	
	private String brdNo;			// 게시판 번호
	private String brdWriter;		// 게시판 작성자
	private String brdTitle;		// 게시판 제목
	private String brdContent;		// 게시판 내용
	private String brdDate;			// 게시판 작성일
	
	
	public String getBrdNo() {
		return brdNo;
	}
	public void setBrdNo(String brdNo) {
		this.brdNo = brdNo;
	}
	public String getBrdWriter() {
		return brdWriter;
	}
	public void setBrdWriter(String brdWriter) {
		this.brdWriter = brdWriter;
	}
	public String getBrdTitle() {
		return brdTitle;
	}
	public void setBrdTitle(String brdTitle) {
		this.brdTitle = brdTitle;
	}
	public String getBrdContent() {
		return brdContent;
	}
	public void setBrdContent(String brdContent) {
		this.brdContent = brdContent;
	}
	public String getBrdDate() {
		return brdDate;
	}
	public void setBrdDate(String brdDate) {
		this.brdDate = brdDate;
	}
	
	

}
