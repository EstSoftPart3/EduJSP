package com.humanresources.controller;

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

import com.humanresources.service.HumanresourcesService;
import com.humanresources.vo.HumanresourcesVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HumanresourcesController extends BaseController{
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="humanresourcesService")
	HumanresourcesService humanresourcesService;
	
//selectlist
@RequestMapping(value = "/humanresources/openHumanresourcesPage.do")
public ModelAndView listHumanresourcesPage(HttpServletRequest request) throws Exception{
		
	ModelAndView mav = new ModelAndView("/humanresources/humanresources_list_page");
	
	List<HumanresourcesVo> list = humanresourcesService.selectHumanresourcesList();
	
	mav.addObject("humanresourcesList", list);

	return mav;
	
	}
	
@ResponseBody
@RequestMapping(value = "/humanresources/searchHumanresources.do")
public ModelAndView searchHumanresources(HttpServletRequest request) throws Exception {
		
	ModelAndView mv = new ModelAndView("jsonView");
	
	List<HumanresourcesVo> list = humanresourcesService.selectHumanresourcesList();

	mv.addObject("humanresourcesList", list);
	
	return mv;
	
	}
	
	//저장
@ResponseBody
@RequestMapping(value = "/hmnRsrcsSttstcs/hmnresourcesInsert.do")
public ModelAndView inserthmnRsrcsSttstcs(HttpServletRequest request, @RequestParam String hmnRsrcsSttstcsData) throws Exception {
	
	ModelAndView mv = new ModelAndView("jsonView");
	
	JSONParser parser = new JSONParser();

	JSONArray hmnRsrcsSttstcsArray = (JSONArray)parser.parse(hmnRsrcsSttstcsData);
	
	List<Map<String, Object>> hmnRsrcsSttstcsList = new ArrayList<Map<String, Object>>();
	
	for(int i=0; i<hmnRsrcsSttstcsArray.size(); i++) {
		
		JSONObject obj = (JSONObject) hmnRsrcsSttstcsArray.get(i);
		
		Map<String, Object> resendMap = new HashMap<String, Object>();
        
		resendMap.put("hmnRsrcsSttstcsStatus", obj.get("hmnRsrcsSttstcsStatus"));
		resendMap.put("hmnRsrcsSttstcsDt", obj.get("hmnRsrcsSttstcsDt"));
        resendMap.put("hmnRsrcsSttstcsSriNtAc", obj.get("hmnRsrcsSttstcsSriNtAc"));
        resendMap.put("hmnRsrcsSttstcsSriNtItv", obj.get("hmnRsrcsSttstcsSriNtItv"));
        resendMap.put("hmnRsrcsSttstcsJkNtAc", obj.get("hmnRsrcsSttstcsJkNtAc"));
        resendMap.put("hmnRsrcsSttstcsJkNtItv", obj.get("hmnRsrcsSttstcsJkNtItv"));
        resendMap.put("hmnRsrcsSttstcsSriSrcRs", obj.get("hmnRsrcsSttstcsSriSrcRs"));
        resendMap.put("hmnRsrcsSttstcsSriSrcSg", obj.get("hmnRsrcsSttstcsSriSrcSg"));
        resendMap.put("hmnRsrcsSttstcsSriSrcAp", obj.get("hmnRsrcsSttstcsSriSrcAp"));
        resendMap.put("hmnRsrcsSttstcsSriSrcAt", obj.get("hmnRsrcsSttstcsSriSrcAt"));
        resendMap.put("hmnRsrcsSttstcsSriSrcAs", obj.get("hmnRsrcsSttstcsSriSrcAs"));
        resendMap.put("hmnRsrcsSttstcsSriSrcCc", obj.get("hmnRsrcsSttstcsSriSrcCc"));
        resendMap.put("hmnRsrcsSttstcsJkSrcRs", obj.get("hmnRsrcsSttstcsJkSrcRs"));
        resendMap.put("hmnRsrcsSttstcsJkSrcSg", obj.get("hmnRsrcsSttstcsJkSrcSg"));
        resendMap.put("hmnRsrcsSttstcsJkSrcAp", obj.get("hmnRsrcsSttstcsJkSrcAp"));
        resendMap.put("hmnRsrcsSttstcsJkSrcAt", obj.get("hmnRsrcsSttstcsJkSrcAt"));
        resendMap.put("hmnRsrcsSttstcsJkSrcAs", obj.get("hmnRsrcsSttstcsJkSrcAs"));
        resendMap.put("hmnRsrcsSttstcsJkSrcCc", obj.get("hmnRsrcsSttstcsJkSrcCc"));
        resendMap.put("hmnRsrcsSttstcsNt", obj.get("hmnRsrcsSttstcsNt"));

        hmnRsrcsSttstcsList.add(resendMap);
        
	}
		
	humanresourcesService.inserthmnRsrcsSttstcs(hmnRsrcsSttstcsList);
	
	return mv;
	
	}
	
@ResponseBody
@RequestMapping(value = "/humanresources/buttonHumanresources.do")
public ModelAndView buttonHumanresources(HttpServletRequest request, @RequestBody Map<String, String> searchData) throws Exception {
	
	ModelAndView mv = new ModelAndView("jsonView");
	
	List<HumanresourcesVo> list = humanresourcesService.popupHumanresourcesList(searchData);

	mv.addObject("humanresourcesList", list);
	
	return mv;
	
	}
}