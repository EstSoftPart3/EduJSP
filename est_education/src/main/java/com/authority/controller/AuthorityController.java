package com.authority.controller;

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

import com.authority.service.AuthorityService;
import com.authority.vo.AuthorityMemberVo;
import com.authority.vo.AuthorityVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AuthorityController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "authorityService")
	AuthorityService authorityService;
	
	@RequestMapping(value = "/authority/openAuthorityListPage.do")
	public ModelAndView openMemberListPage(HttpServletRequest request, AuthorityMemberVo AuthorityMemberVo) throws Exception {
		ModelAndView mv = new ModelAndView("/authority/authority_management_page");
		
		List<AuthorityVo> list = authorityService.selectAuthorityGroupList();
		
		mv.addObject("authorityGroupList", list);
		
//		List<AuthorityMemberVo> memberlist = authorityService.selectMemberList(AuthorityMemberVo);
//		
//		mv.addObject("selectMemberList", memberlist);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/authority/searchAuthority.do")
	public ModelAndView searchAuthority(HttpServletRequest request, @RequestBody Map<String, String> searchData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<AuthorityVo> list = authorityService.selectAuthorityGroupList(searchData);
		
		mv.addObject("authorityGroupList", list);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/authority/cudAuthority.do")
	public ModelAndView insertAuthority(HttpServletRequest request, @RequestParam String authData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		JSONParser parser = new JSONParser();

		JSONArray authorityArray = (JSONArray)parser.parse(authData);
		
		List<Map<String, Object>> authorityList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<authorityArray.size(); i++) {
			
			JSONObject obj = (JSONObject) authorityArray.get(i);
			
			Map<String, Object> resendMap = new HashMap<String, Object>();
            
			resendMap.put("authStatus", obj.get("authStatus"));
	        resendMap.put("authCd", obj.get("authCd"));
	        resendMap.put("authNm", obj.get("authNm"));
	        resendMap.put("useYn", obj.get("useYn"));
	        resendMap.put("note", obj.get("note"));
	        
	        authorityList.add(resendMap);
	        
		}
		
		authorityService.cudAuthority(authorityList);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/authority/cudMember.do")
	public ModelAndView cudMember(HttpServletRequest request, @RequestParam String memberData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		JSONParser parser = new JSONParser();

		JSONArray memberArray = (JSONArray)parser.parse(memberData);
		
		List<Map<String, Object>> memberList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<memberArray.size(); i++) {
			
			JSONObject obj = (JSONObject) memberArray.get(i);
			
			Map<String, Object> resendMap = new HashMap<String, Object>();
            
			resendMap.put("memberStatus", obj.get("memberStatus"));
	        resendMap.put("memberSq", obj.get("memberSq"));
	        resendMap.put("memberNm", obj.get("memberNm"));
	        resendMap.put("memberDprtmt", obj.get("memberDprtmt"));
	        resendMap.put("memberPosition", obj.get("memberPosition"));
	        
	        memberList.add(resendMap);
	        
	        System.out.println(memberList.toString());
	        
		}
		
		authorityService.cudMember(memberList);
		
		return mv;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/authority/selectMember.do")
	public ModelAndView selectMember(HttpServletRequest request, @RequestBody Map<String, String> searchData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");	
		
		List<AuthorityMemberVo> memberList = new ArrayList<AuthorityMemberVo>();
		
		memberList = authorityService.selectAuthorityMemberList(searchData);
		
		mv.addObject("memberList", memberList);
		
		return mv;
	}
	


}
