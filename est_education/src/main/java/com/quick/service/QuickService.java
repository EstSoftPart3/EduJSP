package com.quick.service;


import java.util.List;

import com.quick.vo.QuickVo;

public interface QuickService {
	
	//글목록
	public List<QuickVo> selectQuickList(QuickVo quickVo) throws Exception;
	//글쓰기
	public int insertQuick(QuickVo quickVo) throws Exception;
	//수정시 단일 찾기
	public int selectQuickOne(QuickVo quickVo)throws Exception;
	//글수정
	public int updateQuick(QuickVo quickVo) throws Exception;
	//글삭제
	public int deleteQuick(String qckSq) throws Exception;
	
	public QuickVo selectQuickonly(String qckSq)throws Exception;
	
	
	
	
	

	
	

}
