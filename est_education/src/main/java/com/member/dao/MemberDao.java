package com.member.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.member.vo.MemberCheckedVo;
import com.member.vo.MemberVo;

import common.dao.AbstractDAO;

@Repository("memberDao")
public class MemberDao extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<MemberVo> selectMemberList(MemberCheckedVo inVo) throws Exception {
		Map<String, Object> paramMap = inVo.toMap();
		List<MemberVo> out = (List<MemberVo>) selectList("member.selectMemberList", paramMap);

		return out;
	}

	@SuppressWarnings("unchecked")
	public List<MemberVo> selectMemberList(List<Long> mbrSqArr) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("MBR_SQ_ARR", mbrSqArr);

		List<MemberVo> out = (List<MemberVo>) selectList("member.selectMemberList", paramMap);

		return out;
	}

	public int insertMember(MemberVo inVo) throws Exception {
		return (int) insert("member.insertMember", inVo);
	}

	public MemberVo selectMemberOne(long sq) throws Exception {
		return (MemberVo) selectOne("member.selectMemberOne", new Long(sq));
	}

	public int updateMember(MemberVo inVo) throws Exception {
		Map<String, Object> paramMap = inVo.toMap();
		return (int) update("member.updateMember", paramMap);
	}

	public int updateLeaveDt(List<MemberVo> mbrVoList) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		List<Long> mbrSqList = new ArrayList<>();
		
		for (int i = 0; i < mbrVoList.size(); i++) {
			mbrSqList.add(mbrVoList.get(i).getMbrSq());
			if (i == 0) 
				paramMap.put("MBR_LEAVE_DT", mbrVoList.get(i).getMbrLeaveDt());
		}
		
		paramMap.put("MBR_SQ_LIST", mbrSqList);
		
		return (int) update("member.updateLeaveDt", paramMap);
	}

	public int deleteMember(long sq) throws Exception {
		return (int) delete("member.deleteMember", sq);
	}
	
	/*@SuppressWarnings("unchecked")
	//이클립스 컴파일러가 알려주는 노란색 경고표시를 없애주는 역할.
	public List<CodeVo> selectcomCodeList(Map<String, String> codeData) throws Exception {
//		Map<String, String> paramMap = codeData;
		List<CodeVo> out = (List<CodeVo>) selectList("member.selectcomCodeList", codeData);

		return out;
	}*/
	
	/*@SuppressWarnings("unchecked")
	public List<ProjectVo> selectProjectrList(ProjectVo inVo) throws Exception{
		Map<String, Object> paramMap = inVo.toMap();
		List<ProjectVo> out = (List<ProjectVo>)selectList("project.selectprojectList", paramMap);
		
		return out;
	}*/
}
