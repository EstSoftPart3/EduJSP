package com.quick.dao;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.quick.vo.QuickVo;

import common.dao.AbstractDAO;

@Repository("quickDao")
public class QuickDao extends AbstractDAO {
	
	//글목록
	@SuppressWarnings("unchecked")
	public List<QuickVo> selectQuickList(QuickVo quickVo) throws Exception {
		
		Map<String, Object> paramMap = quickVo.toMap();
		
		List<QuickVo> out = (List<QuickVo>) selectList("quick.selectQuickList", paramMap);

		return out;
	}

	//글쓰기
	public int insertQuick(QuickVo quickVo) throws Exception{
		// TODO Auto-generated method stub
		return (int) insert("quick.insertQuick", quickVo);
	}
	
	//수정시 단일 찾기
	public int selectQuickOne(QuickVo quickVo) {
		// TODO Auto-generated method stub
		return (int) selectOne("quick.selectQuickOne", quickVo );
	}
	
	public QuickVo selectQuickInfo(String qckSq) throws Exception{
		QuickVo only = (QuickVo)selectOne("quick.selectQuickOne", qckSq);
		return only;
	}
	
	
	//글수정
	public int updateQuick(QuickVo quickVo) throws Exception{
		// TODO Auto-generated method stub
		return (int) update("quick.updateQuick", quickVo);
	}
	
	
	//글삭제
	public int deleteQuick(String qckSq) throws Exception{
		// TODO Auto-generated method stub
		return (int) delete("quick.deleteQuick",qckSq);
	}
	

	

	

	

	

	


	
}
