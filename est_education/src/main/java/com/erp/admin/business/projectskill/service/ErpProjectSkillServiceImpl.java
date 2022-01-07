package com.erp.admin.business.projectskill.service;

import java.util.ArrayList;
/*import java.util.HashMap;*/
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.erp.admin.business.projectskill.dao.ErpProjectSkillDao;
import com.erp.admin.business.projectskill.vo.ErpProjectSkillVo;

@Service(value = "erpProjectSkillService")
public class ErpProjectSkillServiceImpl implements ErpProjectSkillService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="erpProjectSkillDao")
	ErpProjectSkillDao erpProjectSkillDao;

	public List<ErpProjectSkillVo> selectProjectSkillList(ErpProjectSkillVo prjskVo) throws Exception {
		List<ErpProjectSkillVo> list = new ArrayList<ErpProjectSkillVo>();
		
		try {
			list = erpProjectSkillDao.selectProjectSkillList(prjskVo);
		}catch(Exception e) {
			log.info("############## selectProjectSkillList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}

	@Override
	public int insertProjectSkillList(List<ErpProjectSkillVo> prjskVo) throws Exception {
		
		int result = 0;

		try {
			result = erpProjectSkillDao.insertProjectSkillList(prjskVo);
		} catch(Exception e) {
			log.info("############## insertProject Failed!!! [" + e.getMessage() + "]");
		}
		return result;
	}
	
	@Override
	public int updateProjectSkill(List<ErpProjectSkillVo> prjskVo) throws Exception {
		
		int result = 0;
		try {
			result = erpProjectSkillDao.updateProjectSkill(prjskVo);
		} catch(Exception e) {
			log.info("############## updateProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public int deleteProjectSkill(ErpProjectSkillVo prjskVo) throws Exception {
		
		int result = 0;
		try {
			result = erpProjectSkillDao.deleteProjectSkill(prjskVo);
		} catch(Exception e) {
			log.info("############## deleteProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
	@Override
	public int deleteProjectSkillAll(List<ErpProjectSkillVo> prjskVo) throws Exception {
		
		int result = 0;
		try {
			result = erpProjectSkillDao.deleteProjectSkillAll(prjskVo);
		} catch(Exception e) {
			log.info("############## deleteProject Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

}
