package com.erp.admin.humanresources.member.service;

import java.util.List;
import java.util.Map;

import com.erp.admin.humanresources.member.vo.ErpMemberCareerVo;
import com.erp.admin.humanresources.member.vo.ErpMemberCertificationVo;
import com.erp.admin.humanresources.member.vo.ErpMemberDocumentVo;
import com.erp.admin.humanresources.member.vo.ErpMemberEducationVo;
import com.erp.admin.humanresources.member.vo.ErpMemberOAVo;
import com.erp.admin.humanresources.member.vo.ErpMemberVo;


public interface ErpMemberService {
	
	// 전체 리스트 불러오기
	public List<ErpMemberVo> selectMemberList(ErpMemberVo mbrVo, int start, int end) throws Exception;
	// 직원 수 세기
	public int countMemberList() throws Exception;
	
	
	//get employ seq nextval
	public int getSqNextval() throws Exception;
	//insert member
	public int insertMember(ErpMemberVo erpMemberVo) throws Exception;
	//insert education
	public int insertMemberEductn(List<ErpMemberEducationVo> eduList) throws Exception;
	//insert carrer
	public int insertMemberCarr(List<ErpMemberCareerVo> carrList) throws Exception;
	//insert certification
	public int insertMemberCertfctn(List<ErpMemberCertificationVo> certfList) throws Exception;
	//insert OA
	public int insertMemberOA(List<ErpMemberOAVo> OAList) throws Exception;
	//insert doc
	public int insertMemberDoc(List<ErpMemberDocumentVo> docList) throws Exception;
	
	//select one
	public ErpMemberVo selectMemberDetail(ErpMemberVo vo) throws Exception;
	//select doc
	public List<ErpMemberDocumentVo> selectMemberDoc(ErpMemberVo vo) throws Exception;
	//select edu
	public List<ErpMemberEducationVo> selectMemberEdu(ErpMemberVo vo) throws Exception;
	//select carr
	public List<ErpMemberCareerVo> selectMemberCarr(ErpMemberVo vo) throws Exception;
	//select certf
	public List<ErpMemberCertificationVo> selectMemberCertf(ErpMemberVo vo) throws Exception;
	//select OA
	public List<ErpMemberOAVo> selectMemberOA(ErpMemberVo vo) throws Exception;
	
	//delete
	public int deleteMember(List<Integer> list) throws Exception;
	
	//file info
	public Map<String, Object> selectFileInfo(int DOC_SQ) throws Exception;
	
	//insert member
	public int updateMember(ErpMemberVo erpMemberVo) throws Exception;
	//insert education
	public int deleteMemberEductn(int emplysq) throws Exception;
	//insert carrer
	public int deleteMemberCarr(int emplysq) throws Exception;
	//insert certification
	public int deleteMemberCertfctn(int emplysq) throws Exception;
	//insert OA
	public int deleteMemberOA(int emplysq) throws Exception;
	//insert doc
	public int updateMemberDoc(List<ErpMemberDocumentVo> docList) throws Exception;
	
}
