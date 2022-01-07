package com.erp.admin.system.code.service;

import java.util.List;
import java.util.Map;

import com.erp.admin.system.code.vo.DetailCodeVo;
import com.erp.admin.system.code.vo.GroupCodeVo;

public interface ErpCodeService {

	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>> [[ 그룹 코드 ]] 관련
	
	//그룹 코드 목록 조회
	public List<GroupCodeVo> selectGroupCodeList() throws Exception;
	
	//그룹 코드 검색 조회
	public List<GroupCodeVo> searchGroupCodeList(Map<String, String> searchData) throws Exception;

	//그룹 코드 C, U, D 
	public int cudGroupCode(List<Map<String, Object>> groupCodeList) throws Exception;

	
	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>> [[ 상세 코드 ]] 관련
	
	//상세 코드 검색 조회
	public List<DetailCodeVo> searchDetailCodeList(Map<String, String> searchData) throws Exception;

	//상세 코드 C, U, D 
	public int cudDetailCode(List<Map<String, Object>> detailCodeList);
	
	
	

	
}
