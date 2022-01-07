package com.program.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.program.service.ProgramSevice;
import com.program.vo.ProgramAuthVo;
import com.program.vo.ProgramPopVo;
import com.program.vo.ProgramVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ProgramController extends BaseController {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="programService")
	ProgramSevice programService;
	
	//프로그램 CONTROLLER
	//프로그램 리스트 출력
	@RequestMapping(value = "/program/openProgramListPage.do")
	public ModelAndView openProgramListPage(HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView("/program/program_list_page");
		
		List<ProgramVo> list = programService.selectProgramList();
		
		mav.addObject("programList", list);
		
		return mav;
		
	}
	
	//프로그램 검색, 조회
	@ResponseBody
	@RequestMapping(value = "/program/searchProgram.do")
	public ModelAndView searchProgram(HttpServletRequest request, @RequestBody Map<String, String> searchData) throws Exception {
		
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<ProgramVo> list = programService.selectProgramList(searchData);
		
		mav.addObject("programList", list);
		
		return mav;
	}
	
	//프로그램 등록, 수정, 삭제
	@ResponseBody
	@RequestMapping(value = "/program/iudprogram.do")
	public ModelAndView iudProgram(HttpServletRequest request, @RequestParam String programData) throws Exception {
		
		ModelAndView mvc = new ModelAndView("jsonView");
		
		JSONParser parser = new JSONParser();

		JSONArray programArray = (JSONArray)parser.parse(programData);
		
		List<Map<String, Object>> programList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<programArray.size(); i++) {
			
			JSONObject obj = (JSONObject) programArray.get(i);
			
			Map<String, Object> resendMap = new HashMap<String, Object>();
            
	        resendMap.put("programStatus", obj.get("programStatus"));
	        resendMap.put("programGrpNm", obj.get("programGrpNm"));
	        resendMap.put("programGrpCd", obj.get("programGrpCd"));
	        resendMap.put("programCd", obj.get("programCd"));
	        resendMap.put("programNm", obj.get("programNm"));
	        resendMap.put("srcPath", obj.get("srcPath"));
	        resendMap.put("isUse", obj.get("isUse"));
	        resendMap.put("note", obj.get("note"));
	        
	        programList.add(resendMap);
	        
	        
		}
		
		programService.iudProgram(programList);
		
		return mvc;
		
	}
	
	//프로그램 팝업 프로그램 그룹 
	@RequestMapping(value = "/program/openProgramPopPage.do")
	public ModelAndView openProgramPopPage(HttpServletRequest request) throws Exception {
		
		ModelAndView mav = new ModelAndView("/program/program_popup");
		
		List<ProgramPopVo> list = programService.selectProgramPop();
		
		mav.addObject("programPop", list);
		
		return mav;
		
	}
	
	//프로그램 접근 권한 CONTROLLER
	//프로그램 접근 권한 리스트 출력
	@RequestMapping(value = "/program/programAuthListPage.do")
	public ModelAndView openProgramAuthListPage(HttpServletRequest request, @RequestBody Map<String, String> searchData) throws Exception {
		
		ModelAndView mav = new ModelAndView("jsonView");
		
		List<ProgramAuthVo> list = new ArrayList<ProgramAuthVo>();
		
		list = programService.selectProgramAuthList(searchData);
		
		mav.addObject("programAuthList", list);
		
		return mav;
		
	}
	
	//프로그램 접근 권한 등록, 수정, 삭제
	@ResponseBody
	@RequestMapping(value = "/program/iudProgramAuth.do")
	public ModelAndView iudProgramAuth(HttpServletRequest request, @RequestParam String programAuthData) throws Exception {
		
		ModelAndView mav = new ModelAndView("jsonView");
		
		JSONParser parser = new JSONParser();

		JSONArray programAuthArray = (JSONArray)parser.parse(programAuthData);
		
		List<Map<String, Object>> programAuthList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<programAuthArray.size(); i++) {
			
			JSONObject obj = (JSONObject) programAuthArray.get(i);
			
			Map<String, Object> resendMap = new HashMap<String, Object>();
            
	        resendMap.put("programAuthStatus", obj.get("programAuthStatus"));
	        resendMap.put("programCd", obj.get("programCd"));
	        resendMap.put("programAuthCd", obj.get("programAuthCd"));
	        resendMap.put("programAuthNm", obj.get("programAuthNm"));
	        resendMap.put("isAuthSelect", obj.get("isAuthSelect"));
	        resendMap.put("isAuthSave", obj.get("isAuthSave"));
	        resendMap.put("isAuthExcel", obj.get("isAuthExcel"));
	        
	        programAuthList.add(resendMap);
	        
		}
		
		programService.iudProgramAuth(programAuthList);
		
		return mav;
	}
	
}
