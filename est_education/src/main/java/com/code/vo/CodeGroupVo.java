package com.code.vo;

import common.base.vo.BaseVo;

public class CodeGroupVo extends BaseVo {
	String grpCd;     //그룹코드
	String grpNm;     //그룹명
	int grpSortOrder; // 코드순서
	String grpIsUse;  //사용여부
	String grpNote;   //비고
	
	public CodeGroupVo() {
		super();
	}
	
	public CodeGroupVo(String grpCd, String grpNm, int grpSortOrder, String grpIsUse, String grpNote) {
		super();
		this.grpCd = grpCd;
		this.grpNm = grpNm;
		this.grpSortOrder = grpSortOrder;
		this.grpIsUse = grpIsUse;
		this.grpNote = grpNote;
	}
	
	public String getGrpCd() {
		return grpCd;
	}
	public void setGrpCd(String grpCd) {
		this.grpCd = grpCd;
	}
	public String getGrpNm() {
		return grpNm;
	}
	public void setGrpNm(String grpNm) {
		this.grpNm = grpNm;
	}
	public int getGrpSortOrder() {
		return grpSortOrder;
	}
	public void setGrpSortOrder(int grpSortOrder) {
		this.grpSortOrder = grpSortOrder;
	}
	public String getGrpIsUse() {
		return grpIsUse;
	}
	public void setGrpIsUse(String grpIsUse) {
		this.grpIsUse = grpIsUse;
	}
	public String getGrpNote() {
		return grpNote;
	}
	public void setGrpNote(String grpNote) {
		this.grpNote = grpNote;
	}
	
	@Override
	public String toString() {
		return "CodeVo [grpCd=" + grpCd + ", grpNm=" + grpNm + ", grpSortOrder=" + grpSortOrder + ", grpIsUse="
				+ grpIsUse + ", grpNote=" + grpNote + "]";
	}
}
