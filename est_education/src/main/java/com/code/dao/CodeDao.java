package com.code.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.code.vo.CodeGroupVo;
import com.code.vo.CodeVo;

import common.dao.AbstractDAO;

@Repository("codeDao")
public class CodeDao extends AbstractDAO {

	@SuppressWarnings("unchecked")
	//이클립스 컴파일러가 알려주는 노란색 경고표시를 없애주는 역할.
	public List<CodeGroupVo> selectCodeGroupList() throws Exception {
		List<CodeGroupVo> out = (List<CodeGroupVo>) selectList("code.selectCodeGroupList");

		return out;
	}
	
	@SuppressWarnings("unchecked")
	public List<CodeGroupVo> selectCodeGroupList(Map<String, String> searchData) throws Exception {
		List<CodeGroupVo> out = (List<CodeGroupVo>) selectList("code.selectCodeGroupList", searchData);

		return out;
	}
	
	@SuppressWarnings("unchecked")
	public List<CodeVo> selectCodeList(Map<String, String> searchData) {
		
		return (List<CodeVo>) selectList("code.selectCodeList", searchData);
	}
	
	public int insertCodeGroup(CodeGroupVo codeGroupVo) {

		return (int) insert("code.insertCodeGroup", codeGroupVo);
	}
	
	public int insertCode(CodeVo codeVo) {
		
		return (int) insert("code.insertCode", codeVo);
	}
	
	public int updateCodeGroup(CodeGroupVo codeGroupVo) {

		return (int) update("code.updateCodeGroup", codeGroupVo);
	}
	
	public int updateCode(CodeVo codeVo) {

		return (int) update("code.updateCode", codeVo);
	}
	
	public int deleteCodeGroup(CodeGroupVo codeGroupVo) {
		
		return (int) delete("code.deleteCodeGroup", codeGroupVo);
	}
		
	public int deleteCode(CodeVo codeVo) {
		
		return (int) delete("code.deleteCode", codeVo);
	}
//
//	@SuppressWarnings("unchecked")
//	public List<MemberVo> selectMemberList(List<Long> mbrSqArr) throws Exception {
//		Map<String, Object> paramMap = new HashMap<>();
//		paramMap.put("MBR_SQ_ARR", mbrSqArr);
//
//		List<MemberVo> out = (List<MemberVo>) selectList("member.selectMemberList", paramMap);
//
//		return out;
//	}
//
//	public int insertMember(MemberVo inVo) throws Exception {
//		return (int) insert("member.insertMember", inVo);
//	}
//
//	public MemberVo selectMemberOne(long sq) throws Exception {
//		return (MemberVo) selectOne("member.selectMemberOne", new Long(sq));
//	}
//
//	public int updateMember(MemberVo inVo) throws Exception {
//		Map<String, Object> paramMap = inVo.toMap();
//		return (int) update("member.updateMember", paramMap);
//	}
//
//	public int updateLeaveDt(List<MemberVo> mbrVoList) throws Exception {
//		Map<String, Object> paramMap = new HashMap<>();
//		List<Long> mbrSqList = new ArrayList<>();
//		
//		for (int i = 0; i < mbrVoList.size(); i++) {
//			mbrSqList.add(mbrVoList.get(i).getMbrSq());
//			if (i == 0) 
//				paramMap.put("MBR_LEAVE_DT", mbrVoList.get(i).getMbrLeaveDt());
//		}
//		
//		paramMap.put("MBR_SQ_LIST", mbrSqList);
//		
//		return (int) update("member.updateLeaveDt", paramMap);
//	}
//
//	public int deleteMember(long sq) throws Exception {
//		return (int) delete("member.deleteMember", sq);
//	}
}
