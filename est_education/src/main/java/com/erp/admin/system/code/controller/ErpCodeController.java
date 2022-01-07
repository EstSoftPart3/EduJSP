package com.erp.admin.system.code.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.erp.admin.system.code.service.ErpCodeService;
import com.erp.admin.system.code.vo.DetailCodeVo;
import com.erp.admin.system.code.vo.GroupCodeVo;


@Controller
public class ErpCodeController {

	@Resource(name = "ErpCodeService")
	ErpCodeService erpCodeService;
	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>> [[ 그룹 코드 ]] 관련
	
	//[[ 그룹 코드 목록 조회 ]]
	@RequestMapping(value = "/erp/system/code/openGroupCodeListPage.do")
	public ModelAndView openGroupCodeListPage() throws Exception {
		ModelAndView mv = new ModelAndView("/erp/system/code/group_code_list_page");
		
		List<GroupCodeVo> list = erpCodeService.selectGroupCodeList();
		
		mv.addObject("groupCodeList", list);

		return mv;
	}
	
	//[[ 그룹 코드 조건 조회 ]]
	@ResponseBody
	@RequestMapping(value = "/erp/system/code/searchGroupCodeList.do")
	public ModelAndView SearchGroupCode(@RequestBody Map<String, String> searchData) {
	
		ModelAndView mv = new ModelAndView("jsonView");
		
		try {
			
			List<GroupCodeVo> list = erpCodeService.searchGroupCodeList(searchData);
			mv.addObject("groupCodeList", list);
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		} finally {
			
		}
		
		return mv;
	}
	
	//[[ 그룹 코드 C, U, D ]]
	@ResponseBody
	@RequestMapping(value = "/erp/system/code/cudCodeGrp.do")
	public ModelAndView cudGroupCode(HttpServletRequest request, @RequestParam String groupCodeData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		JSONParser parser = new JSONParser();
		
		JSONArray jsonArray = (JSONArray)parser.parse(groupCodeData);
		
		List<Map<String, Object>> groupCodeList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<jsonArray.size(); i++) {
			
			JSONObject obj = (JSONObject) jsonArray.get(i);
			
			Map<String, Object> resendMap = new HashMap<String, Object>();
            
	        resendMap.put("grpCd", obj.get("grpCd"));
	        resendMap.put("compnySq", obj.get("compnySq"));
	        resendMap.put("grpCdNm", obj.get("grpCdNm"));
	        resendMap.put("grpCdOrder", obj.get("grpCdOrder"));
	        resendMap.put("grpCdUseWhthr", obj.get("grpCdUseWhthr"));
	        resendMap.put("grpCdCrrctnUsrSq", obj.get("grpCdCrrctnUsrSq"));
	        resendMap.put("grpCdNote", obj.get("grpCdNote"));
	       
	        resendMap.put("grpStatus", obj.get("grpStatus"));
	        
	        groupCodeList.add(resendMap);
	        
		}
		
		int cudResult = erpCodeService.cudGroupCode(groupCodeList);
		mv.addObject("cudResult", cudResult);
		
		return mv;
	}
	
	
	
	//<<<<<<<<<<<<<<<<<<아래 내용>>>>>>>>>>>>>>>>>>> [[ 상세 코드 ]] 관련
	
	//[[ 상세 코드 목록 조회 ]]
	@ResponseBody
	@RequestMapping(value = "/erp/system/code/searchDetailCodeList.do")
	public ModelAndView openDetailCodeListPage(HttpServletRequest request, @RequestBody Map<String, String> searchData) throws Exception {

		ModelAndView mv = new ModelAndView("jsonView");
		
		//System.out.println("[[ Controller Test ]]:"+searchData);
		
		List<DetailCodeVo> detailCodeList = erpCodeService.searchDetailCodeList(searchData);
		
		mv.addObject("detailCodeList", detailCodeList);
		
		//그룹 코드를 추가 후 상세 코드를 추가할 때 필요함  
		mv.addObject("grpCd", searchData.get("grpCd"));

		return mv;
	}
	
	
	//[[ 그룹 코드 C, U, D ]]
	@ResponseBody
	@RequestMapping(value = "/erp/system/code/cudCodeDtl.do")
	public ModelAndView cudDetailCode(HttpServletRequest request, @RequestParam String detailCodeData) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		System.out.println("[[ cudDetailCode Controller ]]" + detailCodeData);
		JSONParser parser = new JSONParser();
		
		JSONArray jsonArray = (JSONArray)parser.parse(detailCodeData);
		
		List<Map<String, Object>> detailCodeList = new ArrayList<Map<String, Object>>();
		
		for(int i=0; i<jsonArray.size(); i++) {
			
			JSONObject obj = (JSONObject) jsonArray.get(i);
			
			Map<String, Object> resendMap = new HashMap<String, Object>();
            
			resendMap.put("grpCd", obj.get("grpCd"));
	        resendMap.put("dtlCd", obj.get("dtlCd"));
	        resendMap.put("compnySq", obj.get("compnySq"));
	        resendMap.put("dtlCdNm", obj.get("dtlCdNm"));
	        resendMap.put("dtlCdOrder", obj.get("dtlCdOrder"));
	        resendMap.put("dtlCdUseWhthr", obj.get("dtlCdUseWhthr"));
	        resendMap.put("dtlCdCrrctnUsrSq", obj.get("dtlCdCrrctnUsrSq"));
	        resendMap.put("dtlCdPrprtVal1", obj.get("dtlCdPrprtVal1"));
	        resendMap.put("dtlCdPrprtVal2", obj.get("dtlCdPrprtVal2"));
	        resendMap.put("dtlCdPrprtVal3", obj.get("dtlCdPrprtVal3"));
	        resendMap.put("dtlCdNote", obj.get("dtlCdNote"));
	       
	        resendMap.put("dtlStatus", obj.get("dtlStatus"));
	        
	        detailCodeList.add(resendMap);
	        
		}
		
		int cudResult = erpCodeService.cudDetailCode(detailCodeList);
		mv.addObject("cudResult", cudResult);
		
		return mv;
	}
	
	
	
	
}
