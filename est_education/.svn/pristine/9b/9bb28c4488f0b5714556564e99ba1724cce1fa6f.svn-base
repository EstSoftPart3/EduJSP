package com.sample.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.sample.dao.SampleDao;
import com.sample.vo.SampleVo;

@Service(value = "sampleService")
public class SampleServiceImpl implements SampleService {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "sampleDao")
	SampleDao sampleDao;
	
	
	/**
	 * 샘플 - 목록 조회
	 * request : request
	 * Response :.
	 *
	 * @param request the request
	 * @return the model and view
	 * @throws Exception the exception
	 */ 
	public List<SampleVo> selectSampleList(SampleVo inVo) throws Exception{
		List<SampleVo> sampleList = new ArrayList<SampleVo>();
		try {	
			sampleList = sampleDao.selectSampleList(inVo);
		} catch (Exception e) {
			log.info("############## selectSampleList Failed!!! [" + e.getMessage() + "]");
		} 
		return sampleList;
	}
	


}
