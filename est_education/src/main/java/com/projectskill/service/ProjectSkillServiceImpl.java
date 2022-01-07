package com.projectskill.service;

import java.util.ArrayList;
/*import java.util.HashMap;*/
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.projectskill.dao.ProjectSkillDao;
import com.projectskill.vo.ProjectSkillVo;

@Service(value = "projectSkillService")
public class ProjectSkillServiceImpl implements ProjectSkillService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="projectSkillDao")
	ProjectSkillDao projectSkillDao;

	public List<ProjectSkillVo> selectProjectSkillList(ProjectSkillVo prjskVo) throws Exception {
		List<ProjectSkillVo> list = new ArrayList<ProjectSkillVo>();
		
		try {
			list = projectSkillDao.selectProjectSkillList(prjskVo);
		}catch(Exception e) {
			log.info("############## selectProjectSkillList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}

	@Override
	public int insertProjectSkillList(List<ProjectSkillVo> prjskVo) throws Exception {
		
		int result = 0;

		try {
			result = projectSkillDao.insertProjectSkillList(prjskVo);
		} catch(Exception e) {
			log.info("############## insertProject Failed!!! [" + e.getMessage() + "]");
		}
		return result;
	}
	
	@Override
	public int updateProjectSkill(List<ProjectSkillVo> prjskVo) throws Exception {
		
		int result = 0;
		try {
			result = projectSkillDao.updateProjectSkill(prjskVo);
		} catch(Exception e) {
			log.info("############## updateProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public int deleteProjectSkill(ProjectSkillVo prjskVo) throws Exception {
		
		int result = 0;
		try {
			result = projectSkillDao.deleteProjectSkill(prjskVo);
		} catch(Exception e) {
			log.info("############## deleteProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	@Override
	public int deleteProjectSkillAll(List<ProjectSkillVo> prjskVo) throws Exception {
		
		int result = 0;
		try {
			result = projectSkillDao.deleteProjectSkillAll(prjskVo);
		} catch(Exception e) {
			log.info("############## deleteProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

}
