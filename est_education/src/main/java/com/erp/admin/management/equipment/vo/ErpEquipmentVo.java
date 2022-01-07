package com.erp.admin.management.equipment.vo;

import java.util.Arrays;

import org.apache.log4j.Logger;

import common.base.vo.BaseVo;

public class ErpEquipmentVo extends BaseVo {
	int eqpmntSq; //장비순번
	String eqpmntMngNum; //장비 관리 번호
	String eqpmntBrnd; //장비 브랜드
	String eqpmntMdl; //장비 모델 명
	String eqpmntSrl; //장비 시리얼 번호
	String eqpmntStsCd; //장비 상태 코드
	String eqpmntTypCd; //장비 유형 코드
	String eqpmntIsUse; //장비 대여 정보
	String eqpmntInfo; //장비 정보
	String eqpmntRgstrDate; //장비 등록일
	String[] eqpmntTcdArray; //Ajax 사용해서 비동기 통신할때 선택된 장비 목록을 받아온다.
	
	int count;
	
	int lntlSq; //렌탈  SQ
	String mbrSq; //직원 번호
	String mbrNm; //직원 이름
	String lntlStrtDate; //렌탈 시작일
	String lntlRtrnDate; //렌탈 종료일
	String lntlMemo; //렌탈 종료일
	
	int curPage;
	int page;
	int start;
	int end;
	
	
	
	public ErpEquipmentVo() {
		Logger log = Logger.getLogger(this.getClass());
	}
	
	public String getMbrNm() {
		return mbrNm;
	}


	public void setMbrNm(String mbrNm) {
		this.mbrNm = mbrNm;
	}
	
	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLntlSq() {
		return lntlSq;
	}

	public void setLntlSq(int lntlSq) {
		this.lntlSq = lntlSq;
	}

	public String getMbrSq() {
		return mbrSq;
	}

	public void setMbrSq(String mbrSq) {
		this.mbrSq = mbrSq;
	}
	
	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public String getLntlStrtDate() {
		return lntlStrtDate;
	}

	public void setLntlStrtDate(String lntlStrtDate) {
		this.lntlStrtDate = lntlStrtDate;
	}

	public String getLntlRtrnDate() {
		return lntlRtrnDate;
	}

	public void setLntlRtrnDate(String lntlRtrnDate) {
		this.lntlRtrnDate = lntlRtrnDate;
	}

	public String getLntlMemo() {
		return lntlMemo;
	}

	public void setLntlMemo(String lntlMemo) {
		this.lntlMemo = lntlMemo;
	}

	public int getEqpmntSq() {
		return eqpmntSq;
	}

	public void setEqpmntSq(int eqpmntSq) {
		this.eqpmntSq = eqpmntSq;
	}

	public String getEqpmntMngNum() {
		return eqpmntMngNum;
	}

	public void setEqpmntMngNum(String eqpmntMngNum) {
		this.eqpmntMngNum = eqpmntMngNum;
	}

	public String getEqpmntBrnd() {
		return eqpmntBrnd;
	}

	public void setEqpmntBrnd(String eqpmntBrnd) {
		this.eqpmntBrnd = eqpmntBrnd;
	}

	public String getEqpmntMdl() {
		return eqpmntMdl;
	}

	public void setEqpmntMdl(String eqpmntMdl) {
		this.eqpmntMdl = eqpmntMdl;
	}

	public String getEqpmntSrl() {
		return eqpmntSrl;
	}

	public void setEqpmntSrl(String eqpmntSrl) {
		this.eqpmntSrl = eqpmntSrl;
	}

	public String getEqpmntStsCd() {
		return eqpmntStsCd;
	}

	public void setEqpmntStsCd(String eqpmntStsCd) {
		this.eqpmntStsCd = eqpmntStsCd;
	}

	public String getEqpmntTypCd() {
		return eqpmntTypCd;
	}

	public void setEqpmntTypCd(String eqpmntTypCd) {
		this.eqpmntTypCd = eqpmntTypCd;
	}

	public String getEqpmntIsUse() {
		return eqpmntIsUse;
	}

	public void setEqpmntIsUse(String eqpmntIsUse) {
		this.eqpmntIsUse = eqpmntIsUse;
	}

	public String getEqpmntInfo() {
		return eqpmntInfo;
	}

	public void setEqpmntInfo(String eqpmntInfo) {
		this.eqpmntInfo = eqpmntInfo;
	}

	public String getEqpmntRgstrDate() {
		return eqpmntRgstrDate;
	}

	public void setEqpmntRgstrDate(String eqpmntRgstrDate) {
		this.eqpmntRgstrDate = eqpmntRgstrDate;
	}

	public String[] getEqpmntTcdArray() {
		return eqpmntTcdArray;
	}

	public void setEqpmntTcdArray(String[] eqpmntTcdArray) {
		this.eqpmntTcdArray = eqpmntTcdArray;
	}
	

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "ErpEquipmentVo [eqpmntSq=" + eqpmntSq + ", eqpmntMngNum=" + eqpmntMngNum + ", eqpmntBrnd=" + eqpmntBrnd
				+ ", eqpmntMdl=" + eqpmntMdl + ", eqpmntSrl=" + eqpmntSrl + ", eqpmntStsCd=" + eqpmntStsCd
				+ ", eqpmntTypCd=" + eqpmntTypCd + ", eqpmntIsUse=" + eqpmntIsUse + ", eqpmntInfo=" + eqpmntInfo
				+ ", eqpmntRgstrDate=" + eqpmntRgstrDate + ", eqpmntTcdArray="
				+ Arrays.toString(eqpmntTcdArray) + ", count=" + count + ", lntlSq=" + lntlSq + ", mbrSq=" + mbrSq
				+ ", mbrNm=" + mbrNm + ", lntlStrtDate=" + lntlStrtDate + ", lntlRtrnDate=" + lntlRtrnDate
				+ ", lntlMemo=" + lntlMemo + ", curPage=" + curPage + ", page=" + page + ", start=" + start + ", end="
				+ end + "]";
	}

	






	

}
