package com.humanresources.service;

import java.util.List;
import java.util.Map;

import com.humanresources.vo.HumanresourcesVo;

public interface HumanresourcesService {
	
	public List<HumanresourcesVo> selectHumanresourcesList() throws Exception;
	
	public int inserthmnRsrcsSttstcs(List<Map<String, Object>> hmnRsrcsSttstcsList) throws Exception;
	
	public List<HumanresourcesVo> popupHumanresourcesList(Map<String, String> searchData) throws Exception;

}
