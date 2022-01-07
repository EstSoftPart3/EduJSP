package com.quick.controller;



import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.quick.service.QuickService;
import com.quick.vo.QuickVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class QuickController extends BaseController {
	
	
	Logger log = Logger.getLogger(this.getClass());
	
	
	@Resource(name = "quickService")
	QuickService quickService;
	
	
	
	@RequestMapping(value = "/quick/openQuickListPage.do")
	public ModelAndView openQuickListPage(HttpServletRequest request, QuickVo quickVo) throws Exception {
		//System.out.println(quickVo+"-------openQuickListPage  list ");
		
		ModelAndView mv = new ModelAndView("/quick/quick_list_page");
		
		List<QuickVo> list = quickService.selectQuickList(quickVo);
		
		mv.addObject("quickList", list);
		
		return mv;
	}	
	
	
	@ResponseBody
	@RequestMapping(value = "/quick/selectQuickListPage.do")
	public ModelAndView selectQuickListPage(HttpServletRequest request, QuickVo quickVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<QuickVo> list = quickService.selectQuickList(quickVo);
		mv.addObject("quickList", list);
		
		return mv;
	}
	
	
	@RequestMapping("/quick/openQuickInsertPage.do")
	public ModelAndView openMemberInsertPage() throws Exception {
		ModelAndView mv = new ModelAndView("/quick/quick_insert_page");
		
		return mv;
	}
	
	 
	@RequestMapping("/quick/insertQuick.do")
	public ModelAndView insertQuick(HttpServletRequest request, QuickVo quickVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = quickService.insertQuick(quickVo);
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("/quick/openQuickUpdatePage.do")
	public ModelAndView openQuickUpdatePage(HttpServletRequest request, @RequestParam("update") String qckSq) throws Exception {
		ModelAndView mv = new ModelAndView("/quick/quick_update_page");
		
		//System.out.println(qckSq+"____openQuickUpdatePage"); 
		QuickVo only = quickService.selectQuickonly(qckSq);
		mv.addObject("quickOne", only);
		
		return mv;
	}
	
	@RequestMapping("/quick/updateQuick.do")
	public ModelAndView updateQuick(HttpServletRequest request, QuickVo quickVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		//System.out.println(quickVo+"updateQuick"); // 이렇게 찍어서 확인할것 
		int result = quickService.updateQuick(quickVo);
		mv.addObject("code", result);
		//System.out.println("code : "+result);
		return mv;
	}
	

	@RequestMapping("/quick/deleteQuick.do")
	public ModelAndView deleteQuick(HttpServletRequest request, @RequestParam("delete") String qckSq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = quickService.deleteQuick(qckSq);
		mv.addObject("code", result);
		return mv;
}
	
	
	
	@RequestMapping("/quick/selectQuickOne.do")
	public ModelAndView selectQuickOne(HttpServletRequest request, QuickVo quickVo ) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result= quickService.selectQuickOne(quickVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
	
	
}
