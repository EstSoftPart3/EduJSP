package com.program.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.program.vo.ProgramAuthVo;
import com.program.vo.ProgramPopVo;
import com.program.vo.ProgramVo;

import common.dao.AbstractDAO;

@Repository("programDao")
public class ProgramDao extends AbstractDAO {

	//------------------------------------------------------------------------------프로그램 DAO
	//프로그램 리스트 출력 
	@SuppressWarnings("unchecked")
	public List<ProgramVo> selectProgramList() throws Exception {
		
		List<ProgramVo> outer = (List<ProgramVo>) selectList("program.selectProgramList");
		return outer;
		
	}
	
	//프로그램 검색 조회
	@SuppressWarnings("unchecked")
	public List<ProgramVo> selectProgramList(Map<String, String> searchData) throws Exception{
		
		List<ProgramVo> outer = (List<ProgramVo>) selectList("program.selectProgramList", searchData);
		return outer;
		
	}
	
	//프로그램 등록
	public int insertProgram(ProgramVo programVo) {
		
		return (int) insert("program.insertProgram", programVo);
		
	}

	//프로그램 수정
	public int updateProgram(ProgramVo programVo) {
		
		return (int) update("program.updateProgram", programVo);
		
	}
	
	//프로그램 삭제
	public int deleteProgram(ProgramVo programVo) {
		
		return (int) delete("program.deleteProgram", programVo);
		
	}
	
	//프로그램 팝업 프로그램 그룹 
	@SuppressWarnings("unchecked")
	public List<ProgramPopVo> selectProgramPop() throws Exception {
		
		List<ProgramPopVo> outer = (List<ProgramPopVo>) selectList("program.selectProgramPop");
		return outer;
		
	}
	
	//------------------------------------------------------------------------------프로그램 접근 권한 DAO
	//프로그램 접근 권한 리스트 출력
	@SuppressWarnings("unchecked")
	public List<ProgramAuthVo> selectProgramAuthList(Map<String, String> searchData) {
		
		return (List<ProgramAuthVo>) selectList("program.selectProgramAuth", searchData);
		
	}
	
	//프로그램 접근 권한 등록
	public int insertProgramAuth(ProgramAuthVo programAuthVo) {
		
		return (int) insert("program.insertProgramAuth", programAuthVo);
		
	}

	//프로그램 접근 권한 수정
	public int updateProgramAuth(ProgramAuthVo programAuthVo) {
		
		return (int) update("program.updateProgramAuth", programAuthVo);
		
	}
	
	//프로그램 접근 권한 삭제 
	public int deleteProgramAuth(ProgramAuthVo programAuthVo) {
		
		return (int) delete("program.deleteProgramAuth", programAuthVo);
		
	}
	
}
