package com.project.service;

import java.util.List;

import com.project.vo.ProjectVo;

public interface ProjectService {
	
	/**
	 * 회원-목록 조회
	 * 
	 * @return List<MemberVo>
	 * @throws Exception
	 */
	public List<ProjectVo> selectProjectList(ProjectVo prjVo) throws Exception;
	public int insertProject(ProjectVo prjVo) throws Exception;
	public int updateProject(ProjectVo prjVo) throws Exception;
	public ProjectVo selectProjectonly(String prjctSq) throws Exception;
	public int deleteProject(String prjctSq) throws Exception;
	public int deleteProjectAll(List<ProjectVo> prjctSq) throws Exception;


}
