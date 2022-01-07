package com.code.controller;

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

import com.code.service.CodeService;
import com.code.vo.CodeGroupVo;
import com.code.vo.CodeVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CodeController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "codeService")
	CodeService codeService;
	
	@RequestMapping(value = "/code/openCodeListPage.do")
	public ModelAndView openMemberListPage(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/code/code_list_page");
		
		List<CodeGroupVo> list = codeService.selectCodeGroupList();
		
		mv.addObject("codeGroupList", list);

		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/code/searchCodeGrp.do")
	public ModelAndView searchCodeGrp(HttpServletRequest request, @RequestBody Map<String, String> searchData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		System.out.println("asdasdadadasd");
		
		List<CodeGroupVo> list = codeService.selectCodeGroupList(searchData);
		
		mv.addObject("codeGroupList", list);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/code/cudCode.do")
	public ModelAndView insertCodeGrp(HttpServletRequest request, @RequestParam String codeData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		JSONParser parser = new JSONParser();

		JSONArray codeArray = (JSONArray)parser.parse(codeData);
		
		List<Map<String, Object>> codeList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<codeArray.size(); i++) {
			
			JSONObject obj = (JSONObject) codeArray.get(i);
			
			Map<String, Object> resendMap = new HashMap<String, Object>();
            
	        resendMap.put("codeStatus", obj.get("codeStatus"));
	        resendMap.put("codeGrpCd", obj.get("codeGrpCd"));
	        resendMap.put("codeComCd", obj.get("codeComCd"));
	        resendMap.put("codeNm", obj.get("codeNm"));
	        resendMap.put("codeSortOrder", obj.get("codeSortOrder"));
	        resendMap.put("codeIsUse", obj.get("codeIsUse"));
	        resendMap.put("codeAttrValue1", obj.get("codeAttrValue1"));
	        resendMap.put("codeAttrValue2", obj.get("codeAttrValue2"));
	        resendMap.put("codeAttrValue3", obj.get("codeAttrValue3"));
	        resendMap.put("codeNote", obj.get("codeNote"));
	        
	        codeList.add(resendMap);
	        
		}
		
		codeService.cudCode(codeList);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/code/cudCodeGrp.do")
	public ModelAndView cudCodeGrp(HttpServletRequest request, @RequestParam String codeGrpData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		JSONParser parser = new JSONParser();

		JSONArray codeGrpArray = (JSONArray)parser.parse(codeGrpData);
		
		List<Map<String, Object>> codeGroupList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<codeGrpArray.size(); i++) {
			
			JSONObject obj = (JSONObject) codeGrpArray.get(i);
			
			Map<String, Object> resendMap = new HashMap<String, Object>();
            
	        resendMap.put("grpStatus", obj.get("grpStatus"));
	        resendMap.put("grpCd", obj.get("grpCd"));
	        resendMap.put("grpNm", obj.get("grpNm"));
	        resendMap.put("grpSortOrder", obj.get("grpSortOrder"));
	        resendMap.put("grpIsUse", obj.get("grpIsUse"));
	        resendMap.put("grpNote", obj.get("grpNote"));
	        
	        codeGroupList.add(resendMap);
	        
	        System.out.println(codeGroupList.toString());
	        
		}
		
		codeService.cudCodeGroup(codeGroupList);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/code/selectCode.do")
	public ModelAndView selectCode(HttpServletRequest request, @RequestBody Map<String, String> searchData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");	
		
		List<CodeVo> codeList = new ArrayList<CodeVo>();
		
		codeList = codeService.selectCodeList(searchData);
		
		mv.addObject("codeList", codeList);
		
		return mv;
	}

}
