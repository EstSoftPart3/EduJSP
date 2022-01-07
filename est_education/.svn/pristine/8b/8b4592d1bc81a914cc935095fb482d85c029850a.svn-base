package com.erp.admin.humanresources.member.vo;

import java.util.ArrayList;
import java.util.List;

import common.base.vo.BaseVo;

public class ErpMemberEducationVo extends BaseVo {
	/*
	 * Table name : 
	 * TB_EEP_EMPLY_EDUCTN_S
	 */
	long eductnSq;		//학력시퀀스
	String eductnFnl;	//최종학력
	String eductnMjr;	//학과 명
	String eductnGrdtdDt;		//졸업일자
	String eductnLc;		//소재지
	
	long emplySq;					// 직원시퀀스
	
	public List<ErpMemberEducationVo> setArrayToVO(String[] array,long idx) {
		// array = ["a,b,c","c,d,e","f,g,h"]
		List<ErpMemberEducationVo> list = new ArrayList<ErpMemberEducationVo>();
		
		for(int i=0; i<array.length; i++) {
			ErpMemberEducationVo vo = new ErpMemberEducationVo();
			String[] voArray = array[i].split(",");	//array[0] = ["a","b","c"]
			
			System.out.println(idx);
			System.out.println(voArray[0]);
			System.out.println(voArray[1]);
			System.out.println(voArray[2]);
			System.out.println(voArray[3]);
			vo.setEmplySq(idx);
			vo.setEductnFnl((voArray[0]));
			vo.setEductnMjr((voArray[1]));
			vo.setEductnGrdtdDt((voArray[2]));
			vo.setEductnLc((voArray[3]));
			
			
			list.add(vo);
		}
		return list;
	}


	public long getEductnSq() {
		return eductnSq;
	}


	public void setEductnSq(long eductnSq) {
		this.eductnSq = eductnSq;
	}


	public String getEductnFnl() {
		return eductnFnl;
	}


	public void setEductnFnl(String eductnFnl) {
		this.eductnFnl = eductnFnl;
	}


	public String getEductnMjr() {
		return eductnMjr;
	}


	public void setEductnMjr(String eductnMjr) {
		this.eductnMjr = eductnMjr;
	}


	public String getEductnGrdtdDt() {
		return eductnGrdtdDt;
	}


	public void setEductnGrdtdDt(String eductnGrdtdDt) {
		this.eductnGrdtdDt = eductnGrdtdDt;
	}


	public String getEductnLc() {
		return eductnLc;
	}


	public void setEductnLc(String eductnLc) {
		this.eductnLc = eductnLc;
	}


	public long getEmplySq() {
		return emplySq;
	}


	public void setEmplySq(long emplySq) {
		this.emplySq = emplySq;
	}
	
	
	
	
}
