package com.humanresources.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.humanresources.vo.HumanresourcesVo;

import common.dao.AbstractDAO;

@Repository("humanresourcesDao")

public class HumanresourcesDao extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<HumanresourcesVo> selectHumanresourcesList() throws Exception {
		
	List<HumanresourcesVo> outer = (List<HumanresourcesVo>) selectList("humanresources.selectHumanresourcesList");
	return outer;
		
	}
	
	public int inserthmnRsrcsSttstcs (HumanresourcesVo humanresourcesVo) {
		
		return (int) insert("humanresources.insertHumanresourcesList", humanresourcesVo);
	}
	
	public int updatehmnRsrcsSttstcs(HumanresourcesVo humanresourcesVo) {

		return (int) update("humanresources.updateHumanresourcesList", humanresourcesVo);
	}
	
	@SuppressWarnings("unchecked")
	public List<HumanresourcesVo> popupHumanresourcesList(Map<String, String> searchData) throws Exception {
	
		List<HumanresourcesVo> out = (List<HumanresourcesVo>) selectList("humanresources.popupHumanresourcesList", searchData);
	
		return out;
	}

}
