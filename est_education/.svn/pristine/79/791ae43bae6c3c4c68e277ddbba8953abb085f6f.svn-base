package com.erp.admin.humanresources.member.vo;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import common.base.vo.BaseVo;

public class ErpMemberDocumentVo extends BaseVo {
	/*
	 * Table name : 
	 * TB_EEP_EMPLY_DOC_S
	 */
	long docSq;				//시퀀스
	String docOrgFile;		//원본 파일 이름
	String docStrFile;		//저장된 파일 이름
	Date regdate;			//업로드시간
	long docFileSize;		//파일크기
	int isSave;				//저장유무 (1 : 저장, 0 : 삭제)
	
	long emplySq;					// 직원시퀀스
	long fileSq;					// 전체파일시퀀스
	
	public List<ErpMemberDocumentVo> setArrayToVO(String[] array,long idx) {
		// array = ["a,b,c","c,d,e","f,g,h"]
		List<ErpMemberDocumentVo> list = new ArrayList<ErpMemberDocumentVo>();
		
		for(int i=0; i<array.length; i++) {
			ErpMemberDocumentVo vo = new ErpMemberDocumentVo();
			String[] voArray = array[i].split(",");	//array[0] = ["a","b","c"]
			
			vo.setEmplySq(idx);
			vo.setDocOrgFile((voArray[0]));
			
			list.add(vo);
		}
		return list;
	}
	
	
	public long getDocSq() {
		return docSq;
	}
	public void setDocSq(long docSq) {
		this.docSq = docSq;
	}
	public String getDocOrgFile() {
		return docOrgFile;
	}
	public void setDocOrgFile(String docOrgFile) {
		this.docOrgFile = docOrgFile;
	}
	public String getDocStrFile() {
		return docStrFile;
	}
	public void setDocStrFile(String docStrFile) {
		this.docStrFile = docStrFile;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public long getDocFileSize() {
		return docFileSize;
	}
	public void setDocFileSize(long docFileSize) {
		this.docFileSize = docFileSize;
	}
	public int getIsSave() {
		return isSave;
	}
	public void setIsSave(int isSave) {
		this.isSave = isSave;
	}
	public long getEmplySq() {
		return emplySq;
	}
	public void setEmplySq(long emplySq) {
		this.emplySq = emplySq;
	}
	public long getFileSq() {
		return fileSq;
	}
	public void setFileSq(long fileSq) {
		this.fileSq = fileSq;
	}
	
	
	
	
}
