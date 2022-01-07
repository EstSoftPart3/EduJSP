package com.erp.admin.business.project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import com.erp.admin.business.project.vo.ErpProjectVo;

import common.dao.AbstractDAO;

@Repository("erpProjectDao")
public class ErpProjectDao extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<ErpProjectVo> selectProjectList(ErpProjectVo prjVo,int start, int end) throws Exception{
		Map<String, Object> paramMap = prjVo.toMap();
		paramMap.put("start", start);
		paramMap.put("end", end);
		paramMap.put("prjVo", prjVo);
		return selectList("erpProject.selectProjectPagingList", paramMap);
	}
	@SuppressWarnings("unchecked")
	public List<ErpProjectVo> selectProjectPagingList(int start, int end) throws Exception{
		//System.out.println(srhVo.getType());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		return selectList("erpProject.selectProjectPagingList", map);
	}
	
	public int projectCountList() {
		return (Integer) selectOne("erpProject.projectCountList");
	}
	public int insertProject(ErpProjectVo prjVo) {
		return (int) insert("erpProject.insertProject", prjVo);
	}
	
	public int updateProject(ErpProjectVo prjVo) {
		return (int) update("erpProject.updateProject", prjVo);
	}


	public ErpProjectVo selectProjectInfo(String prjctSq) {
		ErpProjectVo only = (ErpProjectVo)selectOne("erpProject.selectprojectOne", prjctSq);
		return only;
	}

	public void updateProjectInfo(HashMap<String, Object> param) {
		update("erpProject.updateProjectInfo", param);
		
	}

	public int deleteProject(String prjctSq) {
		return (int) delete("erpProject.deleteProject", prjctSq);
	}
	
	public int deleteProjectAll(List<ErpProjectVo> prjctSq) {
		return (int) delete("erpProject.deleteProjectAll", prjctSq);
	}
	public int getCountProjectPagingList(ErpProjectVo prjVo) {
		
		return (int) selectOne("erpProject.getCountProjectPagingList", prjVo.toMap());
	}

	
}
