package com.erp.admin.business.projectskill.service;

import java.util.List;

import com.erp.admin.business.projectskill.vo.ErpProjectSkillVo;

public interface ErpProjectSkillService {
	
	/**
	 * 회원-목록 조회
	 * 
	 * @return List<MemberVo>
	 * @throws Exception
	 */
	public List<ErpProjectSkillVo> selectProjectSkillList(ErpProjectSkillVo prjskVo) throws Exception;
	public int insertProjectSkillList(List<ErpProjectSkillVo> prjskVo) throws Exception;
	public int updateProjectSkill(List<ErpProjectSkillVo> prjskVo) throws Exception;
	public int deleteProjectSkill(ErpProjectSkillVo prjskVo) throws Exception;
	public int deleteProjectSkillAll(List<ErpProjectSkillVo> prjskVo) throws Exception;

	
}
