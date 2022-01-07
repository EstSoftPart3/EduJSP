package com.visitant.service;

import java.util.List;

import com.visitant.vo.VisitantVo;

public interface VisitantService {
	
	/** 방문자 목록 조회 */
	public List<VisitantVo> selectVisitantList(VisitantVo visiVo) throws Exception;
	
	/** 방문자 목록 조회(sq) */
	public List<VisitantVo> selectVisitantList(List<Long> visiSqArr) throws Exception;
	
	/** 방문자 추가 */
	public int insertVisitant(VisitantVo visiVo) throws Exception;
	
	
	/** 방문자 단일 조회*/
	public VisitantVo selectVisitantOne(long sq) throws Exception;

	/** 방문자 삭제*/
	public int deleteVisitant(long sq) throws Exception;
	
	/** 방문자 수정*/
	public int updateVisitant(VisitantVo visiVo) throws Exception;
	
	
	
}
