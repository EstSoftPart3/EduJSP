package com.project.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.service.ProjectService;
import com.project.vo.ProjectVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ProjectController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "projectService")
	
	ProjectService projectService;
	
	@RequestMapping(value = "/project/openProjectListPage.do")
	public ModelAndView openProjectListPage(HttpServletRequest request, ProjectVo prjVo) throws Exception {
		ModelAndView mv = new ModelAndView("/project/project_list_page");
		List<ProjectVo> list = projectService.selectProjectList(prjVo);
		
		mv.addObject("projectList", list);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/project/selectProjectListPage.do")
	public ModelAndView selectMemberListPage(HttpServletRequest request, ProjectVo prjVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<ProjectVo> list = projectService.selectProjectList(prjVo);
		
		mv.addObject("projectList", list);
		
		return mv;
	}
	
	@RequestMapping(value = "/project/openProjectInsertPage.do")
	public ModelAndView openProjectInsertPage() throws Exception {
		ModelAndView mv = new ModelAndView("/project/project_insert_page");
		
		return mv;
	}
	
	
	@RequestMapping("/project/insertProject.do")
	public ModelAndView insertProject(HttpServletRequest request, ProjectVo prjVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = projectService.insertProject(prjVo);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("/project/deleteProject.do")
	public ModelAndView openProjectDeleteLogic(HttpServletRequest request, @RequestParam("delete") String prjctSq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = projectService.deleteProject(prjctSq);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/project/deleteProjectAll.do")
	public ModelAndView openProjectDeleteAllLogic(HttpServletRequest request, @RequestBody List<ProjectVo> prjctSq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = projectService.deleteProjectAll(prjctSq);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("/project/openProjectUpdatePage.do")
	public ModelAndView openProjectUpdatePage(HttpServletRequest request, @RequestParam("update") String prjctSq) throws Exception {
		ModelAndView mv = new ModelAndView("/project/project_update_page");
		
		ProjectVo only = projectService.selectProjectonly(prjctSq);
		
		mv.addObject("projectOne", only);
		
		return mv;
	}
	
	
	@RequestMapping("/project/updateProject.do")
	public ModelAndView updateProject(HttpServletRequest request, ProjectVo prjVo) throws Exception {
       ModelAndView mv = new ModelAndView("jsonView");
		
		int result = projectService.updateProject(prjVo);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("/project/openProjectDetailPage.do")
	public ModelAndView openProjectDetailPage(HttpServletRequest request, String prjctSq) throws Exception {
		ModelAndView mv = new ModelAndView("/project/project_detail_page");
		
		ProjectVo only = projectService.selectProjectonly(prjctSq);
		
		mv.addObject("projectOne", only);
		
		return mv;
	}
	

}
