package com.visitant.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.visitant.dao.VisitantDao;
import com.visitant.vo.VisitantVo;

@Service(value = "visitantService")
public class VisitantServiceImpl implements VisitantService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="visitantDao")
	VisitantDao visitantDao;

	@Override
	public List<VisitantVo> selectVisitantList(VisitantVo visiVo) throws Exception {
		List<VisitantVo> list = new ArrayList<VisitantVo>();
		
		try {
			list = visitantDao.selectVisitantList(visiVo);
		}catch(Exception e) {
			log.info("############## selectVisitantList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	public List<VisitantVo> selectVisitantList(List<Long> visiSqArr) throws Exception {
		List<VisitantVo> list = new ArrayList<VisitantVo>();
		
		try {
			list = visitantDao.selectVisitantList(visiSqArr);
		}catch(Exception e) {
			log.info("############## selectVisitantList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	public int insertVisitant(VisitantVo visiVo) throws Exception {
		
		int result = 0;
		try {
			result = visitantDao.insertVisitant(visiVo);
		} catch(Exception e) {
			log.info("############## insertVisitant Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public VisitantVo selectVisitantOne(long sq) throws Exception {
		VisitantVo visi = new VisitantVo();
		
		try {
			visi = visitantDao.selectVisitantOne(sq);
		}catch(Exception e) {
			log.info("############## selectVisitantOne Failed!!! [" + e.getMessage() + "]");
		}
		
		return visi;
	}
	
	@Override
	public int deleteVisitant(long sq) throws Exception {
		int result = 0;
		
		try {
			result = visitantDao.deleteVisitant(sq);
		} catch(Exception e) {
			log.info("############## deleteVisitant Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	@Override
	public int updateVisitant(VisitantVo visiVo) throws Exception {
		int result = 0;
		
		try {
			result = visitantDao.updateVisitant(visiVo);
		} catch(Exception e) {
			log.info("############## updateVisitant Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
}
