package com.authority.service;

import java.util.List;
import java.util.Map;

import com.authority.vo.AuthorityMemberVo;
import com.authority.vo.AuthorityVo;

public interface AuthorityService {
	
	/**
	 * 권한코드그룹-목록 조회
	 * 
	 * @return List<AuthorityVO>
	 * @throws Exception
	 */
	public List<AuthorityVo> selectAuthorityGroupList() throws Exception;
	
	/**
	 * 권한코드그룹-목록 조회
	 * 
	 * @param searchData
	 * @return List<AuthorityVO>
	 * @throws Exception
	 */
	public List<AuthorityVo> selectAuthorityGroupList(Map<String, String> searchData) throws Exception;
	
	/**
	 * 권한코드그룹-추가, 수정, 삭제 CUD
	 * 
	 * @param authorityVo
	 * @return result
	 * @throws Exception
	 */
	public int cudAuthority(List<Map<String, Object>> authorityGroupList) throws Exception;
	
	/**
	 * 사원-추가, 수정, 삭제 CUD
	 * 
	 * @param memberVo
	 * @return result
	 * @throws Exception
	 */
	public int cudMember(List<Map<String, Object>> memberList) throws Exception;
	
//	//insertAuthMember==============================================================
//	public int insertAuthMember(List<Map<String, Object>> memberList) throws Exception;
	
	/**
	 * 사원-목록 조회
	 * 
	 * @param searchData
	 * @return List<AuthorityVo>
	 * @throws Exception
	 */
	public List<AuthorityMemberVo> selectAuthorityMemberList(Map<String, String> searchData) throws Exception;

//	//modal
//	public List<AuthorityMemberVo> selectMemberList(AuthorityMemberVo AuthorityMemberVo) throws Exception;
	
	
	/**
	 * 회원-목록 조회(sq)
	 * 
	 * @return List<MemberVo>
	 * @throws Exception
	 */

}
