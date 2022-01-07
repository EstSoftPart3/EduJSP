package com.erp.admin.business.project.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.erp.admin.business.project.dao.ErpProjectDao;
import com.erp.admin.business.project.vo.ErpProjectVo;

@Service(value = "erpProjectService")
public class ErpProjectServiceImpl implements ErpProjectService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="erpProjectDao")
	ErpProjectDao erpProjectDao;

	public List<ErpProjectVo> selectProjectPagingList(int start, int end) throws Exception {
		List<ErpProjectVo> list = new ArrayList<ErpProjectVo>();
		//System.out.println(srhVo.getType());
		try {
			list = erpProjectDao.selectProjectPagingList(start, end);
		}catch(Exception e) {
			log.info("############## selectProjectList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	public List<ErpProjectVo> selectProjectList(ErpProjectVo prjVo,int start, int end) {
		
		List<ErpProjectVo> list = new ArrayList<ErpProjectVo>();
		//System.out.println(srhVo.getType());
		try {
			list = erpProjectDao.selectProjectList(prjVo,start,end);
		}catch(Exception e) {
			log.info("############## selectProjectList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}

	@Override
	public int insertProject(ErpProjectVo prjVo) throws Exception {
		
		int result = 0;
		try {
			result = erpProjectDao.insertProject(prjVo);
		} catch(Exception e) {
			log.info("############## insertProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	@Override
	public int updateProject(ErpProjectVo prjVo) throws Exception {
		
		int result = 0;
		try {
			result = erpProjectDao.updateProject(prjVo);
		} catch(Exception e) {
			log.info("############## updateProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}


	@Override
	public ErpProjectVo selectProjectonly(String prjctSq) throws Exception {
		ErpProjectVo only = erpProjectDao.selectProjectInfo(prjctSq);
		return only;
	}

	@Override
	public int deleteProject(String prjctSq) throws Exception {
		
		int result = 0;
		try {
			result = erpProjectDao.deleteProject(prjctSq);
		} catch(Exception e) {
			log.info("############## deleteProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	@Override
	public int deleteProjectAll(List<ErpProjectVo> prjctSq) throws Exception {
		
		int result = 0;
		try {
			result = erpProjectDao.deleteProjectAll(prjctSq);
		} catch(Exception e) {
			log.info("############## deleteProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}


	@Override
	public int projectCountList() throws Exception {
		
		return erpProjectDao.projectCountList();
	}

	@Override
	public int getCountProjectPagingList(ErpProjectVo prjVo) {
		return erpProjectDao.getCountProjectPagingList(prjVo);
	}


}
