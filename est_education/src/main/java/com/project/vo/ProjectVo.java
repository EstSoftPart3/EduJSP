package com.project.vo;

import common.base.vo.BaseVo;
/*import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString*/
public class ProjectVo extends BaseVo {
	private long prjctSq;
	private String mbrSq;
	private String prjctSortOrder;
	private String prjctNm;
	private String prjctTypCd;
	private String prjctRoleDtl;
	//Date -> String 데이터 타입 변경 - null 값 허용을 위함
	private String prjctStartDt;
	private String prjctEndDt;
	
	private String prjctAddr;
	private String prjctCstmrCmpny;
	private String prjctWrkCmpny;
	
	public long getPrjctSq() {
		return prjctSq;
	}
	public void setPrjctSq(long prjctSq) {
		this.prjctSq = prjctSq;
	}
	public String getMbrSq() {
		return mbrSq;
	}
	public void setMbrSq(String mbrSq) {
		this.mbrSq = mbrSq;
	}
	public String getPrjctSortOrder() {
		return prjctSortOrder;
	}
	public void setPrjctSortOrder(String prjctSortOrder) {
		this.prjctSortOrder = prjctSortOrder;
	}
	public String getPrjctNm() {
		return prjctNm;
	}
	public void setPrjctNm(String prjctNm) {
		this.prjctNm = prjctNm;
	}
	public String getPrjctTypCd() {
		return prjctTypCd;
	}
	public void setPrjctTypCd(String prjctTypCd) {
		this.prjctTypCd = prjctTypCd;
	}
	public String getPrjctRoleDtl() {
		return prjctRoleDtl;
	}
	public void setPrjctRoleDtl(String prjctRoleDtl) {
		this.prjctRoleDtl = prjctRoleDtl;
	}
	
	public String getPrjctStartDt() {
		return prjctStartDt;
	}
	public void setPrjctStartDt(String prjctStartDt) {
		this.prjctStartDt = prjctStartDt;
	}
	public String getPrjctEndDt() {
		return prjctEndDt;
	}
	public void setPrjctEndDt(String prjctEndDt) {
		this.prjctEndDt = prjctEndDt;
	}
	public String getPrjctAddr() {
		return prjctAddr;
	}
	public void setPrjctAddr(String prjctAddr) {
		this.prjctAddr = prjctAddr;
	}
	public String getPrjctCstmrCmpny() {
		return prjctCstmrCmpny;
	}
	public void setPrjctCstmrCmpny(String prjctCstmrCmpny) {
		this.prjctCstmrCmpny = prjctCstmrCmpny;
	}
	public String getPrjctWrkCmpny() {
		return prjctWrkCmpny;
	}
	public void setPrjctWrkCmpny(String prjctWrkCmpny) {
		this.prjctWrkCmpny = prjctWrkCmpny;
	}
	
	
	
	
}
