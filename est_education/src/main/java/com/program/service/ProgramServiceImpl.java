package com.program.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.program.dao.ProgramDao;
import com.program.vo.ProgramAuthVo;
import com.program.vo.ProgramPopVo;
import com.program.vo.ProgramVo;

@Service(value = "programService")
public class ProgramServiceImpl implements ProgramSevice {

	Logger log = Logger.getLogger(this.getClass());
	@Resource(name="programDao")
	ProgramDao programDao;
	
	//프로그램 SERVCIE
	//프로그램 리스트 출력
	@Override
	public List<ProgramVo> selectProgramList() throws Exception {
		
		List<ProgramVo> list = new ArrayList<ProgramVo>();
		
		try {
				list = programDao.selectProgramList();
		}catch(Exception e) {
			log.info("selectProgramList Exception for ProgramService ( "+e.getMessage()+" )");
		}
		
		return list;
	}
	
	//프로그램 리스트 검색, 조회
	@Override
	public List<ProgramVo> selectProgramList(Map<String, String> searchData) throws Exception {
		
		List<ProgramVo> list = new ArrayList<ProgramVo>();
		
		try {
			list = programDao.selectProgramList(searchData);
		} catch (Exception e) {
			log.info("selectProgramList Exception for ProgramService ( "+e.getMessage()+" )");
		}
		
		return list;
		
	}
	
	//프로그램 등록, 수정, 삭제
	@Override
	@SuppressWarnings("rawtypes")
	public int iudProgram(List<Map<String, Object>> programList) throws Exception {
		
		int result = 0;
		
			for(int i=0; i<programList.size(); i++) {
				
				ProgramVo programVo = new ProgramVo();
				
				Map map = programList.get(i);
				
				programVo.setProgramGrpNm((String)map.get("programGrpNm"));
				programVo.setProgramGrpCd((String)map.get("programGrpCd"));
				programVo.setProgramCd((String)map.get("programCd"));
				programVo.setProgramNm((String)map.get("programNm"));
				programVo.setSrcPath((String)map.get("srcPath"));
				programVo.setIsUse((String)map.get("isUse"));
				programVo.setNote((String)map.get("note"));
				
				String programStatus = (String)map.get("programStatus");
				
				if(programStatus.equals("I")) {	
					
					result += programDao.insertProgram(programVo);
					
				} else if(programStatus.equals("U")) {
					
					result += programDao.updateProgram(programVo);
					
				} else if(programStatus.equals("D")) {
					
					result += programDao.deleteProgram(programVo);
					
				}
				
			}
			
			try {
			
		}catch(Exception e) {
			
			log.info("iudProgram Exception for ProgramService ( "+e.getMessage()+" )");
		}
		
		return result;
		
	}
	
	//프로그램 팝업 프로그램 그룹 
	@Override
	public List<ProgramPopVo> selectProgramPop() throws Exception {
		
		List<ProgramPopVo> list = new ArrayList<ProgramPopVo>();
		
		try {
				list = programDao.selectProgramPop();
		}catch(Exception e) {
			log.info("selectProgramList Exception for ProgramService ( "+e.getMessage()+" )");
		}
		
		return list;
	}
	
	//프로그램 접근 권한 SERVCIE
	//프로그램 접근 권한 리스트 출력
	@Override
	public List<ProgramAuthVo> selectProgramAuthList(Map<String, String> searchData) throws Exception {
		
		List<ProgramAuthVo> list = new ArrayList<ProgramAuthVo>();
		
		try {
				list = programDao.selectProgramAuthList(searchData);
		}catch(Exception e) {
			log.info("selectProgramAuthList Exception for ProgramService ( "+e.getMessage()+" )");
		}
		
		return list;
	}
	
	//프로그램 접근 권한 등록, 수정, 삭제
	@Override
	@SuppressWarnings("rawtypes")
	public int iudProgramAuth(List<Map<String, Object>> programAuthList) throws Exception {

		int result = 0;
		
			for(int i=0; i<programAuthList.size(); i++) {
				
				ProgramAuthVo programAuthVo = new ProgramAuthVo();
				
				Map map = programAuthList.get(i);
				
				programAuthVo.setProgramCd((String)map.get("programCd"));
				programAuthVo.setProgramAuthCd((String)map.get("programAuthCd"));
				programAuthVo.setProgramAuthNm((String)map.get("programAuthNm"));
				programAuthVo.setIsAuthSelect((String)map.get("isAuthSelect"));
				programAuthVo.setIsAuthSave((String)map.get("isAuthSave"));
				programAuthVo.setIsAuthExcel((String)map.get("isAuthExcel"));
				
				String programAuthStatus = (String)map.get("programAuthStatus");

				if(programAuthStatus.equals("I")) {	
					
					result += programDao.insertProgramAuth(programAuthVo);
					
				} else if(programAuthStatus.equals("U")) {
					
					result += programDao.updateProgramAuth(programAuthVo);
					
				} else if(programAuthStatus.equals("D")) {
					
					result += programDao.deleteProgramAuth(programAuthVo);
					
				}
				
			}
			
			try {
			
		}catch(Exception e) {
			
			log.info("iudProgram Exception for ProgramService ( "+e.getMessage()+" )");
		}
		
		return result;
		
	}
	
}
