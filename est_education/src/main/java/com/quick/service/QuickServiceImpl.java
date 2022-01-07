package com.quick.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.quick.dao.QuickDao;
import com.quick.vo.QuickVo;

@Service(value = "quickService")
public class QuickServiceImpl implements QuickService {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "quickDao")
	QuickDao quickDao;

	
	@Override
	public List<QuickVo> selectQuickList(QuickVo quickVo) throws Exception {
		
		List<QuickVo> list = new ArrayList<QuickVo>();
		
		try {
			list = quickDao.selectQuickList(quickVo);
		}catch(Exception e) {
			log.info(" selectQuickList 실패 [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	//글쓰기
	@Override
	public int insertQuick(QuickVo quickVo) throws Exception {
		int result = 0;
		try {
			result = quickDao.insertQuick(quickVo);
		} catch(Exception e) {
			log.info(" insertQuick 실패 [" + e.getMessage() + "]");
		}

		return result;
	}
	
	//단일조회하여 글수정 
	@Override
	public int selectQuickOne(QuickVo quickVo) {
		int result= 0;
		
		try {
			result = quickDao.selectQuickOne(quickVo);
		}catch(Exception e) {
			log.info(" selectQuickOne 실패 [" + e.getMessage() + "]");
		}
		
		return result;
	}

	//글수정
	@Override
	public int updateQuick(QuickVo quickVo) {
		
		int result = 0;
		
		try {
			result = quickDao.updateQuick(quickVo);
		} catch(Exception e) {
			log.info(" updateQuick 실패 [" + e.getMessage() + "]");
		}
		return result;
	}

	//글삭제
	@Override
	public int deleteQuick(String qckSq) {
		
		int result = 0;
		
		try {
			result = quickDao.deleteQuick(qckSq);
		} catch(Exception e) {
			log.info(" deleteQuick 실패 [" + e.getMessage() + "]");
		}
		
		return result;
	}

	
	@Override
	public QuickVo selectQuickonly(String qckSq) throws Exception {
		
		QuickVo only = quickDao.selectQuickInfo(qckSq);
		
		return only;
	}



	

	
	
	
	
	

	
}
