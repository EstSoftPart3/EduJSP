package com.skill.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;

import com.skill.vo.SkillVo;

import common.dao.AbstractDAO;

@Repository("SkillDao")
public class SkillDao extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<SkillVo> selectSkillList(SkillVo inVo) throws Exception {
		Map<String, Object> paramMap = inVo.toMap();
		List<SkillVo> out = (List<SkillVo>) selectList("Skill.selectSkillList", paramMap);

		return out;
	}
	
	@SuppressWarnings("unchecked")
	public List<SkillVo> selectSkillList(HttpServletRequest request) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		
		
		List<SkillVo> out = (List<SkillVo>) selectList("Skill.selectSkillList", paramMap);

		return out;
	}

	@SuppressWarnings("unchecked")
	public List<SkillVo> selectSkillList(List<Long> mbrSqArr) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("MBR_SQ_ARR", mbrSqArr);

		List<SkillVo> out = (List<SkillVo>) selectList("Skill.selectSkillList", paramMap);

		return out;
	}

	public int insertSkill(SkillVo inVo) throws Exception {
		return (int) insert("Skill.insertSkill", inVo);
	}

	public SkillVo selectSkillOne(String skillSq) throws Exception {
		return (SkillVo) selectOne("Skill.selectSkillOne", skillSq);
	}
	
	public int updateSkill(SkillVo inVo) throws Exception {
		Map<String, Object> paramMap = inVo.toMap();
		return (int) update("Skill.updateSkill", paramMap);
	}
	

	public int deleteSkill(String sq) throws Exception {
		return (int) delete("Skill.deleteSkill", sq);
	}
}
