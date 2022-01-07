package com.erp.admin.business.projectskill.controller;

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

import com.erp.admin.business.projectskill.service.ErpProjectSkillService;
import com.erp.admin.business.projectskill.vo.ErpProjectSkillVo;
import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ErpProjectSkillController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "erpProjectSkillService")
	ErpProjectSkillService erpProjectSkillService;
	
	@ResponseBody
	@RequestMapping(value = "erp/business/projectskill/selectProjectSkillList.do")
	public ModelAndView selectMemberListPage(HttpServletRequest request, ErpProjectSkillVo prjskVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		List<ErpProjectSkillVo> list = erpProjectSkillService.selectProjectSkillList(prjskVo);
		
		mv.addObject("skillList", list);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value = "erp/business/projectskill/insertProjectSkill.do")
	public ModelAndView insertProjectSkill(HttpServletRequest request, @RequestBody List<ErpProjectSkillVo> prjskVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = erpProjectSkillService.insertProjectSkillList(prjskVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("erp/business/projectskill/updateProjectSkill.do")
	public ModelAndView updateProjectSkill(HttpServletRequest request, @RequestBody List<ErpProjectSkillVo> prjskVo) throws Exception {
       ModelAndView mv = new ModelAndView("jsonView");
		
		int result = erpProjectSkillService.updateProjectSkill(prjskVo);
			
		mv.addObject("code", result);
		return mv;
	}
	
	@RequestMapping("erp/business/projectskill/deleteProjectSkill.do")
	public ModelAndView openProjectSkillDeleteLogic(HttpServletRequest request, ErpProjectSkillVo prjskVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = erpProjectSkillService.deleteProjectSkill(prjskVo);
		
		mv.addObject("code", result);
		return mv;
	}
	
	@ResponseBody
	@RequestMapping("erp/business/project/deleteProjectSkillAll.do")
	public ModelAndView openProjectSkillDeleteAllLogic(HttpServletRequest request, @RequestBody List<ErpProjectSkillVo> prjskVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = erpProjectSkillService.deleteProjectSkillAll(prjskVo);
		
		mv.addObject("code", result);
		return mv;
	}

}
