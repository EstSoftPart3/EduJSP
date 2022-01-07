package com.erp.admin.humanresources.member.vo;

import java.util.ArrayList;
import java.util.List;

import common.base.vo.BaseVo;

public class ErpMemberCareerVo extends BaseVo {
	/*
	 * Table name : 
	 * TB_EEP_EMPLY_CARR_S
	 */
	long carrSq;			//경력 시퀀스
	String carrNm;		//근무회사 이름
	String carrDt; 		//근무기간
	String carrRnk;		//직급
	String carrWrk;		//담당업무
	String carrLc;		//근무지역
	String carrRsgnt;	//퇴사사유
	int carrSlry;		//연봉
	
	long emplySq;					// 직원시퀀스
	

	public List<ErpMemberCareerVo> setArrayToVO(String[] array,long idx) {
		// array = ["a,b,c","c,d,e","f,g,h"]
		List<ErpMemberCareerVo> list = new ArrayList<ErpMemberCareerVo>();
		
		for(int i=0; i<array.length; i++) {
			ErpMemberCareerVo vo = new ErpMemberCareerVo();
			String[] voArray = array[i].split(",");	//array[0] = ["a","b","c"]
			
			vo.setEmplySq(idx);
			vo.setCarrNm((voArray[0]));
			vo.setCarrDt((voArray[1]));
			vo.setCarrRnk((voArray[2]));
			vo.setCarrWrk((voArray[3]));
			vo.setCarrLc((voArray[4]));
			vo.setCarrRsgnt((voArray[5]));
			
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
	public long getCarrSq() {
		return carrSq;
	}
	public void setCarrSq(long carrSq) {
		this.carrSq = carrSq;
	}
	public String getCarrNm() {
		return carrNm;
	}
	public void setCarrNm(String carrNm) {
		this.carrNm = carrNm;
	}
	public String getCarrDt() {
		return carrDt;
	}
	public void setCarrDt(String carrDt) {
		this.carrDt = carrDt;
	}
	public String getCarrRnk() {
		return carrRnk;
	}
	public void setCarrRnk(String carrRnk) {
		this.carrRnk = carrRnk;
	}
	public String getCarrWrk() {
		return carrWrk;
	}
	public void setCarrWrk(String carrWrk) {
		this.carrWrk = carrWrk;
	}
	public String getCarrLc() {
		return carrLc;
	}
	public void setCarrLc(String carrLc) {
		this.carrLc = carrLc;
	}
	public String getCarrRsgnt() {
		return carrRsgnt;
	}
	public void setCarrRsgnt(String carrRsgnt) {
		this.carrRsgnt = carrRsgnt;
	}
	public int getCarrSlry() {
		return carrSlry;
	}
	public void setCarrSlry(int carrSlry) {
		this.carrSlry = carrSlry;
	}
	
	
	
	
}
