package com.erp.admin.business.project.service;

import java.util.List;

import com.erp.admin.business.project.vo.ErpProjectVo;

public interface ErpProjectService {
	
	/**
	 * 회원-목록 조회
	 * 
	 * @return List<MemberVo>
	 * @throws Exception
	 */
	public int insertProject(ErpProjectVo prjVo) throws Exception;
	public int updateProject(ErpProjectVo prjVo) throws Exception;
	public ErpProjectVo selectProjectonly(String prjctSq) throws Exception;
	public int deleteProject(String prjctSq) throws Exception;
	public int deleteProjectAll(List<ErpProjectVo> prjctSq) throws Exception;
	public int projectCountList() throws Exception;
	public List<ErpProjectVo> selectProjectPagingList(int start, int end) throws Exception;
	public List<ErpProjectVo> selectProjectList(ErpProjectVo prjVo,int start, int end);
	public int getCountProjectPagingList(ErpProjectVo prjVo);

}
