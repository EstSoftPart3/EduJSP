package com.equipmentLental.vo;

import common.base.vo.BaseVo;

public class EquipmentLentalVo extends BaseVo {

	long lntlSq; 
	long eqpmntSq;
	long mbrSq;
	String eqpmntTcd;
	String eqpmntStatTc;
	String mbrNm; 
	String lntlStrtDate;
	String lntlRtrnDate;
	String lntlMemo;
	String eqpmntMngNum ;
	
	
	public long getLntlSq() {
		return lntlSq;
	}
	public void setLntlSq(long lntlSq) {
		this.lntlSq = lntlSq;
	}
	public long getEqpmntSq() {
		return eqpmntSq;
	}
	public void setEqpmntSq(long eqpmntSq) {
		this.eqpmntSq = eqpmntSq;
	}
	public long getMbrSq() {
		return mbrSq;
	}
	public void setMbrSq(long mbrSq) {
		this.mbrSq = mbrSq;
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
	 public String getEqpmntTcd() {
		return eqpmntTcd;
	}
	public void setEqpmntTcd(String eqpmntTcd) {
		this.eqpmntTcd = eqpmntTcd;
	}
	 
	public String getMbrNm() {
		return mbrNm;
	}
	public void setMbrNm(String mbrNm) {
		this.mbrNm = mbrNm;
	}
	public String getEqpmntStatTc() {
		return eqpmntStatTc;
	}
	public void setEqpmntStatTc(String eqpmntStatTc) {
		this.eqpmntStatTc = eqpmntStatTc;
	}
	public String getEqpmntMngNum() {
		return eqpmntMngNum;
	}
	public void setEqpmntMngNum(String eqpmntMngNum) {
		this.eqpmntMngNum = eqpmntMngNum;
	}
	 
	
	


}
