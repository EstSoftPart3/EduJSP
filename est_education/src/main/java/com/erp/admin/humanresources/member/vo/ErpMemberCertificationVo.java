package com.erp.admin.humanresources.member.vo;

import java.util.ArrayList;
import java.util.List;

import common.base.vo.BaseVo;

public class ErpMemberCertificationVo extends BaseVo {
	/*
	 * Table name : 
	 * TB_EEP_EMPLY_CERTFCTN_S
	 */
	long certfctnSq;			//자격증 시퀀스
	String certfctnNm;			//자격증 이름
	String certfctnLc;			//자격증 발행처
	String certfctnDt;			//자격증 취득일
	
	long emplySq;					// 직원시퀀스
	
	
	public List<ErpMemberCertificationVo> setArrayToVO(String[] array,long idx) {
		// array = ["a,b,c","c,d,e","f,g,h"]
		List<ErpMemberCertificationVo> list = new ArrayList<ErpMemberCertificationVo>();
		
		for(int i=0; i<array.length; i++) {
			ErpMemberCertificationVo vo = new ErpMemberCertificationVo();
			String[] voArray = array[i].split(",");	//array[0] = ["a","b","c"]
			
			vo.setEmplySq(idx);
			vo.setCertfctnNm((voArray[0]));
			vo.setCertfctnLc((voArray[1]));
			vo.setCertfctnDt((voArray[2]));
			
			list.add(vo);
		}
		
		return list;
	}
	
	
	public long getEmplySq() {
		return emplySq;
	}
	public void setEmplySq(long emplySq) {
		this.emplySq = emplySq;
	}
	public long getCertfctnSq() {
		return certfctnSq;
	}
	public void setCertfctnSq(long certfctnSq) {
		this.certfctnSq = certfctnSq;
	}
	public String getCertfctnNm() {
		return certfctnNm;
	}
	public void setCertfctnNm(String certfctnNm) {
		this.certfctnNm = certfctnNm;
	}
	public String getCertfctnLc() {
		return certfctnLc;
	}
	public void setCertfctnLc(String certfctnLc) {
		this.certfctnLc = certfctnLc;
	}
	public String getCertfctnDt() {
		return certfctnDt;
	}
	public void setCertfctnDt(String certfctnDt) {
		this.certfctnDt = certfctnDt;
	}
	
	
}
