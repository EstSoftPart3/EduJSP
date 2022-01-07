package com.erp.admin.system.code.vo;

import java.sql.Timestamp;

import common.base.vo.BaseVo;

public class GroupCodeVo extends BaseVo{

	String grpCd;			//그룹 코드
	int compnySq;			//회사 순번
	String grpCdNm;			//그룹 코드 명
	int grpCdOrder;		//그룹 코드 순서
	String grpCdUseWhthr;	//그룹 코드 사용 여부
	Timestamp grpCdEnrlmDt;		//그룹 코드 등록 일자
	Timestamp grpCdCrrctnDt;		//그룹 코드 수정 일자
	int grpCdCrrctnUsrSq;	//그룹 코드 수정 사용자 순번
	String grpCdNote;		//그룹 코드 비고
	
	public GroupCodeVo() {
		
	}

	public GroupCodeVo(String grpCd, int compnySq, String grpCdNm, int grpCdOrder, String grpCdUseWhthr,
			Timestamp grpCdEnrlmDt, Timestamp grpCdCrrctnDt, int grpCdCrrctnUsrSq, String grpCdNote) {
		super();
		this.grpCd = grpCd;
		this.compnySq = compnySq;
		this.grpCdNm = grpCdNm;
		this.grpCdOrder = grpCdOrder;
		this.grpCdUseWhthr = grpCdUseWhthr;
		this.grpCdEnrlmDt = grpCdEnrlmDt;
		this.grpCdCrrctnDt = grpCdCrrctnDt;
		this.grpCdCrrctnUsrSq = grpCdCrrctnUsrSq;
		this.grpCdNote = grpCdNote;
	}

	public String getGrpCd() {
		return grpCd;
	}

	public void setGrpCd(String grpCd) {
		this.grpCd = grpCd;
	}

	public int getCompnySq() {
		return compnySq;
	}

	public void setCompnySq(int compnySq) {
		this.compnySq = compnySq;
	}

	public String getGrpCdNm() {
		return grpCdNm;
	}

	public void setGrpCdNm(String grpCdNm) {
		this.grpCdNm = grpCdNm;
	}

	public int getGrpCdOrder() {
		return grpCdOrder;
	}

	public void setGrpCdOrder(int grpCdOrder) {
		this.grpCdOrder = grpCdOrder;
	}

	public String getGrpCdUseWhthr() {
		return grpCdUseWhthr;
	}

	public void setGrpCdUseWhthr(String grpCdUseWhthr) {
		this.grpCdUseWhthr = grpCdUseWhthr;
	}

	public Timestamp getGrpCdEnrlmDt() {
		return grpCdEnrlmDt;
	}

	public void setGrpCdEnrlmDt(Timestamp grpCdEnrlmDt) {
		this.grpCdEnrlmDt = grpCdEnrlmDt;
	}

	public Timestamp getGrpCdCrrctnDt() {
		return grpCdCrrctnDt;
	}

	public void setGrpCdCrrctnDt(Timestamp grpCdCrrctnDt) {
		this.grpCdCrrctnDt = grpCdCrrctnDt;
	}

	public int getGrpCdCrrctnUsrSq() {
		return grpCdCrrctnUsrSq;
	}

	public void setGrpCdCrrctnUsrSq(int grpCdCrrctnUsrSq) {
		this.grpCdCrrctnUsrSq = grpCdCrrctnUsrSq;
	}

	public String getGrpCdNote() {
		return grpCdNote;
	}

	public void setGrpCdNote(String grpCdNote) {
		this.grpCdNote = grpCdNote;
	}

	@Override
	public String toString() {
		return "GroupCodeVo [grpCd=" + grpCd + ", compnySq=" + compnySq + ", grpCdNm=" + grpCdNm + ", grpCdOrder="
				+ grpCdOrder + ", grpCdUseWhthr=" + grpCdUseWhthr + ", grpCdEnrlmDt=" + grpCdEnrlmDt
				+ ", grpCdCrrctnDt=" + grpCdCrrctnDt + ", grpCdCrrctnUsrSq=" + grpCdCrrctnUsrSq + ", grpCdNote="
				+ grpCdNote + "]";
	}
	
	
	
	
	
	
	
	
}
