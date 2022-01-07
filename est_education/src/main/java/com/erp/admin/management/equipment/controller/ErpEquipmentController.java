package com.erp.admin.management.equipment.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.equipment.vo.EquipmentVo;
import com.erp.admin.management.equipment.service.ErpEquipmentService;
import com.erp.admin.management.equipment.vo.ErpEquipmentVo;

import common.base.controller.BaseController;

import com.erp.common.pager.pagerMaster;
import com.sampleBoard.vo.BoardSampleVo;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class ErpEquipmentController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	
	//서비스 정의
	@Resource(name = "ErpEquipmentService")
	ErpEquipmentService ErpEquipmentService;
	
	
	/*//리스트 불러오기
	@RequestMapping(value = "/erpEquipment/openEquipmentListPage.do")
	public ModelAndView openEquipmentListPage(HttpServletRequest request, ErpEquipmentVo erpEquipmentVo) throws Exception {
		//ModelAndView mv = new ModelAndView("/erpEquipment/equipment_list_page");		
		
		List<ErpEquipmentVo> list = ErpEquipmentService.selectEquipmentList(erpEquipmentVo);
				
		System.out.println("컨트롤러 VO erpEquipmentVo : "+erpEquipmentVo);
		System.out.println("컨트롤러 VO getEqpmntTcdArray : "+erpEquipmentVo.getEqpmntTcdArray());

		ModelAndView mv = new ModelAndView();
	    mv.addObject("erpEquipmentList", list);
		mv.setViewName("erp/management/equipment_list_page");
		return mv;
	}
	*/
	
	//페이징 기능 추가된 리스트 불러오기 -> 기본은 이걸로
	@RequestMapping(value="/erp/equipment/openEquipmentListPage.do")
	public ModelAndView openEquipmentPagingListPage(@RequestParam(defaultValue="1")     int    curPage,
			ErpEquipmentVo erpEquipmentVo) throws Exception {
		ModelAndView mv = new ModelAndView();
	    
	    mv.setViewName("erp/management/equipment/equipment_list_page");
	    
	    return mv;  
	    
	}
	/*
	@RequestMapping(value="/erpEquipment/selectEquipmentPagingListPage.do")
	public ModelAndView selectEquipmentPagingListPage(HttpServletRequest request, ErpEquipmentVo erpEquipmentVo, @RequestParam(defaultValue="1")     int    curPage,
			                                      @RequestParam(defaultValue="")      String keyword) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		System.out.println("ppppppppppppppppp" + erpEquipmentVo);
		
		int count = ErpEquipmentService.selectEquipmentCount(erpEquipmentVo);
		
		pagerMaster boardPager = new pagerMaster(count, curPage, 10, 10);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();
		
		List<ErpEquipmentVo> list = ErpEquipmentService.selectEquipmentPagingList(start, end, erpEquipmentVo);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("boardPager", boardPager);
		map.put("keyword", keyword);
	    mv.addObject("map", map);
	    System.out.println(map);
	   
	    return mv;  
	    
	}
	
	*/
	
	//상세보기
	@RequestMapping(value = "/erp/equipment/openEquipmentContentPage.do")
	public ModelAndView openEquipmentContentPage(HttpServletRequest request, @RequestParam("update") String eqpmntSq)
			throws Exception {
		ModelAndView mv = new ModelAndView("erp/management/equipment/equipment_content_page");

		ErpEquipmentVo only = ErpEquipmentService.selectEquipmentOnly(eqpmntSq);
		mv.addObject("equipmentOne", only);

		return mv;

	}
	
	
	//선택한 리스트 불러오기 (Ajax사용해서 Vo에 있는 eqpmntTcdArray에 toString해서 저장하게 되어있음)
	@ResponseBody
	@RequestMapping(value = "/erp/equipment/selectEquipmentListPage.do")
	public ModelAndView selectEquipmentListPage(HttpServletRequest request, ErpEquipmentVo erpEquipmentVo, @RequestParam(defaultValue="1")     int    curPage) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		System.out.println("VOVOVOVOVOVOVO 시작점 : " +erpEquipmentVo);
		
		int count = ErpEquipmentService.selectEquipmentCount(erpEquipmentVo);
		
		pagerMaster boardPager = new pagerMaster(count, curPage, 10, 10);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();
		
		System.out.println("페이지 마스터 : " + boardPager);
		
		List<ErpEquipmentVo> list = ErpEquipmentService.selectEquipmentPagingList(start, end, erpEquipmentVo);
		
		System.out.println("VOVOVOVOVOVOVO : " +erpEquipmentVo);
		
		mv.addObject("count", count);
		mv.addObject("boardPager", boardPager);
		mv.addObject("equipmentList", list);
		return mv;

	}
	
	/////////////////////////////////////////////////////////////////////////////////////////
	
	//장비 새로 추가하는 페이지 열기
	@RequestMapping(value = "/erp/equipment/openEquipmentInsertPage.do")
	public ModelAndView openEquipmentInsertPage(ErpEquipmentVo erpEquipmentVo) throws Exception {
		ModelAndView mv = new ModelAndView("erp/management/equipment/equipment_insert_page");
		
		
		return mv;

	}
	
	//장비 추가하기
	@RequestMapping(value = "/erp/equipment/insertEquipment.do")
	public ModelAndView insertEquipment(HttpServletRequest request, ErpEquipmentVo erpEquipmentVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = ErpEquipmentService.insertEquipment(erpEquipmentVo);
		mv.addObject("code", result); //code는 jsp의 comAjax 확인
		return mv;
	}

	/////////////////////////////////////////////////////////////////////////////////////////
	
	//장비 수정하는 페이지 열기	
	@RequestMapping(value = "/erp/equipment/openEquipmentUpdatePage.do")
	public ModelAndView openEquipmentUpdatePage(HttpServletRequest request, @RequestParam("update") String eqpmntSq)
			throws Exception {
		ModelAndView mv = new ModelAndView("erp/management/equipment/equipment_update_page");

		ErpEquipmentVo only = ErpEquipmentService.selectEquipmentOnly(eqpmntSq);
		mv.addObject("equipmentOne", only);

		return mv;
	}
	
	//장비 수정하기
	@RequestMapping(value = "/erp/equipment/updateEquipment.do")
	public ModelAndView updateEquipment(HttpServletRequest request, ErpEquipmentVo erpEquipmentVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = ErpEquipmentService.updateEquipment(erpEquipmentVo);
		mv.addObject("code", result);
		
		return mv;
	}
	
	//////////////////////////////////////////////////////////////////////////////////////////
	
	//장비 삭제하기
	@ResponseBody
	@RequestMapping(value = "/erp/equipment/deleteEquipment.do")
	public ModelAndView openEquipmentDeleteLogic(HttpServletRequest request, @RequestParam("delete") String eqpmntSq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = ErpEquipmentService.deleteEquipment(eqpmntSq);
		mv.addObject("code", result);
		return mv;
	}

	//장비 전부 삭제하기
	@ResponseBody
	@RequestMapping(value = "/erp/equipment/deleteEquipmentAll.do")
	public ModelAndView equipmentDeleteLogic(HttpServletRequest request, @RequestBody List<ErpEquipmentVo> eqpmntSq)
			throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = ErpEquipmentService.deleteEquipmentAll(eqpmntSq);

		mv.addObject("code", result);
		return mv;
	}
	
	
	
		//Ajax용 불러오기 
		@ResponseBody
		@RequestMapping(value = "/erp/equipment/selectEquipmentLentalOne.do")
		public ModelAndView selectEquipmentLentalOne(HttpServletRequest request, ErpEquipmentVo erpEquipmentVo)
				throws Exception {
			ModelAndView mv = new ModelAndView("jsonView");
			
			String eqpmntSq = request.getParameter("eqpmntSq");
			System.out.println(eqpmntSq);
			erpEquipmentVo.setEqpmntSq(Integer.parseInt(eqpmntSq));
			
			
			List<ErpEquipmentVo> list = ErpEquipmentService.selectEquipmentLentalOne(erpEquipmentVo);
			System.out.println(list);
			mv.addObject("equipmentLental", list);
			/*mv.addObject("eqpmntSq", eqpmntSq);*/
			System.out.println(mv);
			

			return mv;
	
		}
	
}