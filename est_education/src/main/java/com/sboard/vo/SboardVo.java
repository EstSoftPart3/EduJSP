package com.sboard.vo;


import java.sql.Timestamp;

import common.base.vo.BaseVo;

public class SboardVo extends BaseVo {
	
	int bpNo;
	String bpTtl;
	String bpCtt;
	String bpRgl;
	Timestamp bpRgtd;
	Timestamp bpMdfd;
	
	public int getBpNo() {
		return bpNo;
	}
	public void setBpNo(int bpNo) {
		this.bpNo = bpNo;
	}
	public String getBpTtl() {
		return bpTtl;
	}
	public void setBpTtl(String bpTtl) {
		this.bpTtl = bpTtl;
	}
	public String getBpCtt() {
		return bpCtt;
	}
	public void setBpCtt(String bpCtt) {
		this.bpCtt = bpCtt;
	}
	public String getBpRgl() {
		return bpRgl;
	}
	public void setBpRgl(String bpRgl) {
		this.bpRgl = bpRgl;
	}
	public Timestamp getBpRgtd() {
		return bpRgtd;
	}
	public void setBpRgtd(Timestamp bpRgtd) {
		this.bpRgtd = bpRgtd;
	}
	public Timestamp getBpMdfd() {
		return bpMdfd;
	}
	public void setBpMdfd(Timestamp bpMdfd) {
		this.bpMdfd = bpMdfd;
	}
	
	
	

}
