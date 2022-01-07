package com.partner.vo;

import java.sql.Date;

import common.base.vo.BaseVo;

public class PartnerVo extends BaseVo {
	
	long prtnSq;				// 번호
	String codeComCd;		// 사업자 유형 코드
	String codeNm;			// 코드 이름
	String prtnBizRegNum;	// 사업자 등록번호
	String prtnCorpNm;		// 법인 이름
	String prtnRepNm;		// 대표자 이름
	Date prtnRegDt;			// 기업 연월일
	String prtnCorpRegNum;	// 법인 등록번호
	String prtnBizAddr;		// 사업장 소재지
	String prtnBizCnd;		// 업태
	String prtnBizPrd;		// 종목
	String prtnDirNm;		// 담당자 이름
	String prtnDirDrtmtCd;	// 담당자 부서
	String prtnDirPositn;	// 담당자 직급
	String prtnDirTelNum;	// 담당자 대표번호
	String prtnDirHpNum;	// 담당자 전화번호
	String prtnDirEmail;	// 담당자 이메일
	
	//기본생성자
	public PartnerVo() { super(); }

	public long getPrtnSq() {
		return prtnSq;
	}

	public void setPrtnSq(long prtnSq) {
		this.prtnSq = prtnSq;
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

	public String getPrtnBizRegNum() {
		return prtnBizRegNum;
	}

	public void setPrtnBizRegNum(String prtnBizRegNum) {
		this.prtnBizRegNum = prtnBizRegNum;
	}

	public String getPrtnCorpNm() {
		return prtnCorpNm;
	}

	public void setPrtnCorpNm(String prtnCorpNm) {
		this.prtnCorpNm = prtnCorpNm;
	}

	public String getPrtnRepNm() {
		return prtnRepNm;
	}

	public void setPrtnRepNm(String prtnRepNm) {
		this.prtnRepNm = prtnRepNm;
	}

	public Date getPrtnRegDt() {
		return prtnRegDt;
	}

	public void setPrtnRegDt(Date prtnRegDt) {
		this.prtnRegDt = prtnRegDt;
	}

	public String getPrtnCorpRegNum() {
		return prtnCorpRegNum;
	}

	public void setPrtnCorpRegNum(String prtnCorpRegNum) {
		this.prtnCorpRegNum = prtnCorpRegNum;
	}

	public String getPrtnBizAddr() {
		return prtnBizAddr;
	}

	public void setPrtnBizAddr(String prtnBizAddr) {
		this.prtnBizAddr = prtnBizAddr;
	}

	public String getPrtnBizCnd() {
		return prtnBizCnd;
	}

	public void setPrtnBizCnd(String prtnBizCnd) {
		this.prtnBizCnd = prtnBizCnd;
	}

	public String getPrtnBizPrd() {
		return prtnBizPrd;
	}

	public void setPrtnBizPrd(String prtnBizPrd) {
		this.prtnBizPrd = prtnBizPrd;
	}

	public String getPrtnDirNm() {
		return prtnDirNm;
	}

	public void setPrtnDirNm(String prtnDirNm) {
		this.prtnDirNm = prtnDirNm;
	}

	public String getPrtnDirDrtmtCd() {
		return prtnDirDrtmtCd;
	}

	public void setPrtnDirDrtmtCd(String prtnDirDrtmtCd) {
		this.prtnDirDrtmtCd = prtnDirDrtmtCd;
	}

	public String getPrtnDirPositn() {
		return prtnDirPositn;
	}

	public void setPrtnDirPositn(String prtnDirPositn) {
		this.prtnDirPositn = prtnDirPositn;
	}

	public String getPrtnDirTelNum() {
		return prtnDirTelNum;
	}

	public void setPrtnDirTelNum(String prtnDirTelNum) {
		this.prtnDirTelNum = prtnDirTelNum;
	}

	public String getPrtnDirHpNum() {
		return prtnDirHpNum;
	}

	public void setPrtnDirHpNum(String prtnDirHpNum) {
		this.prtnDirHpNum = prtnDirHpNum;
	}

	public String getPrtnDirEmail() {
		return prtnDirEmail;
	}

	public void setPrtnDirEmail(String prtnDirEmail) {
		this.prtnDirEmail = prtnDirEmail;
	}

	public PartnerVo(long prtnSq, String codeComCd, String codeNm, String prtnBizRegNum, String prtnCorpNm,
			String prtnRepNm, Date prtnRegDt, String prtnCorpRegNum, String prtnBizAddr, String prtnBizCnd,
			String prtnBizPrd, String prtnDirNm, String prtnDirDrtmtCd, String prtnDirPositn, String prtnDirTelNum,
			String prtnDirHpNum, String prtnDirEmail) {
		super();
		this.prtnSq = prtnSq;
		this.codeComCd = codeComCd;
		this.codeNm = codeNm;
		this.prtnBizRegNum = prtnBizRegNum;
		this.prtnCorpNm = prtnCorpNm;
		this.prtnRepNm = prtnRepNm;
		this.prtnRegDt = prtnRegDt;
		this.prtnCorpRegNum = prtnCorpRegNum;
		this.prtnBizAddr = prtnBizAddr;
		this.prtnBizCnd = prtnBizCnd;
		this.prtnBizPrd = prtnBizPrd;
		this.prtnDirNm = prtnDirNm;
		this.prtnDirDrtmtCd = prtnDirDrtmtCd;
		this.prtnDirPositn = prtnDirPositn;
		this.prtnDirTelNum = prtnDirTelNum;
		this.prtnDirHpNum = prtnDirHpNum;
		this.prtnDirEmail = prtnDirEmail;
	}

	@Override
	public String toString() {
		return "PartnerVo [prtnSq=" + prtnSq + ", codeComCd=" + codeComCd + ", codeNm=" + codeNm + ", prtnBizRegNum="
				+ prtnBizRegNum + ", prtnCorpNm=" + prtnCorpNm + ", prtnRepNm=" + prtnRepNm + ", prtnRegDt=" + prtnRegDt
				+ ", prtnCorpRegNum=" + prtnCorpRegNum + ", prtnBizAddr=" + prtnBizAddr + ", prtnBizCnd=" + prtnBizCnd
				+ ", prtnBizPrd=" + prtnBizPrd + ", prtnDirNm=" + prtnDirNm + ", prtnDirDrtmtCd=" + prtnDirDrtmtCd
				+ ", prtnDirPositn=" + prtnDirPositn + ", prtnDirTelNum=" + prtnDirTelNum + ", prtnDirHpNum="
				+ prtnDirHpNum + ", prtnDirEmail=" + prtnDirEmail + "]";
	}

}
