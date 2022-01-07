package com.sample.service;

import java.util.List;

import com.sample.vo.SampleVo;

public interface SampleService {

	/**
	 * 샘플 - 목록 조회
	 * request : request
	 * Response :.
	 *
	 * @param request the request
	 * @return the model and view
	 * @throws Exception the exception
	 */ 
	public List<SampleVo> selectSampleList(SampleVo inVo) throws Exception;
	
	
}
