package com.erp.admin.humanresources.member.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.erp.admin.humanresources.member.vo.ErpMemberCareerVo;
import com.erp.admin.humanresources.member.vo.ErpMemberCertificationVo;
import com.erp.admin.humanresources.member.vo.ErpMemberDocumentVo;
import com.erp.admin.humanresources.member.vo.ErpMemberEducationVo;
import com.erp.admin.humanresources.member.vo.ErpMemberOAVo;
import com.erp.admin.humanresources.member.vo.ErpMemberVo;

import common.dao.AbstractDAO;

@Repository("erpMemberDao")
public class ErpMemberDao extends AbstractDAO {
	// 전체 리스트 불러오기
	@SuppressWarnings("unchecked")
	public List<ErpMemberVo> selectMemberList(ErpMemberVo erpMemberVo, int start, int end) throws Exception {
		if(erpMemberVo.getDeptTcd()==null) {
			erpMemberVo.setDeptTcd("all");
		}
		if(erpMemberVo.getRnkTcd()==null) {
			erpMemberVo.setRnkTcd("all");
		}
		if(erpMemberVo.getIswork()==null) {
			erpMemberVo.setIswork("all");
		}
		Map<String, Object> paramMap = erpMemberVo.toMap();
		paramMap.put("start", start);
		paramMap.put("end", end);
		return selectList("erpMember.selectMemberList", paramMap);
	}
	
	//count emply
	public int countMemberList() throws Exception {
		return (int)selectOne("countMemberList");
	}
	
// ############################################################### INSERT
	//get employ seq nextval
	public int getSqNextval() throws Exception {
		return (int)selectOne("getSqNextval");
	}
	
	//insert member
	public int insertMember(ErpMemberVo erpMemberVo) throws Exception {
		return (int)insert("erpMember.insertMember", erpMemberVo.toMap());
	}
	//insert doc
	public int insertMemberDoc(ErpMemberDocumentVo docVo) throws Exception {
		return (int)insert("erpMember.insertMemberDoc", docVo.toMap());
	}
	//insert education
	public int insertMemberEductn(ErpMemberEducationVo eductnVo) throws Exception {
		return (int)insert("erpMember.insertMemberEductn", eductnVo.toMap());
	}
	//insert carrer
	public int insertMemberCarr(ErpMemberCareerVo carrVo) throws Exception {
		return (int)insert("erpMember.insertMemberCarr",carrVo.toMap());
	}
	//insert certification
	public int insertMemberCertfctn(ErpMemberCertificationVo certfctnVo) throws Exception {
		return (int)insert("erpMember.insertMemberCertfctn", certfctnVo.toMap());
	}
	//insert OA
	public int insertMemberOA(ErpMemberOAVo OAVo) throws Exception {
		return (int)insert("erpMember.insertMemberOA", OAVo.toMap());
	}
	
	
// ############################################################### SELECT DETAIL
	//select one
	public ErpMemberVo selectMemberDetail(ErpMemberVo vo) throws Exception {
		return (ErpMemberVo)selectOne("erpMember.selectMemberDetail", vo.toMap());
	}
	
	//select doc
	@SuppressWarnings("unchecked")
	public List<ErpMemberDocumentVo> selectMemberDoc(ErpMemberVo vo) throws Exception {
		return selectList("erpMember.selectMemberDoc", vo.toMap());
	}
	
	//select edu
	@SuppressWarnings("unchecked")
	public List<ErpMemberEducationVo> selectMemberEdu(ErpMemberVo vo) throws Exception {
		return selectList("erpMember.selectMemberEdu", vo.toMap());
	}
	
	//select carr
	@SuppressWarnings("unchecked")
	public List<ErpMemberCareerVo> selectMemberCarr(ErpMemberVo vo) throws Exception {
		return selectList("erpMember.selectMemberCarr", vo.toMap());
	}
	
	//select certf
	@SuppressWarnings("unchecked")
	public List<ErpMemberCertificationVo> selectMemberCertf(ErpMemberVo vo) throws Exception {
		return selectList("erpMember.selectMemberCertf", vo.toMap());
	}
	
	//select OA
	@SuppressWarnings("unchecked")
	public List<ErpMemberOAVo> selectMemberOA(ErpMemberVo vo) throws Exception {
		return selectList("erpMember.selectMemberOA", vo.toMap());
	}
	
// ############################################################### DELETE MEMBER
	public int deleteMember(int emply_sq) throws Exception {
		return (int)delete("erpMember.deleteMember", emply_sq);
	}
	
// ############################################################### FIRE EMPLY
	public int fireHim(int emply_sq) throws Exception {
		return (int)delete("erpMember.fireHim", emply_sq);
	}
	
// ############################################################### FILE SELECT (FOR DOWNLOAD)
	//샘플 게시판 파일 업로드
	@SuppressWarnings("unchecked")
	public Map<String, Object> selectFileInfo(int DOC_SQ) throws Exception {
		return (Map<String, Object>) selectOne("erpMember.selectFileInfo", DOC_SQ);
	}
	
	
// ############################################################### UPDATE MEMBER
	//update one
	public int updateMember(ErpMemberVo vo) throws Exception {
		return (int)update("erpMember.updateMember", vo.toMap());
	}

	//delete for update edu
	public void deleteMemberEductn(int emplysq) throws Exception {
		delete("erpMember.deleteMemberEductn", emplysq);
	}
	
	//delete for update carr
	public void deleteMemberCarr(int emplysq) throws Exception {
		delete("erpMember.deleteMemberCarr", emplysq);
	}
	
	//delete for update certfctn
	public void deleteMemberCertfctn(int emplysq) throws Exception {
		delete("erpMember.deleteMemberCertfctn", emplysq);
	}
	
	//delete for update oa
	public void deleteMemberOA(int emplysq) throws Exception {
		delete("erpMember.deleteMemberOA", emplysq);
	}
	
	//update / insert doc
	public void updateMemberDoc(ErpMemberDocumentVo vo) throws Exception {
		update("erpMember.updateFileToUnUse", vo.toMap());
		insert("erpMember.insertMemberDoc", vo.toMap());
	}
	
	
}
