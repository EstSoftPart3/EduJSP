package com.erp.admin.system.authority.vo;

import java.util.Date;

import common.base.vo.BaseVo;

public class ErpAuthorityVo extends BaseVo{

	String authCd;
    String cmpnySq;
	String authNm;
	Date authEnplmDt;
	Date authCrrctnDt;
	Date authCrrctnUsrSq;
	String authUseWhthr;
	String authNote;
	public String getAuthCd() {
		return authCd;
	}
	public void setAuthCd(String authCd) {
		this.authCd = authCd;
	}
	public String getCmpnySq() {
		return cmpnySq;
	}
	public void setCmpnySq(String cmpnySq) {
		this.cmpnySq = cmpnySq;
	}
	public String getAuthNm() {
		return authNm;
	}
	public void setAuthNm(String authNm) {
		this.authNm = authNm;
	}
	public Date getAuthEnplmDt() {
		return authEnplmDt;
	}
	public void setAuthEnplmDt(Date authEnplmDt) {
		this.authEnplmDt = authEnplmDt;
	}
	public Date getAuthCrrctnDt() {
		return authCrrctnDt;
	}
	public void setAuthCrrctnDt(Date authCrrctnDt) {
		this.authCrrctnDt = authCrrctnDt;
	}
	public Date getAuthCrrctnUsrSq() {
		return authCrrctnUsrSq;
	}
	public void setAuthCrrctnUsrSq(Date authCrrctnUsrSq) {
		this.authCrrctnUsrSq = authCrrctnUsrSq;
	}
	public String getAuthUseWhthr() {
		return authUseWhthr;
	}
	public void setAuthUseWhthr(String authUseWhthr) {
		this.authUseWhthr = authUseWhthr;
	}
	public String getAuthNote() {
		return authNote;
	}
	public void setAuthNote(String authNote) {
		this.authNote = authNote;
	}
	
}
