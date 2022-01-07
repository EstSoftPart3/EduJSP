package com.project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;
import com.project.vo.ProjectVo;
import common.dao.AbstractDAO;

@Repository("projectDao")
public class ProjectDao extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<ProjectVo> selectProjectrList(ProjectVo inVo) throws Exception{
		Map<String, Object> paramMap = inVo.toMap();
		List<ProjectVo> out = (List<ProjectVo>)selectList("project.selectprojectList", paramMap);
		
		return out;
	}
	
	public int insertProject(ProjectVo prjVo) {
		return (int) insert("project.insertProject", prjVo);
	}
	
	public int updateProject(ProjectVo prjVo) {
		return (int) update("project.updateProject", prjVo);
	}


	public ProjectVo selectProjectInfo(String prjctSq) {
		ProjectVo only = (ProjectVo)selectOne("project.selectprojectOne", prjctSq);
		return only;
	}

	public void updateProjectInfo(HashMap<String, Object> param) {
		update("project.updateProjectInfo", param);
		
	}

	public int deleteProject(String prjctSq) {
		return (int) delete("project.deleteProject", prjctSq);
	}
	
	public int deleteProjectAll(List<ProjectVo> prjctSq) {
		return (int) delete("project.deleteProjectAll", prjctSq);
	}
	
}
