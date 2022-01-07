package com.erp.admin.management.shipping.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.code.service.CodeService;
import com.code.vo.CodeVo;
import com.erp.admin.management.shipping.service.ErpShippingService;
import com.erp.admin.management.shipping.vo.ErpShippingVo;
import com.erp.common.pager.pagerMaster;


import common.base.controller.BaseController;

@Controller
public class ErpShippingController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name="ErpShippingService")
	ErpShippingService shippingService;
	
	@Resource(name = "codeService")
	CodeService codeService;
	
	// 배송 관리 게시판 
	@RequestMapping(value = "/erp/shipping/openShippingListPage.do")
	public ModelAndView openShippingList(ErpShippingVo erpShippingVo , @RequestParam(defaultValue="1")int curPage , String keyword) throws Exception {
		
		System.out.println("컨트롤러 searchOption : " + erpShippingVo.getSearchOption() );
		System.out.println("컨트롤러 search : " + erpShippingVo.getSearch());
		
		int count = shippingService.shippingCountList(erpShippingVo);
		
		pagerMaster pagerMaster = new pagerMaster(count, curPage, 10,10); 
		
		
		
		int start = pagerMaster.getPageBegin();
		int end = pagerMaster.getPageEnd();
		
		List<ErpShippingVo> list = shippingService.shippingPagingList(start, end, erpShippingVo );
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("pagerMaster", pagerMaster);
		map.put("curPage", curPage);
		
		for( String key : map.keySet() ){
		    Object value = map.get(key);
		    System.out.println( String.format("키 : "+key+", 값 : "+value));
		}
		
		
		Map<String,Object> searchData = new HashMap<>();
		searchData.put("searchOption", erpShippingVo.getSearchOption());
		searchData.put("search", erpShippingVo.getSearch());
		searchData.put("startDt", erpShippingVo.getStartDt());
		searchData.put("endDt", erpShippingVo.getEndDt());
		
		System.out.println("erpShippingVo : " + erpShippingVo);
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("map", map);
		mv.addObject("searchData", searchData);
		mv.setViewName("/erp/management/shipping/shipping_list_page");

		
		
		return mv;
	}
	
	// 배송 상세 게시판
	@RequestMapping(value="/erp/shipping/shippingDetail.do")
    public ModelAndView shippingDetail(ErpShippingVo shippingVo) throws Exception {
        
        ModelAndView mv = new ModelAndView("/erp/management/shipping/shipping_detail_page");
        ErpShippingVo detail = shippingService.shippingDetail(shippingVo);
        mv.addObject("detail",detail);
        
        return mv;
    }
	
	// 배송 등록 게시판 호출
	@RequestMapping("/erp/shipping/shippingInsertPage.do")
	public ModelAndView openshippingInsert() throws Exception {
		
		ModelAndView mv = new ModelAndView("/erp/management/shipping/shipping_insert_page");
		
		Map<String, String> searchData = new HashMap<String, String>();	// 코드 데이터
		
		searchData.put("grpCd", "CODE00014");
		List<CodeVo> codeList = codeService.selectCodeList(searchData);
		mv.addObject("codePymntStts", codeList); // 결제 상태

		searchData.put("grpCd", "CODE00015");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codePymntMthd", codeList); // 결제 방식
		
		return mv;
		
	}
	
	// 배송 등록 게시판 등록
	@RequestMapping(value="/erp/shipping/shippingInsert.do")
	    public ModelAndView shippingInsert(ErpShippingVo shippingVo) throws Exception {
			
			System.out.println("등록 컨트롤러 호출");
		
			ModelAndView mv = new ModelAndView("jsonView");
			
			shippingService.shippingInsert(shippingVo);
	        
	        return mv;
	        
	 }
	// 배송 수정 게시판 호출
	@RequestMapping("/erp/shipping/shippingUpdatePage.do")
	public ModelAndView openshippingUpdatePage(ErpShippingVo shippingVo) throws Exception {
		
		
		ModelAndView mv = new ModelAndView("/erp/management/shipping/shipping_update_page");
		
		Map<String, String> searchData = new HashMap<String, String>();	// 코드 데이터
		
		searchData.put("grpCd", "CODE00014");
		List<CodeVo> codeList = codeService.selectCodeList(searchData);
		mv.addObject("codePymntStts", codeList); // 결제 상태

		searchData.put("grpCd", "CODE00015");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codePymntMthd", codeList); // 결제 방식
		
		ErpShippingVo detail = shippingService.shippingDetail(shippingVo);
        mv.addObject("detail", detail);
        
		return mv;
		
	}
	
	// 배송 수정 게시판 수정
	@RequestMapping(value="/erp/shipping/shippingUpdate.do")
    public ModelAndView shippingUpdate(ErpShippingVo shippingVo) throws Exception {
        
		System.out.println("수정 컨트롤러 호출" + shippingVo);
		
        ModelAndView mv = new ModelAndView("redirect:/erp/shipping/openShippingListPage.do");
        
        System.out.println("수정 컨트롤러 호출" + shippingVo);
        
        shippingService.shippingUpdate(shippingVo);
        
        System.out.println("수정 컨트롤러 호출" + shippingVo);
      
        return mv;
        
    }

	// 배송 게시판 삭제
	@RequestMapping(value="/erp/shipping/shippingDelete.do")
    public ModelAndView shippingPagingList(ErpShippingVo shippingVo) throws Exception {
		
        ModelAndView mv = new ModelAndView("redirect:/erp/shipping/openShippingListPage.do");
        shippingService.shippingDelete(shippingVo);
        return mv;
        
    }
	
	

}
