package com.sboard.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


import com.sboard.dao.SboardDao;
import com.sboard.vo.SboardVo;


@Service(value = "sboardService")
public class SboardServiceImpl implements SboardService {
	
    Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="sboardDao")
	SboardDao sboardDao;

	@Override
	public List<SboardVo> selectSboardList(SboardVo sboardVo) throws Exception {
         List<SboardVo> list = new ArrayList<SboardVo>();
		
		try {
			list = sboardDao.selectSboardList(sboardVo);
		}catch(Exception e) {
			log.info("############## selectQuestionList Failed!!! [" + e.getMessage() + "]");
		}
		return list;
	}

	//글쓰기
	@Override
	public int insertWrite(SboardVo sboardVo) throws Exception {
		int result = 0;
		try {
			result = sboardDao.insertWrite(sboardVo);
		} catch(Exception e) {
			log.info(" insertQuestion 실패 [" + e.getMessage() + "]");
		}

		return result;
	}
	
	//게사판 내용
	@Override
	public SboardVo selectSboardContent(String bpNo) throws Exception {
		SboardVo Content = new SboardVo();
		
		try {
			Content = sboardDao.selectSboardContent(bpNo);
		}catch(Exception e) {
			log.info("############## selectSboardContent Failed!!! [" + e.getMessage() + "]");
		}
		
		return Content;
	}
	
	//수정 페이지
	@Override
	public SboardVo selectUpdate(String bpNo) throws Exception {
		SboardVo Update = new SboardVo();
		
		try {
			Update = sboardDao.selectUpdate(bpNo);
		}catch(Exception e) {
			log.info("############## selectUpdate Failed!!! [" + e.getMessage() + "]");
		}
		
		return Update;
	}
	
	//Data 수정
	@Override
	public int UpdateContent(SboardVo sboardVo) throws Exception {
		int result = 0;
		
		try {
			result = sboardDao.UpdateContent(sboardVo);
		} catch(Exception e) {
			log.info("############## updateQuestion Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	//Data 삭제
	@Override
	public int DeleteContentData(SboardVo sboardVo) throws Exception {
		int Delete = 0;
		
		try {
			Delete = sboardDao.deleteContentdata(sboardVo);
		} catch(Exception e) {
			log.info("############## deleteContent Failed!!! [" + e.getMessage() + "]");
		}
		
		return Delete;
	}

}
