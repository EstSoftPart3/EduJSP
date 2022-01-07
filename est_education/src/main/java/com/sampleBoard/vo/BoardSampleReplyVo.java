package com.sampleBoard.vo;

import java.sql.Timestamp;

import common.base.vo.BaseVo;

public class BoardSampleReplyVo extends BaseVo {

	private int replyNo;
	private int bno;
	private String replyText;
	private String replyWriter;
	private Timestamp regDate;
	
	public BoardSampleReplyVo() {    	
    	
    }

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getReplyText() {
		return replyText;
	}

	public void setReplyText(String replyText) {
		this.replyText = replyText;
	}

	public String getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public void setRegDate(Timestamp regDate) {
		this.regDate = regDate;
	}

	public BoardSampleReplyVo(int replyNo, int bno, String replyText, String replyWriter, Timestamp regDate) {
		super();
		this.replyNo = replyNo;
		this.bno = bno;
		this.replyText = replyText;
		this.replyWriter = replyWriter;
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "BoardSampleReplyVo [replyNo=" + replyNo + ", bno=" + bno + ", replyText=" + replyText + ", replyWriter="
				+ replyWriter + ", regDate=" + regDate + "]";
	}
	
	
	
}
