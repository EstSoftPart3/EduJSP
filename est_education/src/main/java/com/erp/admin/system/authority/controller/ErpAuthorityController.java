package com.erp.admin.system.authority.controller;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.authority.vo.AuthorityVo;
import com.erp.admin.system.authority.service.ErpAuthorityService;
import com.erp.admin.system.authority.vo.ErpAuthorityMemberVo;
import com.erp.admin.system.authority.vo.ErpAuthorityVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ErpAuthorityController extends BaseController{

	
	//페이지 진입시 조회
	@Resource(name = "erpAuthorityService")
	ErpAuthorityService erpAuthorityService;
	@RequestMapping(value = "/erp/authority/openAuthorityListPage.do")
	public ModelAndView openAuthorityListPage(HttpServletRequest request, ErpAuthorityVo erpAuthorityVo) throws Exception {
		
		
		ModelAndView mv = new ModelAndView("/erp/system/authority/authority_list_page");
		
		List<ErpAuthorityVo> list = erpAuthorityService.selectAuthorityList();
		mv.addObject("authorityCommList", list);
		
		return mv;
	}
	
	//검색시 조회
	@ResponseBody
	@RequestMapping (value="/erp/authority/selectCommAuthSch.do")
	public ModelAndView selectCommAuthSch(@RequestParam(required=false) String keyWord, @RequestParam String useYna,
											@RequestParam(required=false) String searchCond,@RequestParam (required=false) String cmpnySq)throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, String> searchData=new HashMap<>();
		searchData.put("keyWord",keyWord);
		searchData.put("useYna", useYna);
		searchData.put("searchCond", searchCond);
		searchData.put("cmpnySq", cmpnySq);
		
		List<ErpAuthorityVo> list=erpAuthorityService.selectAuthorityList(searchData);

		mv.addObject("authorityCommList", list);
		
		return mv;
		
		
	}
	//사용여부 라디오버튼에 따른 조회(검색부분 포함)
	@ResponseBody
	@RequestMapping (value="/erp/authority/selectCommAuthUseWhthr")
	public ModelAndView selectCommAuthUseWhthr(@RequestParam String useYna,
			@RequestParam(required=false) String keyWord,@RequestParam(required=false) String searchCond, 
			@RequestParam (required=false) String cmpnySq)throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, String> searchData=new HashMap<>();
		searchData.put("keyWord",keyWord);
		searchData.put("useYna", useYna);
		searchData.put("searchCond", searchCond);
		searchData.put("cmpnySq", cmpnySq);
		System.out.println("#########radiobutton -> keyWord: "+keyWord+" useYna: "+useYna+" searchCond: "+searchCond+" cmpnySq: "+cmpnySq);
		List<ErpAuthorityVo> list=erpAuthorityService.selectAuthorityList(searchData);

		
		mv.addObject("authorityCommList", list);
		
		return mv;
		
		
	}
	//권한 CUD처리
	@ResponseBody
	@RequestMapping (value="/erp/authority/cudCommAuth.do")
	public ModelAndView cudCommAuth(@RequestParam String authData)throws Exception{

		ModelAndView mv = new ModelAndView("jsonView");
		/* jsonStringify로 인해 키와 밸류값이 데이터의 개별에 각자 지정되기 때문에 파싱작업 진행 */
		JSONParser parser = new JSONParser();

		JSONArray authorityArray = (JSONArray)parser.parse(authData);
		
		List<Map<String, Object>> authorityList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<authorityArray.size(); i++) {
			
			JSONObject obj = (JSONObject) authorityArray.get(i);
			
			Map<String, Object> authMap= new HashMap<String, Object>();
            
			authMap.put("authStatus", obj.get("status"));
			authMap.put("authNm", obj.get("authNm"));
			authMap.put("authCd", obj.get("authCd"));
			authMap.put("authUseWhthr", obj.get("authUseWhthr"));
			authMap.put("authNote", obj.get("authNote"));
			authMap.put("cmpnySq",obj.get("cmpnySq"));
	        
	        authorityList.add(authMap);
	        
		}
		
		System.out.println(authorityList);
		
		erpAuthorityService.cudCommAuth(authorityList);
		
		return mv;
		
		
	}
	//권한별 직원 전체조회
	@ResponseBody
	@RequestMapping (value="/erp/authority/selectAuthAllEmply.do")
	public ModelAndView selectAuthAllEmply(@RequestParam String authCd)throws Exception{
		System.out.println("컨트롤러 진입");
		ErpAuthorityMemberVo erpAuthorityMemberVo=new ErpAuthorityMemberVo();
		erpAuthorityMemberVo.setAuthCd(authCd);
		ModelAndView mv = new ModelAndView("jsonView");
		List<ErpAuthorityMemberVo> list=erpAuthorityService.selectAuthAllEmply(erpAuthorityMemberVo);

		mv.addObject("erpAuthorityEmplyList", list);
		
		return mv;
	
	}
	//권한별 직원 검색 조회
	@ResponseBody
	@RequestMapping (value="/erp/authority/selectAuthEmplySch.do")
	public ModelAndView selectAuthEmplySch(@RequestParam(required=false) String keyWord, 
											@RequestParam(required=false) String searchCond,
											@RequestParam String authCd)throws Exception{
		
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, String> searchData=new HashMap<>();
		searchData.put("keyWord",keyWord);
		searchData.put("searchCond", searchCond);
		searchData.put("authCd", authCd);
		
		List<ErpAuthorityMemberVo> list=erpAuthorityService.selectAuthEmplySch(searchData);

		mv.addObject("erpAuthorityEmplyList", list);
		
		return mv;
	}
	//권한별 직원 CUD
	@ResponseBody
	@RequestMapping (value="/erp/authority/cudAuthEmply.do")
	public ModelAndView cudAuthEmply(@RequestParam String authData,HttpServletResponse response)throws Exception{

		ModelAndView mv = new ModelAndView("jsonView");
		/* jsonStringify로 인해 키와 밸류값이 지정되기 때문에 파싱작업 진행 */
		JSONParser parser = new JSONParser();

		JSONArray authorityArray = (JSONArray)parser.parse(authData);
		
		List<Map<String, Object>> authorityList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<authorityArray.size(); i++) {
			
			JSONObject obj = (JSONObject) authorityArray.get(i);
			
			Map<String, Object> authMap= new HashMap<String, Object>();
            
			authMap.put("memberStatus", obj.get("status"));
			authMap.put("authCd", obj.get("authCd"));
			authMap.put("usrId", obj.get("usrId"));
			authMap.put("usrSq",obj.get("usrSq"));
			/*authMap.put("emplySq",obj.get("emplySq"));*/
			authMap.put("cmpnySq",obj.get("cmpnySq"));
		
	        authorityList.add(authMap);
	        
		}
		
		System.out.println(authorityList);
		int result;
		erpAuthorityService.cudAuthEmply(authorityList);
		return mv;
		
		
	}
	//회사별 권한조회 
	@ResponseBody
	@RequestMapping(value="/erp/authority/selectCommCmpny.do")
	public ModelAndView selectCommCmpny(@RequestParam String cmpnySq) {
		ModelAndView mv = new ModelAndView("jsonView");
		Map<String, String> searchData=new HashMap<>();
		searchData.put("cmpnySq",cmpnySq);
		List<ErpAuthorityVo> list=erpAuthorityService.selectAuthorityList(searchData);
		mv.addObject("authorityCommList", list);
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
