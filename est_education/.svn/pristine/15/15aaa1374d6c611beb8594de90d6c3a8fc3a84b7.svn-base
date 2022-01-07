package com.erp.admin.system.code.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.erp.admin.system.code.vo.DetailCodeVo;
import com.erp.admin.system.code.vo.GroupCodeVo;

import common.dao.AbstractDAO;

@Repository("ErpCodeDao")
public class ErpCodeDao  extends AbstractDAO{

	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>> [[ 그룹 코드 ]] 관련
	
	//그룹 코드 목록 조회
	public List<GroupCodeVo> selectGroupCodeList() throws Exception{
		
		List<GroupCodeVo> list = (List<GroupCodeVo>) selectList("erpCode.selectGroupCodeList");
		
		return list;
		
	}

	//그룹 코드 검색 조회
	public List<GroupCodeVo> searchGroupCodeList(Map<String, String> searchData) throws Exception{
		
		List<GroupCodeVo> list = (List<GroupCodeVo>) selectList("erpCode.selectGroupCodeList", searchData);
		
		return list;
	}

	//그룹 코드 C, U, D
	public int insertGroupCode(GroupCodeVo groupCodeVo) {
		//System.out.println(" [[ DAO Test ]] ");
		return (int) insert("erpCode.insertGroupCode", groupCodeVo);
	}

	public int updateGroupCode(GroupCodeVo groupCodeVo) {
		return (int) update("erpCode.updateGroupCode", groupCodeVo);
	}

	public int deleteGroupCode(GroupCodeVo groupCodeVo) {
		return (int) delete("erpCode.deleteGroupCode", groupCodeVo);
	}

	
	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>> [[ 그룹 코드 ]] 관련
	
	//상세 코드 검색 조회
	public List<DetailCodeVo> searchDetailCodeList(Map<String, String> searchData) {
		
		List<DetailCodeVo> list = (List<DetailCodeVo>) selectList("erpCode.selectDetailCodeList", searchData);
		
		return list;
	}

	
	//상세 코드 C, U, D
	public int insertDetailCode(DetailCodeVo detailCodeVo) {
		return (int) insert("erpCode.insertDetailCode", detailCodeVo);
	}

	public int updateDetailCode(DetailCodeVo detailCodeVo) {
		return (int) update("erpCode.updateDetailCode", detailCodeVo);
	}

	public int deleteDetailCode(DetailCodeVo detailCodeVo) {
		return (int) delete("erpCode.deleteDetailCode", detailCodeVo);
	}

}
