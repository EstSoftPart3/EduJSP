package com.sampleBoard.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sampleBoard.service.ExcelService;
import com.sampleBoard.vo.BoardSampleVo;


@Controller
public class ExcelController {
	
	//ExcelService 주입을 시킵니다.
	@Resource(name = "excelService")
	ExcelService excelservice;
	
	//엑셀을 매핑하기 위해서 메소드를 작성합니다.
	@RequestMapping(value = "/ecxel/downloadExcelFile.do", method = RequestMethod.POST)
    public String downloadExcelFile(HttpServletRequest request, Model model, BoardSampleVo boardSampleVo) throws Exception {

		//리스트 모든 목록을 그대로 가지고 와서 list에 담습니다.
        List<BoardSampleVo> list = excelservice.sampleBoardList(boardSampleVo);
        
        //엑셀을 다운로드 하기 위해서 excelService에 excelFileDownloadProcess이름을 가진 service를 가지고와서
        //리스트의 목록이 담겨져 있는 list를 넣습니다.
        SXSSFWorkbook workbook = excelservice.excelFileDownloadProcess(list);
        
        //현재 날짜 시간을 local로 사용한다.
        model.addAttribute("locale", Locale.KOREA);
        //현재 excelservice.excelFileDownloadProcess(list)의 정보를 workbook으로 사용한다. 
        model.addAttribute("workbook", workbook);
        //엑셀의 이름을 workbookName 넣는다.
        model.addAttribute("workbookName", "샘플게시판");
        
        //ExcelDownloadView 클래스로 매핑시킨다.
        //action-servlet.xml에서 bean을 id를 excelDownloadView 지정해서 jsp파일이 아닌 class를 불러온다.
        return "excelDownloadView";
    }
	
	@ResponseBody
	@RequestMapping(value = "/ecxel/uploadExcelFile.do", method = RequestMethod.POST)
    public List<BoardSampleVo> uploadExcelFile(MultipartHttpServletRequest request, Model model) {
		
		//file 변수 초기화
        MultipartFile file = null;
        
        Iterator<String> iterator = request.getFileNames();
        
        if(iterator.hasNext()) {
        	
            file = request.getFile(iterator.next());
        }
        
        List<BoardSampleVo> list = excelservice.uploadExcelFile(file);
        
        model.addAttribute("list", list);
        
        //LIST 정보확인
        System.out.println("Controller List[] : " + list);
        
        return list;
    }
	
	

	
}
