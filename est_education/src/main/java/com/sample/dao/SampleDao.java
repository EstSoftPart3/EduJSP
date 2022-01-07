package com.sample.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sample.vo.SampleVo;

import common.dao.AbstractDAO;


@Repository("sampleDao")
public class SampleDao extends AbstractDAO{

	
	/**
	 * 샘플 - 목록 조회
	 * request : request
	 * Response :.
	 *
	 * @param request the request
	 * @return the model and view
	 * @throws Exception the exception
	 */ 
	@SuppressWarnings("unchecked")
	public List<SampleVo> selectSampleList(SampleVo inVo) throws Exception{
		
		log.debug(inVo.toString());
		
		Map<String, Object> paramMap = inVo.toMap();
		List<SampleVo> out = (List<SampleVo>)selectList("sample.selectSampleList", paramMap);
		
		return out;
	}
	

	
}
