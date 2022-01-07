package com.erp.admin.business.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.erp.admin.business.project.service.ErpProjectService;
import com.erp.admin.business.project.vo.ErpProjectVo;
import com.erp.common.pager.pagerMaster;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ErpProjectController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "erpProjectService")
	
	ErpProjectService erpProjectService;
	
	//프로젝트 관리 메인 페이지
	@RequestMapping(value = "erp/business/project/openProjectListPage.do")
	public ModelAndView openProjectListPage(@RequestParam(defaultValue="1") int curPage) throws Exception {
		int count = erpProjectService.projectCountList();
		
		pagerMaster erpProject = new pagerMaster(count, curPage,10,10);
		
		/*System.out.println(srhVo.getName());
		System.out.println(srhVo.getType());*/
		
		int start = erpProject.getPageBegin();
		int end = erpProject.getPageEnd();
		
		System.out.println("start : " + start);
		System.out.println("start : " + end);
		
		List<ErpProjectVo> list =erpProjectService.selectProjectPagingList(start,end);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("erpProject", erpProject);
		map.put("curPage", curPage);
		
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("projectList", map);
		mv.setViewName("erp/business/project/project_list_page");
		return mv;
	}
	@ResponseBody
	@RequestMapping(value = "erp/business/project/selectProjectListPage.do")
	public ModelAndView selectProjectListPage(HttpServletRequest request, ErpProjectVo prjVo,@RequestParam(defaultValue="1") int curPage, @RequestParam(defaultValue="1") int page) throws Exception {
		int count = erpProjectService.projectCountList();
		pagerMaster pager = new pagerMaster(count, page,10,10);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		List<ErpProjectVo> list = erpProjectService.selectProjectList(prjVo,start,end);
		count = erpProjectService.getCountProjectPagingList(prjVo);
		
		
		pagerMaster erpProject = new pagerMaster(count, page,10,10);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("erpProject", erpProject);
		map.put("curPage", page);

		ModelAndView mv = new ModelAndView("jsonView");
		
		mv.addObject("projectList", map);
		
		return mv;
	}
	
	@RequestMapping(value = "erp/business/project/openProjectInsertPage.do")
	public ModelAndView openProjectInsertPage() throws Exception {
		ModelAndView mv = new ModelAndView("erp/business/project/project_insert_page");
		
		return mv;
	}
	
	
	@RequestMapping("erp/business/project/insertProject.do")
	public ModelAndView insertProject(HttpServletRequest request, ErpProjectVo prjVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = erpProjectService.insertProject(prjVo);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("erp/business/project/deleteProject.do")
	public ModelAndView openProjectDeleteLogic(HttpServletRequest request, @RequestParam("delete") String prjctSq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = erpProjectService.deleteProject(prjctSq);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("erp/business/project/deleteProjectAll.do")
	public ModelAndView openProjectDeleteAllLogic(HttpServletRequest request, @RequestBody List<ErpProjectVo> prjctSq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = erpProjectService.deleteProjectAll(prjctSq);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("erp/business/project/openProjectUpdatePage.do")
	public ModelAndView openProjectUpdatePage(HttpServletRequest request, @RequestParam("update") String prjctSq) throws Exception {
		ModelAndView mv = new ModelAndView("erp/business/project/project_update_page");
		
		ErpProjectVo only = erpProjectService.selectProjectonly(prjctSq);
		
		mv.addObject("projectOne", only);
		
		return mv;
	}
	
	
	@RequestMapping("erp/business/project/updateProject.do")
	public ModelAndView updateProject(HttpServletRequest request, ErpProjectVo prjVo) throws Exception {
       ModelAndView mv = new ModelAndView("jsonView");
		
		int result = erpProjectService.updateProject(prjVo);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("erp/business/project/openProjectDetailPage.do")
	public ModelAndView openProjectDetailPage(HttpServletRequest request, String prjctSq) throws Exception {
		ModelAndView mv = new ModelAndView("erp/business/project/project_detail_page");
		
		ErpProjectVo only = erpProjectService.selectProjectonly(prjctSq);
		
		mv.addObject("projectOne", only);
		
		return mv;
	}
	

}
