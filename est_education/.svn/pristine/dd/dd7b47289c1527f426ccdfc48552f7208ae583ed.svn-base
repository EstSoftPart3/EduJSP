package com.erp.admin.business.partner.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.erp.admin.business.partner.service.ErpPartnerService;
import com.erp.admin.business.partner.util.PartnerPager;
import com.erp.admin.business.partner.vo.ErpPartnerFileVo;
import com.erp.admin.business.partner.vo.ErpPartnerVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ErpPartnerController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name ="erpPartnerService")
	ErpPartnerService erpPartnerService;
	
	//페이징 된 협력사 리스트 출력.
	@RequestMapping(value="/erp/partner/selectPartnerPagingList.do")
	public ModelAndView pagingList(HttpServletRequest request,ErpPartnerVo erpPartnerVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("/erp/business/partner/partner_list_page");
		
		int curPage = erpPartnerVo.getCurPage() == 0 ? 1 : erpPartnerVo.getCurPage();
		
		int rowCount = erpPartnerService.selectSearchCount(erpPartnerVo);
		
		PartnerPager pager = new PartnerPager(rowCount,curPage);

		Map<String,Object> searchData = new HashMap<>();
		
		searchData.put("prtnTypCd", erpPartnerVo.getPrtnTypCd());
		searchData.put("searchOption", erpPartnerVo.getSearchOption());
		searchData.put("search", erpPartnerVo.getSearch());
		searchData.put("limit", pager.getLimit());
		
		List<ErpPartnerVo> list = erpPartnerService.selectPartnerPagingList(searchData);
		
		mv.addObject("searchData", searchData);
		mv.addObject("partnerList", list);
		mv.addObject("pager",pager);
		
		return mv;
	}
	
	// 협력사 정보 등록 페이지 
	@RequestMapping(value="/erp/partner/insertPartnerPage.do")
	public ModelAndView partnerInsertPage(HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView("/erp/business/partner/partner_insert_page");
		
		return mv;
	}
	
	// 협력사 정보 상세 조회 페이지 
	@RequestMapping(value = "/erp/partner/partnerDetailPage.do")
	public ModelAndView onePartner(HttpServletRequest request, ErpPartnerVo erpPartnerVo) throws Exception {
		// 상세 페이지 view JSP 위치.
		ModelAndView mv = new ModelAndView("/erp/business/partner/partner_detail_page");
		
		// partner_detail_page 에 바인딩할 리턴 객체 선언.
		ErpPartnerVo partnerVo = new ErpPartnerVo();
		
		// 협력사 & 담당자 정보 담은 객체 리턴.
		partnerVo = erpPartnerService.selectPartnerOne(erpPartnerVo);
				
		mv.addObject("partnerVo", partnerVo);
		
		// 상세정보를 리턴하기전에 , erpPartnerVo.getSq() 에 담겨있는 PRTN_SQ 값으로 조회할 협력사에 파일정보가 존재하는지 확인한다.
		// 해당 행에 파일이 존재한다면  count = 1이상, 존재하지 않는다면 count = 0
		int count = erpPartnerService.isFileExist(erpPartnerVo).getPrtnSq();
		
		// count 가 0이 아니라면 ErpParnterFileVo 클래스를 타입으로하는 리스트에 파일정보들을 담아 ModelAndView 에 add 한뒤 리턴.
		if(count != 0) {
			
			// ErpPartnerFileVo 타입의 해당 협력사의 파일 정보를 담은 리스트 생성 후 리턴.
			List<ErpPartnerFileVo> fileList = erpPartnerService.selectPartnerFile(partnerVo);
			
			mv.addObject("partnerFiles", fileList);
		} 
		
		System.out.println("PartnerController.onePartner [erpPartnerVo] :"+ erpPartnerVo);
		
		return mv;
	}
	
	// 협력사 상세 정보를 조회한 뒤 조회 결과를 바인딩 하여  파일이 존재한다면 파일정보까지 포함하여 수정 페이지로 이동.
	@RequestMapping(value="/erp/partner/updatePartnerPage.do")
	public ModelAndView updatePartner(HttpServletRequest request, ErpPartnerVo erpPartnerVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("/erp/business/partner/partner_update_page");
		
		// partner_update_page 에 바인딩할 리턴 객체 선언.
		ErpPartnerVo partnerVo = new ErpPartnerVo();
		
		// 협력사 & 담당자 정보 담은 객체 리턴.
		partnerVo = erpPartnerService.selectPartnerOne(erpPartnerVo);
				
		mv.addObject("partnerVo", partnerVo);
		
		// 상세정보를 리턴하기전에 , erpPartnerVo.getSq() 에 담겨있는 PRTN_SQ 값으로 조회할 협력사에 파일정보가 존재하는지 확인한다.
		// 해당 행에 파일이 존재한다면  count = 1이상, 존재하지 않는다면 count = 0
		int count = erpPartnerService.isFileExist(erpPartnerVo).getPrtnSq();
		
		// count 가 0이 아니라면 ErpParnterFileVo 클래스를 타입으로하는 리스트에 파일정보들을 담아 ModelAndView 에 add 한뒤 리턴.
		if(count != 0) {
			
			// ErpPartnerFileVo 타입의 해당 협력사의 파일 정보를 담은 리스트 생성 후 리턴.
			List<ErpPartnerFileVo> fileList = erpPartnerService.selectPartnerFile(partnerVo);
			
			mv.addObject("partnerFiles", fileList);
		};
		
		System.out.println("PartnerController.updatePartnerPage [erpPartnerVo] :"+ erpPartnerVo);
		
		return mv;
	}
	
	// 협력사 정보 등록 기능 수행
	@RequestMapping(value="/erp/partner/insertPartner.do")
	public ModelAndView newPartner(MultipartHttpServletRequest multipartHttpServletRequest, ErpPartnerVo erpPartnerVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = 0;
		
		result = erpPartnerService.insertPartner(erpPartnerVo);
		
		if(result != 0 && multipartHttpServletRequest != null) {
			
			erpPartnerService.uploadAndInsertFile(multipartHttpServletRequest,erpPartnerVo);
		}
		
		System.out.println("PartnerController.insertPartner [erpPartnerVo] :"+ erpPartnerVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
	
	// 협력사 정보 수정 기능 수행
	@RequestMapping(value="/erp/partner/updatePartner.do")
	public ModelAndView updatePartner(MultipartHttpServletRequest multipartHttpServletRequest, ErpPartnerVo erpPartnerVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = 0;
		
		ErpPartnerVo beforeUpdatePrtnEnrlmNum = erpPartnerService.selectPrtnEnrlmNum(erpPartnerVo);
		
		String beforeUpdate = beforeUpdatePrtnEnrlmNum.getPrtnEnrlmNum();
		
		erpPartnerVo.setBeforeUpdate(beforeUpdate);
		
		erpPartnerService.updateReferencedRow(erpPartnerVo);
		
		result = erpPartnerService.updatePartner(erpPartnerVo);
		
		
		if(result != 0 && multipartHttpServletRequest != null) {
			
			erpPartnerService.uploadAndInsertFile(multipartHttpServletRequest, erpPartnerVo);
		}
		
		System.out.println("PartnerController.updatePartner [erpPartnerVo] :"+ erpPartnerVo);
		
		mv.addObject("code", result);
		
		return mv;
	}
	
	// 협력사 정보 삭제 1개 (협력사정보, 협력사정보 담당자) 
	// <-- 협력사 파일 존재 시 파일 사용여부 업데이트 해야함.
	@RequestMapping(value="/erp/partner/deletePartner.do")
	public ModelAndView deletePartner(HttpServletRequest request, ErpPartnerVo erpPartnerVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = erpPartnerService.deletePartner(erpPartnerVo);
		
		erpPartnerService.deleteAllPartnerFile(erpPartnerVo);
		
		mv.addObject("code", result);
		
		System.out.println("PartnerController.deletePartner [erpPartnerVo] :"+ erpPartnerVo);
		
		return mv;
	}
	
	// 협력사 정보 파일 사용 여부를 "N" 으로 업데이트하여 조회되지 않게끔 한다.
	@RequestMapping(value="/erp/partner/deletePartnerFile.do")
	public ModelAndView deletePartnerFile(HttpServletRequest request, ErpPartnerVo erpPartnerVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = 0;
		
		result = erpPartnerService.deletePartnerFile(erpPartnerVo);
		
		mv.addObject("code",result);
		mv.addObject("prtnFileSq",erpPartnerVo.getPrtnFileSq());
		
		
		System.out.println("PartnerController.deletePartnerFile [erpPartnerVo] :"+ erpPartnerVo);

		return mv;
	}
	
	// 사업자 등록번호가 ~ 인 협력사 담당자 ROW 에서 담당자 2 정보에 해당하는 column 의 value 들을 모두 '' 로 변경.
	@RequestMapping(value="/erp/partner/deleteSecondMngr.do")
	public ModelAndView deleteSecondMngr(HttpServletRequest request, ErpPartnerVo erpPartnerVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = 0;
		
		result = erpPartnerService.deleteSecondMngr(erpPartnerVo);
		
		mv.addObject("code",result);
		
		System.out.println("PartnerController.deleteSecondMngr [erpPartnerVo] :"+ erpPartnerVo);
		
		return mv;
	}
	
	// 사업자등록번호 중복 확인.
	@RequestMapping(value="/erp/partner/checkDuplicate.do")
	public ModelAndView checkDuplicate(HttpServletRequest request, ErpPartnerVo erpPartnerVo) throws Exception {
		//jsonView 형태로 리턴
		ModelAndView mv = new ModelAndView("jsonView");
		
		int duplicate = 0;
		
		ErpPartnerVo checkDuplicate = new ErpPartnerVo();
		
		checkDuplicate= erpPartnerService.checkDuplicate(erpPartnerVo);
		
		duplicate = checkDuplicate.getCount();
		
		mv.addObject("duplicate",duplicate);
		
		System.out.println("PartnerController.checkDuplicate [erpPartnerVo] :"+ erpPartnerVo);
		
		return mv;
	}
	
	//협력사 파일 다운로드.
	@RequestMapping(value="/erp/partner/downloadFile.do")
	public void downloadFile(ErpPartnerVo erpPartnerVo, HttpServletResponse response) throws Exception {

		erpPartnerService.downloadFile(erpPartnerVo,response);
	}
	
}
