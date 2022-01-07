package com.erp.admin.humanresources.member.vo;

import common.base.vo.BaseVo;

public class ErpMemberVo extends BaseVo {
	/*
	 * Table name : 
	 * TB_EEP_EMPLY_M
	 */
	long emplySq;					// 시퀀스
	
	String	emplyNm;				// 이름
	String	emplyId;				// 아이디
	String	emplyPw;				// 비밀번호
	String	emplyAddr;				// 주소
	String	emplyRrn;				// 주민번호
	String	emplyEml;				// 이메일
	String	emplyPhNum;				// 핸드폰번호
	String	emplyBnk;				// 은행
	String	emplyAcct;				// 계좌번호
	
	String	cntrcTcd;				// 계약유형
	String	deptTcd;				// 부서
	String	rnkTcd;					// 직급
	
	String	cntrcStrtDt;			// 입사일
	String	cntrcTrnstDt;			// 전환일
	String	cntrcEndDt;				// 퇴사일
	String	emplyEcnRelatnTcd1;		// 비상연락망 관계1
	String	emplyEcnRelatnTcd2;		// 비상연락망 관계2
	String	emplyEcnRelatnNum1;			// 비상연락망 연락처1
	String	emplyEcnRelatnNum2;			// 비상연락망 연락처2
	String  emplyNote;				//비고
	String  iswork;						//재직여부
	
	//for search
	String code00006;		//직급
	String code00007;		//계약형태
	String code00008;		//부서
	String code00009;		//비상연락망 관계
	
	String keyword;			//검색어
	String count;			//카운트(페이징)
	int curPage;
	int page;
	
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	
	//VoList
	String tblEdu;
	String tblCarr;
	String tblCertf;
	String tblOA;
	String tblDoc;
	
	
	public String getCount() {
		return count;
	}
	public void setCount(String count) {
		this.count = count;
	}
	public String getIswork() {
		return iswork;
	}
	public void setIswork(String iswork) {
		this.iswork = iswork;
	}
	public long getEmplySq() {
		return emplySq;
	}
	public void setEmplySq(long emplySq) {
		this.emplySq = emplySq;
	}
	public String getEmplyNm() {
		return emplyNm;
	}
	public void setEmplyNm(String emplyNm) {
		this.emplyNm = emplyNm;
	}
	public String getEmplyId() {
		return emplyId;
	}
	public void setEmplyId(String emplyId) {
		this.emplyId = emplyId;
	}
	public String getEmplyPw() {
		return emplyPw;
	}
	public void setEmplyPw(String emplyPw) {
		this.emplyPw = emplyPw;
	}
	public String getEmplyAddr() {
		return emplyAddr;
	}
	public void setEmplyAddr(String emplyAddr) {
		this.emplyAddr = emplyAddr;
	}
	public String getEmplyRrn() {
		return emplyRrn;
	}
	public void setEmplyRrn(String emplyRrn) {
		this.emplyRrn = emplyRrn;
	}
	public String getEmplyEml() {
		return emplyEml;
	}
	public void setEmplyEml(String emplyEml) {
		this.emplyEml = emplyEml;
	}
	public String getEmplyPhNum() {
		return emplyPhNum;
	}
	public void setEmplyPhNum(String emplyPhNum) {
		this.emplyPhNum = emplyPhNum;
	}
	public String getEmplyBnk() {
		return emplyBnk;
	}
	public void setEmplyBnk(String emplyBnk) {
		this.emplyBnk = emplyBnk;
	}
	public String getEmplyAcct() {
		return emplyAcct;
	}
	public void setEmplyAcct(String emplyAcct) {
		this.emplyAcct = emplyAcct;
	}
	public String getCntrcTcd() {
		return cntrcTcd;
	}
	public void setCntrcTcd(String cntrcTcd) {
		this.cntrcTcd = cntrcTcd;
	}
	public String getDeptTcd() {
		return deptTcd;
	}
	public void setDeptTcd(String deptTcd) {
		this.deptTcd = deptTcd;
	}
	public String getRnkTcd() {
		return rnkTcd;
	}
	public void setRnkTcd(String rnkTcd) {
		this.rnkTcd = rnkTcd;
	}
	public String getCntrcStrtDt() {
		return cntrcStrtDt;
	}
	public void setCntrcStrtDt(String cntrcStrtDt) {
		this.cntrcStrtDt = cntrcStrtDt;
	}
	public String getCntrcTrnstDt() {
		return cntrcTrnstDt;
	}
	public void setCntrcTrnstDt(String cntrcTrnstDt) {
		this.cntrcTrnstDt = cntrcTrnstDt;
	}
	public String getCntrcEndDt() {
		return cntrcEndDt;
	}
	public void setCntrcEndDt(String cntrcEndDt) {
		this.cntrcEndDt = cntrcEndDt;
	}
	public String getEmplyEcnRelatnTcd1() {
		return emplyEcnRelatnTcd1;
	}
	public void setEmplyEcnRelatnTcd1(String emplyEcnRelatnTcd1) {
		this.emplyEcnRelatnTcd1 = emplyEcnRelatnTcd1;
	}
	public String getEmplyEcnRelatnTcd2() {
		return emplyEcnRelatnTcd2;
	}
	public void setEmplyEcnRelatnTcd2(String emplyEcnRelatnTcd2) {
		this.emplyEcnRelatnTcd2 = emplyEcnRelatnTcd2;
	}
	public String getEmplyEcnRelatnNum1() {
		return emplyEcnRelatnNum1;
	}
	public void setEmplyEcnRelatnNum1(String emplyEcnRelatnNum1) {
		this.emplyEcnRelatnNum1 = emplyEcnRelatnNum1;
	}
	public String getEmplyEcnRelatnNum2() {
		return emplyEcnRelatnNum2;
	}
	public void setEmplyEcnRelatnNum2(String emplyEcnRelatnNum2) {
		this.emplyEcnRelatnNum2 = emplyEcnRelatnNum2;
	}
	public String getEmplyNote() {
		return emplyNote;
	}
	public void setEmplyNote(String emplyNote) {
		this.emplyNote = emplyNote;
	}
	public String getCode00006() {
		return code00006;
	}
	public void setCode00006(String code00006) {
		this.code00006 = code00006;
	}
	public String getCode00007() {
		return code00007;
	}
	public void setCode00007(String code00007) {
		this.code00007 = code00007;
	}
	public String getCode00008() {
		return code00008;
	}
	public void setCode00008(String code00008) {
		this.code00008 = code00008;
	}
	public String getCode00009() {
		return code00009;
	}
	public void setCode00009(String code00009) {
		this.code00009 = code00009;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getTblEdu() {
		return tblEdu;
	}
	public void setTblEdu(String tblEdu) {
		this.tblEdu = tblEdu;
	}
	public String getTblCarr() {
		return tblCarr;
	}
	public void setTblCarr(String tblCarr) {
		this.tblCarr = tblCarr;
	}
	public String getTblCertf() {
		return tblCertf;
	}
	public void setTblCertf(String tblCertf) {
		this.tblCertf = tblCertf;
	}
	public String getTblOA() {
		return tblOA;
	}
	public void setTblOA(String tblOA) {
		this.tblOA = tblOA;
	}
	public String getTblDoc() {
		return tblDoc;
	}
	public void setTblDoc(String tblDoc) {
		this.tblDoc = tblDoc;
	}
	
	
	
}
