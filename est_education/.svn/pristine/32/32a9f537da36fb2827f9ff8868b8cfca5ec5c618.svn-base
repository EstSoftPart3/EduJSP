package com.erp.admin.humanresources.member.vo;

import java.util.ArrayList;
import java.util.List;

import common.base.vo.BaseVo;

public class ErpMemberOAVo extends BaseVo {
	/*
	 * Table name : 
	 * TB_EEP_EMPLY_OA_S
	 */
	long OASq;				//활동 시퀀스
	String OADvsn;			//활동 구분
	String OANm;			//활동 이름
	String OAOrgnz;			//기관
	String OADt;			//활동 기간
	String OADtl;			//활동 내용
	
	long emplySq;					// 직원시퀀스
	
	
	public List<ErpMemberOAVo> setArrayToVO(String[] array,long idx) {
		// array = ["a,b,c","c,d,e","f,g,h"]
		List<ErpMemberOAVo> OAList = new ArrayList<ErpMemberOAVo>();
		
		for(int i=0; i<array.length; i++) {
			ErpMemberOAVo vo = new ErpMemberOAVo();
			String[] voArray = array[i].split(",");	//array[0] = ["a","b","c"]
			
			vo.setEmplySq(idx);
			vo.setOADvsn(voArray[0]);
			vo.setOANm(voArray[1]);
			vo.setOAOrgnz(voArray[2]);
			vo.setOADt(voArray[3]);
			vo.setOADtl(voArray[4]);
			
			OAList.add(vo);
		}
		
		return OAList;
	}
	
	
	public long getEmplySq() {
		return emplySq;
	}
	public void setEmplySq(long emplySq) {
		this.emplySq = emplySq;
	}
	public long getOASq() {
		return OASq;
	}
	public void setOASq(long oASq) {
		OASq = oASq;
	}
	public String getOADvsn() {
		return OADvsn;
	}
	public void setOADvsn(String oADvsn) {
		OADvsn = oADvsn;
	}
	public String getOANm() {
		return OANm;
	}
	public void setOANm(String oANm) {
		OANm = oANm;
	}
	public String getOAOrgnz() {
		return OAOrgnz;
	}
	public void setOAOrgnz(String oAOrgnz) {
		OAOrgnz = oAOrgnz;
	}
	public String getOADt() {
		return OADt;
	}
	public void setOADt(String oADt) {
		OADt = oADt;
	}
	public String getOADtl() {
		return OADtl;
	}
	public void setOADtl(String oADtl) {
		OADtl = oADtl;
	}
	
	
}
