package com.file.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.file.service.FileService;
import com.file.vo.FileVo;

import common.base.controller.BaseController;

@Controller
public class FileController extends BaseController{
	
	Logger log = Logger.getLogger(this.getClass());
	@Resource(name = "fileService")
	FileService fileService;
	
	
	// File table에 row 추가
	/*@RequestMapping("/insertFile.do")
	public ModelAndView insertFile(HttpServletRequest request, FileVo fileVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = fileService.insertFile(fileVo);

		mv.addObject("filelist", result);
		return mv;
	}*/
	
	
	
	// Local 저장 방식
	// InsertMember시 같이 추가
	@RequestMapping(value = "/uploadFile.do", method = RequestMethod.POST)
	@SuppressWarnings("all")
	public ModelAndView UploadFile(@RequestParam("mbrSq_test") String mbrSq, @RequestParam("document") MultipartFile document, Model model, @RequestParam("document_flag") int doc_flag) throws IOException {
		
		ModelAndView mv = new ModelAndView("/member/member_update_page");
		
		System.out.println("Controller_uploadFile");

		String originalFile = document.getOriginalFilename();
		String orginalFileExtension = originalFile.substring(originalFile.lastIndexOf("."));
		String storedFileName = "test_" + UUID.randomUUID().toString().replaceAll("-", "") + orginalFileExtension; // "test_" 빼줘야함
		
		String filePath = "C:\\Users\\dlrud\\Documents\\workspace-sts-3.9.4.RELEASE\\est_education\\src\\main\\webapp\\mbrdocuments\\";	// 파일 업로드 경로
		File file = new File(filePath + storedFileName);
		document.transferTo(file);
		
		
		FileVo fileVo = new FileVo();
		
		fileVo.setMbrId(mbrSq);
		
		if(doc_flag == 1) {
			
			fileVo.setOrg_fileNm_1(originalFile);
			fileVo.setStr_fileNm_1(storedFileName);
			fileVo.setFile_path_1(file.getPath());
		}else if(doc_flag == 2) {
			fileVo.setOrg_fileNm_2(originalFile);
			fileVo.setStr_fileNm_2(storedFileName);
			fileVo.setFile_path_2(file.getPath());
		}else if(doc_flag == 3) {
			fileVo.setOrg_fileNm_3(originalFile);
			fileVo.setStr_fileNm_3(storedFileName);
			fileVo.setFile_path_3(file.getPath());
		}else if(doc_flag == 4) {
			fileVo.setOrg_fileNm_4(originalFile);
			fileVo.setStr_fileNm_4(storedFileName);
			fileVo.setFile_path_4(file.getPath());
		}else if(doc_flag == 5) {
			fileVo.setOrg_fileNm_5(originalFile);
			fileVo.setStr_fileNm_5(storedFileName);
			fileVo.setFile_path_5(file.getPath());
		}else {
			System.out.println("File DataBase upload Fail");
		}
		
		
		try {
			int result = fileService.updateFile(fileVo, doc_flag);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		System.out.println("file.getPath() : " + file.getPath());
		System.out.println(mbrSq + "가 업로드한 파일은");
		System.out.println(originalFile + "은 업로드한 file");
		System.out.println(storedFileName + "라는 이름으로 업로드");
		System.out.println("file size : " + document.getSize());
		model.addAttribute("filePath", filePath);
		model.addAttribute("fileName", storedFileName);
		
		return mv;
	}
	
	
}
