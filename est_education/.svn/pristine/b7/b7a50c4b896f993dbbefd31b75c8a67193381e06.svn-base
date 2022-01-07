package com.sboard.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.sboard.service.SboardService;
import com.sboard.vo.SboardVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller //최초 필수
@SuppressWarnings("all")
public class SboardController extends BaseController {
	
	Logger log = Logger.getLogger(this.getClass());
	
	private final static String USER_SESSION_ID = "USER_SESSION_ID";
	
	//서비스 연결
	@Resource(name = "sboardService")
	SboardService sboardService;
	
	//게시판 리스트 연결
	@RequestMapping(value = "/sboard/sboardList.do")
	public ModelAndView openListPage(HttpServletRequest request, SboardVo sboardVo) throws Exception {
		ModelAndView mv = new ModelAndView("/sboard/sboard_list");
		
		List<SboardVo> list = sboardService.selectSboardList(sboardVo);
		mv.addObject("sboard_list", list);

		return mv;
	}
	
	//게시판 등록 페이지 이동
	@RequestMapping(value = "/sboard/sboardWrite.do")
	public ModelAndView openWritePage() throws Exception {
	    ModelAndView mv = new ModelAndView("/sboard/sboard_write");
	    return mv;
	}
	
	//게시판 등록
	@RequestMapping("/sboard/insertSboardWrite.do")
	public ModelAndView insertQuestion(HttpServletRequest request, SboardVo sboardVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = sboardService.insertWrite(sboardVo);
		System.out.println("result" + result);
		mv.addObject("code", result);
		return mv;
	}
	
	//게시판 상세 페이지 이동
	@RequestMapping(value = "/sboard/sboardContent.do")
	public ModelAndView openContentPage(HttpServletRequest request, String bpNo) throws Exception {
		ModelAndView mv = new ModelAndView("/sboard/sboard_content");
		
		SboardVo Content = sboardService.selectSboardContent(bpNo);
		mv.addObject("BoardContent", Content);

			return mv;
	}
	
	//게시판 수정 페이지 이동
	@RequestMapping("/sboard/sboardUpdate.do")
	public ModelAndView openUpdatePage(HttpServletRequest request, String bpNo) throws Exception {
		ModelAndView mv = new ModelAndView("/sboard/sboard_update");
		
		SboardVo Update = sboardService.selectUpdate(bpNo);

		mv.addObject("ContentUpdate", Update);
		
		return mv;
	}
	
	//게시판 내용 수정
	@RequestMapping("/sboard/sboardUpdateProcess.do")
	public ModelAndView updateContent(HttpServletRequest request, SboardVo sboardVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		
		int result = sboardService.UpdateContent(sboardVo);
		mv.addObject("BoardContent", result);
		
		return mv;
	}
	
	//게시판 내용 삭제
	@RequestMapping("/sboard/sboardDeleteProcess.do")
	public ModelAndView deleteContentdata(HttpServletRequest request, SboardVo sboardVo) throws Exception {
		ModelAndView mv = new ModelAndView("/sboard/sboard_list");
		
		int Delete = sboardService.DeleteContentData(sboardVo);
		mv.addObject("bpNo", Delete);
		
		return mv;
	}

}
