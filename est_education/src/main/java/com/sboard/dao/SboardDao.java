package com.sboard.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;


import com.sboard.vo.SboardVo;
import common.dao.AbstractDAO;

@Repository("sboardDao")
public class SboardDao extends AbstractDAO {
	
	//list
	@SuppressWarnings(value = "unchecked")
	public List<SboardVo> selectSboardList(SboardVo sboardDao) throws Exception{
		Map<String, Object> paramMap = sboardDao.toMap();
		
		List<SboardVo> out = (List<SboardVo>) selectList("sboard.List",paramMap);
		
		return  out;
	}
	
	
	//글쓰기
	public int insertWrite(SboardVo sboardVo) throws Exception{
		return (int) insert("sboard.insert", sboardVo);
	}


	public SboardVo selectSboardContent(String bpNo) throws Exception {
		return (SboardVo) selectOne("sboard.content", bpNo);
	}


	public SboardVo selectUpdate(String bpNo) throws Exception {
		return (SboardVo) selectOne("sboard.content", bpNo);
		
	}


	public int UpdateContent(SboardVo sboardVo) throws Exception {
		return (int) update("sboard.Update", sboardVo);
	}


	

	public int deleteContentdata(SboardVo sboardVo) throws Exception {
		return (int) delete("sboard.DeleteData", sboardVo);
	}


	

	

}
