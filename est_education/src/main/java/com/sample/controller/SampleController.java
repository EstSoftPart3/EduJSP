package com.sample.controller;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.erp.admin.business.project.service.ErpProjectService;
import com.erp.admin.humanresources.member.service.ErpMemberService;
import com.sample.service.SampleService;
import com.sample.vo.SampleVo;

import common.base.controller.BaseController;

/**
 * The Class SampleController.
 */
@Controller
public class SampleController extends BaseController{

	/** The sample service. */
	@Resource(name = "sampleService")
	SampleService sampleService;
	
	@Resource(name = "erpMemberService")
	ErpMemberService erpMemberService;

	@Resource(name = "erpProjectService")
	ErpProjectService erpProjectService;
	
	/**
	 * 샘플 - 화면 오픈
	 * request : request
	 * Response :
	 *
	 * @param request the request
	 * @return the model and view
	 * @throws Exception the exception
	 */ 
	@RequestMapping(value = "/erp/sample/openSamplePage.do")
	public ModelAndView openSamplePage(HttpServletRequest request, SampleVo inVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("/sample/scr_smpl_page");
		
		int erpMemberCount = erpMemberService.countMemberList();
		int erpProjectCount = erpProjectService.projectCountList();
		
		mv.addObject("erpMemberCount", erpMemberCount);
		mv.addObject("erpProjectCount", erpProjectCount);
		
		
		return mv; 
	}

	
	/**
	 * 샘플 - 목록 조회
	 * request : request
	 * Response :.
	 *
	 * @param request the request
	 * @return the model and view
	 * @throws Exception the exception
	 */ 
	@RequestMapping(value = "/erp/sample/selectSampleList.do")
	public ModelAndView selectSampleList(HttpServletRequest request, SampleVo inVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<SampleVo> sampleList = sampleService.selectSampleList(inVo);
		
		mv.addObject("boardList", sampleList);
		
		return mv;
	}
	
}
