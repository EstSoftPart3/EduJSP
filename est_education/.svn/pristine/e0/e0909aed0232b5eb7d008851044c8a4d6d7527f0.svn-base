package com.projectskill.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import com.projectskill.vo.ProjectSkillVo;

import common.dao.AbstractDAO;

@Repository("projectSkillDao")
public class ProjectSkillDao extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<ProjectSkillVo> selectProjectSkillList(ProjectSkillVo inVo) throws Exception{
		Map<String, Object> paramMap = inVo.toMap();
		List<ProjectSkillVo> out = (List<ProjectSkillVo>)selectList("projectSkill.selectProjectSkillList", paramMap);
		
		return out;
	}
	
	public int insertProjectSkillList(List<ProjectSkillVo> prjskVo) {
		return (int) insert("projectSkill.insertProjectSkill", prjskVo);
	}
	
	public int updateProjectSkill(List<ProjectSkillVo> prjskVo) {
		return (int) update("projectSkill.updateProjectSkill", prjskVo);
	}

	public int deleteProjectSkill(ProjectSkillVo prjskVo) {
		return (int) delete("projectSkill.deleteProjectSkill", prjskVo);
	}
	
	public int deleteProjectSkillAll(List<ProjectSkillVo> prjskVo) {
		return (int) delete("projectSkill.deleteProjectSkillAll", prjskVo);
	}
	
}
