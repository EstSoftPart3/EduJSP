package com.erp.admin.system.authority.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.json.simple.JSONArray;

import com.erp.admin.system.authority.vo.ErpAuthorityMemberVo;
import com.erp.admin.system.authority.vo.ErpAuthorityVo;

public interface ErpAuthorityService {
	public List<ErpAuthorityVo> selectAuthorityList();
	public List<ErpAuthorityVo> selectAuthorityList(Map<String, String> searchData);
	/*public List<ErpAuthorityVo> selectAuthorityList(String useYna);*/
	public int cudCommAuth(List<Map<String, Object>> authorityList);
	public List<ErpAuthorityMemberVo> selectAuthAllEmply(ErpAuthorityMemberVo erpAuthorityMemberVo);
	public List<ErpAuthorityMemberVo> selectAuthEmplySch(Map<String,String> searchData);
	public int cudAuthEmply(List<Map<String, Object>> authorityList);
	
}
