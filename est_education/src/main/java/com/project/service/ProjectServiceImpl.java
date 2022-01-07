package com.project.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.project.dao.ProjectDao;
import com.project.vo.ProjectVo;

@Service(value = "projectService")
public class ProjectServiceImpl implements ProjectService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="projectDao")
	ProjectDao projectDao;

	public List<ProjectVo> selectProjectList(ProjectVo proVo) throws Exception {
		List<ProjectVo> list = new ArrayList<ProjectVo>();
		
		try {
			list = projectDao.selectProjectrList(proVo);
		}catch(Exception e) {
			log.info("############## selectProjectList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}

	@Override
	public int insertProject(ProjectVo prjVo) throws Exception {
		
		int result = 0;
		try {
			result = projectDao.insertProject(prjVo);
		} catch(Exception e) {
			log.info("############## insertProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	@Override
	public int updateProject(ProjectVo prjVo) throws Exception {
		
		int result = 0;
		try {
			result = projectDao.updateProject(prjVo);
		} catch(Exception e) {
			log.info("############## updateProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}


	@Override
	public ProjectVo selectProjectonly(String prjctSq) throws Exception {
		ProjectVo only = projectDao.selectProjectInfo(prjctSq);
		return only;
	}

	@Override
	public int deleteProject(String prjctSq) throws Exception {
		
		int result = 0;
		try {
			result = projectDao.deleteProject(prjctSq);
		} catch(Exception e) {
			log.info("############## deleteProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	@Override
	public int deleteProjectAll(List<ProjectVo> prjctSq) throws Exception {
		
		int result = 0;
		try {
			result = projectDao.deleteProjectAll(prjctSq);
		} catch(Exception e) {
			log.info("############## deleteProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

}
