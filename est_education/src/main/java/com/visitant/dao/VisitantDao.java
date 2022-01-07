package com.visitant.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.visitant.vo.VisitantVo;

import common.dao.AbstractDAO;

@Repository("visitantDao")
public class VisitantDao extends AbstractDAO{
	
	@SuppressWarnings("unchecked")
	public List<VisitantVo> selectVisitantList(VisitantVo visiVo) throws Exception {
		Map<String, Object> paramMap = visiVo.toMap();
		List<VisitantVo> out = (List<VisitantVo>) selectList("visitant.selectVisitantList", paramMap);

		return out;
	}
	
	@SuppressWarnings("unchecked")
	public List<VisitantVo> selectVisitantList(List<Long> visiSqArr) throws Exception {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("VISI_SQ_ARR", visiSqArr);

		List<VisitantVo> out = (List<VisitantVo>) selectList("visitant.selectVisitantList", paramMap);

		return out;
	}
	
	
	public int insertVisitant(VisitantVo visiVo) throws Exception {
		return (int) insert("visitant.insertVisitant", visiVo);
	}
	
	public VisitantVo selectVisitantOne(long sq) throws Exception {
		return (VisitantVo) selectOne("visitant.selectVisitantOne", new Long(sq));
	}
	
	public int deleteVisitant(long sq) throws Exception {
		return (int) delete("visitant.deleteVisitant", sq);
	}
	
	public int updateVisitant(VisitantVo visiVo) throws Exception {
		Map<String, Object> paramMap = visiVo.toMap();
		return (int) update("visitant.updateVisitant", paramMap);
	}

}
