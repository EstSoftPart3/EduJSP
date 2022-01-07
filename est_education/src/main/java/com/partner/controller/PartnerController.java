package com.partner.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.partner.service.PartnerService;
import com.partner.vo.PartnerVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PartnerController extends BaseController{

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "partnerService")
	PartnerService partnerService;
	
	@RequestMapping(value = "/partner/openPartnerListPage.do")
	public ModelAndView openPartnerListPage(HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("/partner/partner_list_page");
		
		List<PartnerVo> list = partnerService.selectPartnerList();
		
		mv.addObject("partnerList", list);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/partner/selectPartnerBizTypeList.do")
	public ModelAndView openPartnerListPage(HttpServletRequest request, PartnerVo prtnVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		Map<String, String> searchData = new HashMap<>();
		
		searchData.put("codeComCd", prtnVo.getCodeComCd());
		searchData.put("prtnCorpNm", prtnVo.getPrtnCorpNm());
		
		List<PartnerVo> list = partnerService.selectPartnerList(searchData);
		
		mv.addObject("partnerList", list);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/partner/openPartnerDetailPage.do")
	public ModelAndView openPartnerDetailPage(HttpServletRequest request, long sq) throws Exception {
		
		ModelAndView mv = new ModelAndView("/partner/partner_detail_page");
		
		PartnerVo prtnVo = partnerService.selectPartnerOne(sq);
		
		mv.addObject("partnerVo", prtnVo);
		
		return mv;
	}
	
	@RequestMapping("/partner/openPartnerUpdatePage.do")
	public ModelAndView openPartnerUpdatePage(HttpServletRequest request, long sq) throws Exception {
		
		ModelAndView mv = new ModelAndView("/partner/partner_update_page");
		
		PartnerVo prtnVo = partnerService.selectPartnerOne(sq);
		
		mv.addObject("partnerVo", prtnVo);
		
		return mv;
	}
	
	@RequestMapping("/partner/updatePartner.do")
	public ModelAndView updatePartner(HttpServletRequest request, PartnerVo prtnVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = partnerService.updatePartner(prtnVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
	
	@RequestMapping("/partner/openPartnerInsertPage.do")
	public ModelAndView openPartnerInsertPage(HttpServletRequest request) throws Exception {
		
		ModelAndView mv = new ModelAndView("/partner/partner_insert_page");
		
		return mv;
	}
	
	@RequestMapping("/partner/insertPartner.do")
	public ModelAndView insertPartner(HttpServletRequest request, PartnerVo prtnVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = partnerService.insertPartner(prtnVo);
		
		System.out.println("PartnerController.insertPartner [prtnVo] : " + prtnVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
	
	@RequestMapping("/partner/deletePartner.do")
	public ModelAndView deletePartner(HttpServletRequest request, long sq) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = partnerService.deletePartner(sq);
		
		mv.addObject("code", result);
		
		return mv;
		
	}
}
