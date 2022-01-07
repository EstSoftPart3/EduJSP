package com.projectskill.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
/*import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;*/
import org.springframework.web.servlet.ModelAndView;

import com.projectskill.service.ProjectSkillService;
import com.projectskill.vo.ProjectSkillVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ProjectSkillController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "projectSkillService")
	ProjectSkillService projectSkillService;
	
	@ResponseBody
	@RequestMapping(value = "/projectskill/selectProjectSkillList.do")
	public ModelAndView selectMemberListPage(HttpServletRequest request, ProjectSkillVo prjskVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<ProjectSkillVo> list = projectSkillService.selectProjectSkillList(prjskVo);
		
		mv.addObject("skillList", list);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "/projectskill/insertProjectSkill.do")
	public ModelAndView insertProjectSkill(HttpServletRequest request, @RequestBody List<ProjectSkillVo> prjskVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = projectSkillService.insertProjectSkillList(prjskVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/projectskill/updateProjectSkill.do")
	public ModelAndView updateProjectSkill(HttpServletRequest request, @RequestBody List<ProjectSkillVo> prjskVo) throws Exception {
       ModelAndView mv = new ModelAndView("jsonView");
		
		int result = projectSkillService.updateProjectSkill(prjskVo);
			
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("/projectskill/deleteProjectSkill.do")
	public ModelAndView openProjectSkillDeleteLogic(HttpServletRequest request, ProjectSkillVo prjskVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = projectSkillService.deleteProjectSkill(prjskVo);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("/project/deleteProjectSkillAll.do")
	public ModelAndView openProjectSkillDeleteAllLogic(HttpServletRequest request, @RequestBody List<ProjectSkillVo> prjskVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = projectSkillService.deleteProjectSkillAll(prjskVo);
		
		mv.addObject("code", result);
		return mv;
	}

}
