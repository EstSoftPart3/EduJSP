package com.erp.admin.business.projectskill.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.erp.admin.business.projectskill.vo.ErpProjectSkillVo;

import common.dao.AbstractDAO;

@Repository("erpProjectSkillDao")
public class ErpProjectSkillDao extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<ErpProjectSkillVo> selectProjectSkillList(ErpProjectSkillVo inVo) throws Exception{
		Map<String, Object> paramMap = inVo.toMap();
		List<ErpProjectSkillVo> out = (List<ErpProjectSkillVo>)selectList("erpProjectSkill.selectProjectSkillList", paramMap);
		
		return out;
	}
	
	public int insertProjectSkillList(List<ErpProjectSkillVo> prjskVo) {
		return (int) insert("erpProjectSkill.insertProjectSkill", prjskVo);
	}
	
	public int updateProjectSkill(List<ErpProjectSkillVo> prjskVo) {
		return (int) update("erpProjectSkill.updateProjectSkill", prjskVo);
	}

	public int deleteProjectSkill(ErpProjectSkillVo prjskVo) {
		return (int) delete("erpProjectSkill.deleteProjectSkill", prjskVo);
	}
	
	public int deleteProjectSkillAll(List<ErpProjectSkillVo> prjskVo) {
		return (int) delete("erpProjectSkill.deleteProjectSkillAll", prjskVo);
	}
	
}
