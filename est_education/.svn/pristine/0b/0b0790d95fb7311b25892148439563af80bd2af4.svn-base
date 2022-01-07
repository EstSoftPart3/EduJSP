package com.authority.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.authority.vo.AuthorityMemberVo;
import com.authority.vo.AuthorityVo;

import common.dao.AbstractDAO;

@Repository("authorityDao")
public class AuthorityDao extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<AuthorityVo> selectAuthorityGroupList() throws Exception {
		List<AuthorityVo> out = (List<AuthorityVo>) selectList("authority.selectAuthorityGroupList");

		return out;
	}
	
	@SuppressWarnings("unchecked")
	public List<AuthorityVo> selectAuthorityGroupList(Map<String, String> searchData) throws Exception {
		List<AuthorityVo> out = (List<AuthorityVo>) selectList("authority.selectAuthorityGroupList", searchData);

		return out;
	}
	
	@SuppressWarnings("unchecked")
	public List<AuthorityMemberVo> selectAuthorityMemberList(Map<String, String> searchData) {
		
		return (List<AuthorityMemberVo>) selectList("authority.selectAuthorityMemberList", searchData);
	}
	
//	//modal
//	@SuppressWarnings("unchecked")
//	public List<AuthorityMemberVo> selectMemberList(AuthorityMemberVo AuthorityMemberVo) {
//		
//		return (List<AuthorityMemberVo>) selectList("authority.selectMemberList");
//	}
	
	public int insertAuthority(AuthorityVo authorityVo) {

		return (int) insert("authority.insertAuthority", authorityVo);
	}
	
	public int insertMember(AuthorityMemberVo authorityMemberVo) {
		
		return (int) insert("authority.insertMember", authorityMemberVo);
	}

	//insertAuthMember=======================================================
//	public int insertAuthMember(AuthorityMemberVo authorityMemberVo) {
//		
//		return (int) insert("authority.insertMember", authorityMemberVo);
//	}
	
	public int updateAuthority(AuthorityVo authorityVo) {

		return (int) update("authority.updateAuthority", authorityVo);
	}
	
	public int updateMember(AuthorityMemberVo authorityMemberVo) {

		return (int) update("authority.updateMember", authorityMemberVo);
	}
	
	public int deleteAuthority(AuthorityVo authorityVo) {
		
		return (int) delete("authority.deleteAuthority", authorityVo);
	}
		
	public int deleteMember(AuthorityMemberVo authorityMemberVo) {
		
		return (int) delete("authority.deleteMember", authorityMemberVo);
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
