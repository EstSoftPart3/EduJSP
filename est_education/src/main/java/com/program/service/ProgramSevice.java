package com.program.service;

import java.util.List;
import java.util.Map;

import com.program.vo.ProgramAuthVo;
import com.program.vo.ProgramPopVo;
import com.program.vo.ProgramVo;

public interface ProgramSevice {

	//프로그램 SEARVICE
	public List<ProgramVo> selectProgramList() throws Exception; //프로글매 리스트 출력
	public List<ProgramVo> selectProgramList(Map<String, String> searchData) throws Exception; //프로그램 검색, 조회
	public int iudProgram(List<Map<String, Object>> programList) throws Exception; //insert,update,delete 한번에 sevicer로 지정
	public List<ProgramPopVo> selectProgramPop() throws Exception; //프로그램 팝업 프로그램 그룹 
	
	//프로그램 접근 권한 SEARVICE
	public List<ProgramAuthVo> selectProgramAuthList(Map<String, String> searchData) throws Exception; //프로그램 접근 권한 리스트 출력
	public int iudProgramAuth(List<Map<String, Object>> programAuthList) throws Exception; //insert,update,delete 한번에 sevicer로 지정
	
}
