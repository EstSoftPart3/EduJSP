package com.skill.service;

import java.util.List;

import com.skill.vo.SkillVo;


public interface SkillService {
	
	/**
	 * 회원-목록 조회
	 * 
	 * @return List<SkillVo>
	 * @throws Exception
	 */
	public List<SkillVo> selectSkillList(SkillVo skillVo) throws Exception;
	
	/**
	 * 회원-목록 조회(sq)
	 * 
	 * @return List<SkillVo>
	 * @throws Exception
	 */
	public List<SkillVo> selectSkillList(List<Long> mbrSqArr) throws Exception;

	/**
	 * 회원-추가
	 * 
	 * @param mbrVo
	 * @return result
	 * @throws Exception
	 */
	public int insertSkill(SkillVo mbrVo) throws Exception;

	/**
	 * 회원-단일 조회
	 * 
	 * @param sq
	 * @return SkillVo
	 */
	public SkillVo selectSkillOne(String skillSq) throws Exception;

	/**
	 * 회원-수정
	 * 
	 * @param mbrVo
	 * @return result
	 * @throws Exception
	 */
	public int updateSkill(SkillVo mbrVo) throws Exception;
	
	/**
	 * 
	 * @param sq
	 * @return result
	 * @throws Exception
	 */

	/**
	 * 회원-삭제
	 * 
	 * @param sq
	 * @return result
	 * @throws Exception
	 */
	public int deleteSkill(String sq) throws Exception;

}
