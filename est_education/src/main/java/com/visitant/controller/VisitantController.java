package com.visitant.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.visitant.service.VisitantService;
import com.visitant.vo.VisitantVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class VisitantController extends BaseController{
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "visitantService")
	VisitantService visitantService;
	
	@RequestMapping(value = "/visitant/openVisitantListPage.do")
	public ModelAndView openVisitantListPage(HttpServletRequest request, VisitantVo visiVo) throws Exception {
		ModelAndView mv = new ModelAndView("/visitant/visitant_list_page");
		
		List<VisitantVo> list = visitantService.selectVisitantList(visiVo);
		
		mv.addObject("visitantList", list);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/visitant/selectVisitantListPage.do")
	public ModelAndView selectVisitantListPage(HttpServletRequest request, VisitantVo visiVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<VisitantVo> list = visitantService.selectVisitantList(visiVo);
		
		mv.addObject("visitantList", list);
		
		return mv;
	}
	
	@RequestMapping(value = "/member/selectVisitantSqList.do")
	public ModelAndView selectVisitantSqList(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Long> visiSqArr = new ArrayList<>(); 
		
		String[] arr = request.getParameter("visiSqArr").split(",");
		
		for(String sq : arr) {
			visiSqArr.add(Long.parseLong(sq));
		}
		
		List<VisitantVo> list = visitantService.selectVisitantList(visiSqArr);
		
		mv.addObject("visitantList", list);
		
		return mv;
	}
	
	
	@RequestMapping("/visitant/openVisitantInsertPage.do")
	public ModelAndView openVisitantInsertPage() throws Exception {
		ModelAndView mv = new ModelAndView("/visitant/visitant_insert_page");
		
		return mv;
	}
	
	@RequestMapping("/visitant/insertVisitant.do")
	public ModelAndView insertVisitant(HttpServletRequest request, VisitantVo visiVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = visitantService.insertVisitant(visiVo);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("/visitant/openVisitantDetailPage.do")
	public ModelAndView openVisitantDetailPage(HttpServletRequest request, long sq) throws Exception {
		ModelAndView mv = new ModelAndView("/visitant/visitant_detail_page");
		
		VisitantVo visi = visitantService.selectVisitantOne(sq);
		
		mv.addObject("visitantVo", visi);
		
		return mv;
	}
	
	@RequestMapping("/visitant/selectVisitantOne.do")
	public ModelAndView selectVisitantOne(HttpServletRequest request, @RequestParam(value="visiSq") String sq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		VisitantVo visiVo = visitantService.selectVisitantOne(Long.parseLong(sq));
		
		mv.addObject("visitantVo", visiVo);
		
		return mv;
	}
	
	@RequestMapping("/visitant/deleteVisitant.do")
	public ModelAndView deleteVisitant(HttpServletRequest request, long sq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = visitantService.deleteVisitant(sq);
		mv.addObject("code", result);
		
		return mv;
	}
	
	@RequestMapping("/visitant/openVisitantUpdatePage.do")
	public ModelAndView openVisitantUpdatePage(HttpServletRequest request, long sq) throws Exception {
		ModelAndView mv = new ModelAndView("/visitant/visitant_update_page");
		
		VisitantVo visi = visitantService.selectVisitantOne(sq);

		mv.addObject("visitantVo", visi);
		
		return mv;
	}
	
	@RequestMapping("/visitant/updateVisitant.do")
	public ModelAndView updateVisitant(HttpServletRequest request, VisitantVo visiVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = visitantService.updateVisitant(visiVo);
		mv.addObject("code", result);
		
		return mv;
	}
	
}
