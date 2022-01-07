package com.equipmentLental.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.equipment.vo.EquipmentVo;
import com.equipmentLental.service.EquipmentLentalService;
import com.equipmentLental.vo.EquipmentLentalVo;
import com.member.vo.MemberVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class EquipmentLentalController extends BaseController {
	
    Logger log = Logger.getLogger(this.getClass());
    
    @Resource(name = "equipmentLentalService")
    EquipmentLentalService equipmentLentalService;
    
    @RequestMapping(value = "/equipmentlental/openEquipmentLentalListPage.do")
    public ModelAndView openEquipmentLentalListPage(HttpServletRequest request, EquipmentLentalVo equipmentLentalVo)throws Exception {
        ModelAndView mv = new ModelAndView("/equipmentlental/equipmentLental_list_page");
        List < EquipmentLentalVo > list = equipmentLentalService.selectEquipmentLentalList(equipmentLentalVo);
        mv.addObject("equipmentlentalList", list);
        return mv;
    }
    
    @ResponseBody @RequestMapping(value = "/equipmentlental/selectEquipmentLentalList.do")
    public ModelAndView selectEquipmentListPage(HttpServletRequest request, EquipmentLentalVo equipmentLentalVo)throws Exception {
        log.debug("/equipmentlental/selectEquipmentLentalListPage.do");
        ModelAndView mv = new ModelAndView("jsonView");
        List < EquipmentLentalVo > list = equipmentLentalService.selectEquipmentLentalList(equipmentLentalVo);
        mv.addObject("equipmentlentalList", list);
        return mv;
    }
    
    @RequestMapping(value = "/equipmentlental/openInsertEquipmentLentalPage.do")
    public ModelAndView openInsertEquipmentLentalPage(EquipmentLentalVo EquipmentLentalVo, EquipmentVo EquipmentVo, MemberVo MemberVo, String eqpmntSq, String mbrSq)throws Exception {
        ModelAndView mv = new ModelAndView("/equipmentlental/equipmentLental_insert_page");
        List < EquipmentVo > psblEquipment = equipmentLentalService.selectPsblEquipmentList(EquipmentVo);
        mv.addObject("selectPsblEquipmentList", psblEquipment);
        List < MemberVo > member = equipmentLentalService.selectMemberList(MemberVo);
        mv.addObject("memberList", member);
        return mv;
    }
    
    @RequestMapping(value = "/equipmentlental/insertEquipmentLental.do")
    public ModelAndView insertEquipmentLental(HttpServletRequest request, EquipmentLentalVo EquipmentLentalVo)throws Exception {
        ModelAndView mv = new ModelAndView("jsonView");
        int result = equipmentLentalService.insertEquipmentLental(EquipmentLentalVo);
        mv.addObject("code", result);
        return mv;
    }
    
    @ResponseBody @RequestMapping(value = "/equipmentlental/deleteEquipmentLental.do")
    public ModelAndView deleteEquipmentLental(HttpServletRequest request, @RequestParam("delete")String lntlSq)throws Exception {
        ModelAndView mv = new ModelAndView("jsonView");
        int result = equipmentLentalService.deleteEquipmentLental(lntlSq);
        mv.addObject("code", result);
        return mv;
    }
    
    @RequestMapping(value = "/equipmentlental/openRtrnEquipmentLentalPage.do")
    public ModelAndView openRtrnEquipmentLentalPage(HttpServletRequest request, @RequestParam("update")String lntlSq)
    throws Exception {
        ModelAndView mv = new ModelAndView("/equipmentlental/equipmentLental_update_page");
        EquipmentLentalVo only = equipmentLentalService.selectEquipmentLentalOne(lntlSq);
        mv.addObject("equipmentLentalOne", only);
        return mv;
    }
    
    @RequestMapping(value = "/equipmentlental/updateEquipmentLental.do")
    public ModelAndView updateEquipment(HttpServletRequest request, EquipmentLentalVo EquipmentLentalVo)throws Exception {
        ModelAndView mv = new ModelAndView("jsonView");
        int result = equipmentLentalService.updateEquipmentLental(EquipmentLentalVo);
        mv.addObject("code", result);
        return mv;
    }
 
}
	 
 
