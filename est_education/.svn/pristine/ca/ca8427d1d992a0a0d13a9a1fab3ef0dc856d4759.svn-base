package com.equipment.controller;

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

import com.equipment.service.EquipmentService;
import com.equipment.vo.EquipmentVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class EquipmentController extends BaseController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "equipmentService")
	EquipmentService equipmentService;

	@RequestMapping(value = "/equipment/openEquipmentListPage.do")
	public ModelAndView openEquipmentListPage(HttpServletRequest request, EquipmentVo equipmentVo) throws Exception {
		ModelAndView mv = new ModelAndView("/equipment/equipment_list_page");
		
		
		List<EquipmentVo> list = equipmentService.selectEquipmentList(equipmentVo);
		mv.addObject("equipmentList", list);

		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/equipment/selectEquipmentListPage.do")
	public ModelAndView selectEquipmentListPage(HttpServletRequest request, EquipmentVo equipmentVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		if(request.getParameter("eqpmntTcdArr") != null) {
			
			String[] Arr = request.getParameter("eqpmntTcdArr").split(",");
			equipmentVo.setEqpmntTcdArray(Arr);
		
		}
		
		List<EquipmentVo> list = equipmentService.selectEquipmentList(equipmentVo);
		mv.addObject("equipmentList", list);
		return mv;

	}
	

	@RequestMapping(value = "/equipment/openEquipmentInsertPage.do")
	public ModelAndView openEquipmentInsertPage(EquipmentVo equipmentVo) throws Exception {
		ModelAndView mv = new ModelAndView("/equipment/equipment_insert_page");
		
		
		return mv;

	}
	
	@RequestMapping(value = "/equipment/insertEquipment.do")
	public ModelAndView insertEquipment(HttpServletRequest request, EquipmentVo equipmentVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = equipmentService.insertEquipment(equipmentVo);
		mv.addObject("code", result);
		return mv;
	}

	@RequestMapping(value = "/equipment/openEquipmentUpdatePage.do")
	public ModelAndView openEquipmentUpdatePage(HttpServletRequest request, @RequestParam("update") String eqpmntSq)
			throws Exception {
		ModelAndView mv = new ModelAndView("equipment/equipment_update_page");

		EquipmentVo only = equipmentService.selectEquipmentOnly(eqpmntSq);
		mv.addObject("equipmentOne", only);

		return mv;
	}

	@RequestMapping(value = "/equipment/updateEquipment.do")
	public ModelAndView updateEquipment(HttpServletRequest request, EquipmentVo equipmentVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = equipmentService.updateEquipment(equipmentVo);
		mv.addObject("code", result);
		
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/equipment/deleteEquipment.do")
	public ModelAndView openEquipmentDeleteLogic(HttpServletRequest request, @RequestParam("delete") String eqpmntSq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = equipmentService.deleteEquipment(eqpmntSq);
		mv.addObject("code", result);
		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/equipment/deleteEquipmentAll.do")
	public ModelAndView equipmentDeleteLogic(HttpServletRequest request, @RequestBody List<EquipmentVo> eqpmntSq)
			throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = equipmentService.deleteEquipmentAll(eqpmntSq);

		mv.addObject("code", result);
		return mv;
	}
	
	

}
