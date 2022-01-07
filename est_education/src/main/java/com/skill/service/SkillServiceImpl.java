package com.skill.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.skill.vo.SkillVo;
import com.skill.dao.SkillDao;

@Service(value = "skillService")
public class SkillServiceImpl implements SkillService {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="SkillDao")
	SkillDao SkillDao;

	@Override
	public List<SkillVo> selectSkillList(SkillVo skillVo) throws Exception {
		List<SkillVo> list = new ArrayList<SkillVo>();
		
		try {
			list = SkillDao.selectSkillList(skillVo);
		}catch(Exception e) {
			log.info("############## selectSkillList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}
	
	@Override
	public List<SkillVo> selectSkillList(List<Long> mbrSqArr) throws Exception {
		List<SkillVo> list = new ArrayList<SkillVo>();
		
		try {
			list = SkillDao.selectSkillList(mbrSqArr);
		}catch(Exception e) {
			log.info("############## selectSkillList Failed!!! [" + e.getMessage() + "]");
		}
		
		return list;
	}

	@Override
	public int insertSkill(SkillVo skillVo) throws Exception {
		
		int result = 0;
		try {
			result = SkillDao.insertSkill(skillVo);
		} catch(Exception e) {
			log.info("############## insertSkill Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}

	@Override
	public SkillVo selectSkillOne(String skillSq) throws Exception {
		SkillVo mbr = new SkillVo();
		
		try {
			mbr = SkillDao.selectSkillOne(skillSq);
		}catch(Exception e) {
			log.info("############## selectSkillOne Failed!!! [" + e.getMessage() + "]");
		}
		
		return mbr;
	}
	

	@Override
	public int updateSkill(SkillVo SkillVo) throws Exception {
		int result = 0;
		
		try {
			result = SkillDao.updateSkill(SkillVo);
		} catch(Exception e) {
			log.info("############## updateSkill Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	

	@Override
	public int deleteSkill(String Sq) throws Exception {
		int result = 0;
		
		try {
			result = SkillDao.deleteSkill(Sq);
		} catch(Exception e) {
			log.info("############## deleteSkill Failed!!! [" + e.getMessage() + "]");
		}
		
		return result;
	}
	
}
