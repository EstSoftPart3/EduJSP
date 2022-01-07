package com.skill.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skill.service.SkillService;
import com.skill.vo.SkillVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class SkillController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "skillService")
	SkillService skillService;
	
	@RequestMapping(value = "/skill/openSkillListPage.do")
	public ModelAndView openskillListPage(HttpServletRequest request, SkillVo skillVo) throws Exception {
		ModelAndView mv = new ModelAndView("/skill/skill_list_page");
		
		List<SkillVo> list = skillService.selectSkillList(skillVo);
		
		mv.addObject("skillList", list);
		
		return mv;
	}
	
	@RequestMapping(value = "/skill/selectskillListPage.do")
	public ModelAndView selectskillListPage(HttpServletRequest request, SkillVo skillVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		System.out.println(skillVo.getSkillTypNm());
		
		List<SkillVo> list = skillService.selectSkillList(skillVo);
		
		mv.addObject("skillList", list);
		
		return mv;
	}
	
	@RequestMapping(value = "/skill/selectskillSqList.do")
	public ModelAndView selectskillSqList(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Long> mbrSqArr = new ArrayList<>(); 
		
		String[] arr = request.getParameter("mbrSqArr").split(",");
		
		for(String sq : arr) {
			mbrSqArr.add(Long.parseLong(sq));
		}
		
		List<SkillVo> list = skillService.selectSkillList(mbrSqArr);
		
		mv.addObject("skillList", list);
		
		return mv;
	}
	
	@RequestMapping("/skill/openskillInsertPage.do")
	public ModelAndView openskillInsertPage() throws Exception {
		ModelAndView mv = new ModelAndView("/skill/skill_insert_page");
		
		return mv;
	}
	
	@RequestMapping("/Skill/insertSkill.do")
	public ModelAndView insertskill(HttpServletRequest request, SkillVo skillVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		System.out.println(request.getParameter("skilltypnm"));
		int result = skillService.insertSkill(skillVo);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("/skill/deleteSkill.do")
	public ModelAndView deleteskill(HttpServletRequest request, @RequestParam(value="delete") String sq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = skillService.deleteSkill(sq);
		mv.addObject("code", result);
		
		return mv;
	}
	@RequestMapping("/skill/openskillUpdatePage.do")
	public ModelAndView openskillUpdatePage(HttpServletRequest request, @RequestParam("update") String skillSq) throws Exception {
		ModelAndView mv = new ModelAndView("/skill/skill_update_page");
		
		System.out.println(skillSq);
		
		SkillVo mbr = skillService.selectSkillOne(skillSq);
		
		mv.addObject("SkillVo", mbr);
		
		return mv;
	}
	
	@RequestMapping("/Skill/updateSkill.do")
	public ModelAndView updateskill(HttpServletRequest request, SkillVo mbrVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		
		int result = skillService.updateSkill(mbrVo);
		mv.addObject("code", result);
		
		return mv;
	}

}
