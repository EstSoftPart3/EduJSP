package com.code.vo;

import common.base.vo.BaseVo;

public class CodeVo extends BaseVo {
	
	String codeGrpCd;       //그룹코드
	String codeComCd;       //공통코드
	String codeNm;          //코드명
	int codeSortOrder;      //코드순서
	String codeIsUse;       //사용여부
	String codeAttrValue1;  //속성값1
	String codeAttrValue2;  //속성값2
	String codeAttrValue3;  //속성값3
	String codeNote;        //메모
	
	public CodeVo() {
		super();
	}
	
	public CodeVo(String codeGrpCd, String codeComCd, String codeNm, int codeSortOrder, String codeIsUse,
			String codeAttrValue1, String codeAttrValue2, String codeAttrValue3, String codeNote) {
		super();
		this.codeGrpCd = codeGrpCd;
		this.codeComCd = codeComCd;
		this.codeNm = codeNm;
		this.codeSortOrder = codeSortOrder;
		this.codeIsUse = codeIsUse;
		this.codeAttrValue1 = codeAttrValue1;
		this.codeAttrValue2 = codeAttrValue2;
		this.codeAttrValue3 = codeAttrValue3;
		this.codeNote = codeNote;
	}
	public String getCodeGrpCd() {
		return codeGrpCd;
	}
	public void setCodeGrpCd(String codeGrpCd) {
		this.codeGrpCd = codeGrpCd;
	}
	public String getCodeComCd() {
		return codeComCd;
	}
	public void setCodeComCd(String codeComCd) {
		this.codeComCd = codeComCd;
	}
	public String getCodeNm() {
		return codeNm;
	}
	public void setCodeNm(String codeNm) {
		this.codeNm = codeNm;
	}
	public int getCodeSortOrder() {
		return codeSortOrder;
	}
	public void setCodeSortOrder(int codeSortOrder) {
		this.codeSortOrder = codeSortOrder;
	}
	public String getCodeIsUse() {
		return codeIsUse;
	}
	public void setCodeIsUse(String codeIsUse) {
		this.codeIsUse = codeIsUse;
	}
	public String getCodeAttrValue1() {
		return codeAttrValue1;
	}
	public void setCodeAttrValue1(String codeAttrValue1) {
		this.codeAttrValue1 = codeAttrValue1;
	}
	public String getCodeAttrValue2() {
		return codeAttrValue2;
	}
	public void setCodeAttrValue2(String codeAttrValue2) {
		this.codeAttrValue2 = codeAttrValue2;
	}
	public String getCodeAttrValue3() {
		return codeAttrValue3;
	}
	public void setCodeAttrValue3(String codeAttrValue3) {
		this.codeAttrValue3 = codeAttrValue3;
	}
	public String getCodeNote() {
		return codeNote;
	}
	public void setCodeNote(String codeNote) {
		this.codeNote = codeNote;
	}
	
	@Override
	public String toString() {
		return "CodeVo [codeGrpCd=" + codeGrpCd + ", codeComCd=" + codeComCd + ", codeNm=" + codeNm + ", codeSortOrder="
				+ codeSortOrder + ", codeIsUse=" + codeIsUse + ", codeAttrValue1=" + codeAttrValue1
				+ ", codeAttrValue2=" + codeAttrValue2 + ", codeAttrValue3=" + codeAttrValue3 + ", codeNote=" + codeNote
				+ "]";
	}
	
}
