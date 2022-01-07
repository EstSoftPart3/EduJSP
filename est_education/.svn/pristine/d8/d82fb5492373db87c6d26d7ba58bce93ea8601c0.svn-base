package com.code.service;

import java.util.List;
import java.util.Map;

import com.code.vo.CodeGroupVo;
import com.code.vo.CodeVo;

public interface CodeService {
	
	/**
	 * 코드그룹-목록 조회
	 * 
	 * @return List<CodeGroupVO>
	 * @throws Exception
	 */
	public List<CodeGroupVo> selectCodeGroupList() throws Exception;
	
	/**
	 * 코드그룹-목록 조회
	 * 
	 * @param searchData
	 * @return List<CodeGroupVO>
	 * @throws Exception
	 */
	public List<CodeGroupVo> selectCodeGroupList(Map<String, String> searchData) throws Exception;
	
	/**
	 * 코드그룹-추가, 수정, 삭제 CUD
	 * 
	 * @param codeGroupVo
	 * @return result
	 * @throws Exception
	 */
	public int cudCodeGroup(List<Map<String, Object>> codeGroupList) throws Exception;
	
	/**
	 * 코드-추가, 수정, 삭제 CUD
	 * 
	 * @param codeGroupVo
	 * @return result
	 * @throws Exception
	 */
	public int cudCode(List<Map<String, Object>> codeList) throws Exception;
	
	/**
	 * 코드-목록 조회
	 * 
	 * @param searchData
	 * @return List<CodeVo>
	 * @throws Exception
	 */
	public List<CodeVo> selectCodeList(Map<String, String> searchData) throws Exception;
	
	
	/**
	 * 회원-목록 조회(sq)
	 * 
	 * @return List<MemberVo>
	 * @throws Exception
	 */

}
