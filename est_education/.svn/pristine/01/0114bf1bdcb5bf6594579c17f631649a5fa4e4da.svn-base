package com.sampleBoard.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.sampleBoard.service.SampleBoardService;
import com.sampleBoard.vo.BoardSampleVo;

import common.base.controller.BaseController;
import common.pager.SampleBoardPager;

@Controller
public class SampleBoardController extends BaseController{
	
	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "sampleBoardService")
	SampleBoardService sampleBoardService;
	
	@RequestMapping(value="/erp/sample/sampleBoardPagingList.do")
	public ModelAndView openSampleBoardPagingList(@RequestParam(defaultValue="1")     int    curPage,
			                                      @RequestParam(defaultValue="")      String keyword) throws Exception {
		
		System.out.println("ppppppppppppppppp" + keyword);
		
		int count = sampleBoardService.sampleBoardCountList(keyword);
		
		SampleBoardPager boardPager = new SampleBoardPager(count, curPage);
		int start = boardPager.getPageBegin();
		int end = boardPager.getPageEnd();
		
		List<BoardSampleVo> list = sampleBoardService.sampleBoardPagingList(start, end, keyword);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("count", count);
		map.put("boardPager", boardPager);
		map.put("keyword", keyword);

	    ModelAndView mv = new ModelAndView();
	    mv.addObject("map", map);
	    mv.setViewName("sampleBoard/scr_paging_excel_list");
	   
	    return mv;  
	    
	}
	
	//샘플 게시판 상세 조회 + 조회 수 카운트
	@RequestMapping(value="/erp/sample/sampleBoardDetail.do")
    public ModelAndView sampleBoardDetail(HttpServletRequest request, BoardSampleVo boardSampleVo) throws Exception {
        
        ModelAndView mv = new ModelAndView("/sampleBoard/scr_paging_excel_detail");
        BoardSampleVo detail = sampleBoardService.sampleBoardDetail(boardSampleVo);
        mv.addObject("detail",detail);
        
        List<Map<String, Object>> fileList = sampleBoardService.selectFileList(boardSampleVo.getBno());
		mv.addObject("file", fileList);
        
        return mv;
    }
	
	//샘플 게시판 작성페이지 호출
	@RequestMapping("/erp/sample/openSampleInsertPage.do")
	public ModelAndView openSampleInsertPage() throws Exception {
		
		ModelAndView mv = new ModelAndView("/sampleBoard/scr_paging_excel_insert");
		return mv;
		
	}

	//샘플 게시판 등록 + 샘플 게시판 파일첨부 등록
	/*@RequestMapping(value="/erp/sample/sampleBoardInsert.do")
    public ModelAndView sampleBoardInsert(BoardSampleVo boardSampleVo, MultipartHttpServletRequest mpRequest) throws Exception {
       
		ModelAndView mv = new ModelAndView("redirect:/erp/sample/sampleBoardPagingList.do");
        sampleBoardService.sampleBoardInsert(boardSampleVo, mpRequest);
        return mv;
        
    }*/
	
	//샘플 게시판 등록
	@RequestMapping(value="/erp/sample/sampleBoardInsert.do")
	    public ModelAndView sampleBoardInsert(BoardSampleVo boardSampleVo) throws Exception {
	       
			ModelAndView mv = new ModelAndView("jsonView");
	        sampleBoardService.sampleBoardInsert(boardSampleVo);
	        return mv;
	        
	 }
	
	//샘플 게시판 등록
		@RequestMapping(value="/erp/sample/sampleBoardFileInsert.do")
		    public ModelAndView sampleBoardFileInsert(BoardSampleVo boardSampleVo, MultipartHttpServletRequest mpRequest) throws Exception {
		       
				ModelAndView mv = new ModelAndView("jsonView");
		        sampleBoardService.sampleBoardFileInsert(boardSampleVo, mpRequest);
		        return mv;
		        
		 }
	
	//샘플 게시판 수정페이지 호출
	@RequestMapping("/erp/sample/openSampleUpdatePage.do")
	public ModelAndView openSampleUpdatePage(BoardSampleVo boardSampleVo) throws Exception {
		
		ModelAndView mv = new ModelAndView("/sampleBoard/scr_paging_excel_update");
		BoardSampleVo detail = sampleBoardService.sampleBoardDetail(boardSampleVo);
        mv.addObject("detail",detail);
        
        List<Map<String, Object>> fileList = sampleBoardService.selectFileList(boardSampleVo.getBno());
        mv.addObject("file", fileList);
        
		return mv;
		
	}
	
	//샘플 게시판 수정
	@RequestMapping(value="/erp/sample/sampleBoardUpdate.do")
    public ModelAndView  sampleBoardUpdate(BoardSampleVo boardSampleVo,
    		 							 @RequestParam(value="fileNoDel[]") String[] files,
    		 							 @RequestParam(value="fileNameDel[]") String[] fileNames,
    		 							 MultipartHttpServletRequest mpRequest) throws Exception {
        
        ModelAndView mv = new ModelAndView("redirect:/erp/sample/sampleBoardPagingList.do");
        sampleBoardService.sampleBoardUpdate(boardSampleVo, files, fileNames, mpRequest);
        System.out.println("boardSampleVo" + boardSampleVo);
        System.out.println("files" + files);
        System.out.println("fileNames" + fileNames);
        System.out.println("mpRequest" + mpRequest);
        return mv;
        
    }

	//샘플 게시판 삭제
	@RequestMapping(value="/erp/sample/sampleBoardDelete.do")
    public ModelAndView sampleBoardPagingList(BoardSampleVo boardSampleVo) throws Exception {
		
        ModelAndView mv = new ModelAndView("redirect:/erp/sample/sampleBoardPagingList.do");
        sampleBoardService.sampleBoardDelete(boardSampleVo);
        return mv;
        
    }
	
	//샘플 게시판 파일 다운로드
	@RequestMapping(value="/fileDown.do")
	public void fileDown(@RequestParam Map<String, Object> map, HttpServletResponse response) throws Exception {
		Map<String, Object> resultMap = sampleBoardService.selectFileInfo(map);
		String storedFileName = (String) resultMap.get("STORED_FILE_NAME");
		String originalFileName = (String) resultMap.get("ORG_FILE_NAME");
		
		// 파일을 저장했던 위치에서 첨부파일을 읽어 byte[]형식으로 변환한다.
		byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\SpringProject\\fileStorage\\SampleBoard\\"+storedFileName));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
		
	}
}
