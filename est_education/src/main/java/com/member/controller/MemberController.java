package com.member.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.code.service.CodeService;
import com.code.vo.CodeVo;
import com.equipmentLental.vo.EquipmentLentalVo;
import com.file.service.FileService;
import com.file.vo.FileVo;
import com.member.service.MemberService;
import com.member.vo.MemberCheckedVo;
import com.member.vo.MemberVo;
import com.project.vo.ProjectVo;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController extends BaseController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "memberService")
	MemberService memberService;
	
	@Resource(name = "fileService")
	FileService fileService;

	@Resource(name = "codeService")
	CodeService codeService;

	@RequestMapping(value = "/member/openMemberListPage.do")
	public ModelAndView openMemberListPage(HttpServletRequest request, MemberCheckedVo mbrVo) throws Exception {
		ModelAndView mv = new ModelAndView("/member/member_list_page");

		List<MemberVo> list = memberService.selectMemberList(mbrVo);
		
		Map<String, String> searchData = new HashMap<String, String>();

		searchData.put("grpCd", "CODE00006");
		List<CodeVo> codeList = codeService.selectCodeList(searchData);
		mv.addObject("codePosition", codeList);

		searchData.put("grpCd", "CODE00007");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeType", codeList);

		searchData.put("grpCd", "CODE00008");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeDept", codeList);

		searchData.put("grpCd", "CODE00009");
		codeList = codeService.selectCodeList(searchData);
		
		
		mv.addObject("codeWarn", codeList);

		mv.addObject("memberList", list);

		return mv;
	}

	@ResponseBody
	@RequestMapping(value = "/member/selectMemberListPage.do")
	public ModelAndView selectMemberListPage(HttpServletRequest request, MemberCheckedVo mbrVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		List<MemberVo> list = memberService.selectMemberList(mbrVo);

		mv.addObject("memberList", list);

		return mv;
	}

	@RequestMapping(value = "/member/selectMemberSqList.do")
	public ModelAndView selectMemberSqList(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Long> mbrSqArr = new ArrayList<>();

		String[] arr = request.getParameter("mbrSqArr").split(",");

		for (String sq : arr) {
			mbrSqArr.add(Long.parseLong(sq));
		}

		List<MemberVo> list = memberService.selectMemberList(mbrSqArr);

		mv.addObject("memberList", list);

		return mv;
	}

	@RequestMapping("/member/openMemberInsertPage.do")
	public ModelAndView openMemberInsertPage() throws Exception {
		ModelAndView mv = new ModelAndView("/member/member_insert_page");

		Map<String, String> searchData = new HashMap<String, String>();

		searchData.put("grpCd", "CODE00006");
		List<CodeVo> codeList = codeService.selectCodeList(searchData);
		mv.addObject("codePosition", codeList);

		searchData.put("grpCd", "CODE00007");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeType", codeList);

		searchData.put("grpCd", "CODE00008");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeDept", codeList);

		searchData.put("grpCd", "CODE00009");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeWarn", codeList);

		return mv;
	}

	@RequestMapping("/member/insertMember.do")
	@SuppressWarnings("all")
	public ModelAndView insertMember(HttpServletRequest request, MemberVo mbrVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = memberService.insertMember(mbrVo);
		
		
		// 멤버 추가시키면서 FileTable에 개인 Row같이 생성
		FileVo fileVo = new FileVo();
		
		fileVo.setMbrId(mbrVo.getMbrId());
		int result_file = fileService.insertFile(fileVo);
		
		mv.addObject("code", result);
		return mv;
	}

	@RequestMapping("/member/openMemberDetailPage.do")
	public ModelAndView openMemberDetailPage(HttpServletRequest request, long sq, ProjectVo prjVo, EquipmentLentalVo equipmentLentalVo) throws Exception {
		ModelAndView mv = new ModelAndView("/member/member_detail_page");

		MemberVo mbr = memberService.selectMemberOne(sq);

		List<ProjectVo> p_list = memberService.selectProjectList(prjVo);	// 프로젝트 리스트
		
		Map<String, String> searchData = new HashMap<String, String>();	// 코드 데이터
		
		List < EquipmentLentalVo > e_list = memberService.selectEquipmentLentalList(equipmentLentalVo);	// 대여장비 리스트

		mv.addObject("projectList", p_list);
		
		mv.addObject("equipmentlentalList", e_list);

		mv.addObject("memberVo", mbr);

		searchData.put("grpCd", "CODE00006");
		List<CodeVo> codeList = codeService.selectCodeList(searchData);
		mv.addObject("codePosition", codeList);

		searchData.put("grpCd", "CODE00007");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeType", codeList);

		searchData.put("grpCd", "CODE00008");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeDept", codeList);

		searchData.put("grpCd", "CODE00009");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeWarn", codeList);
		
		
		
		
		

		return mv;
	}

	@RequestMapping("/member/selectMemberOne.do")
	public ModelAndView selectMemberOne(HttpServletRequest request, @RequestParam(value = "mbrSq") String sq)
			throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		MemberVo mbrVo = memberService.selectMemberOne(Long.parseLong(sq));

		mv.addObject("memberVo", mbrVo);

		return mv;
	}

	@RequestMapping("/member/deleteMember.do")
	public ModelAndView deleteMember(HttpServletRequest request, long sq) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = memberService.deleteMember(sq);
		mv.addObject("code", result);

		return mv;
	}

	@RequestMapping("/member/openMemberUpdatePage.do")
	public ModelAndView openMemberUpdatePage(HttpServletRequest request, long sq) throws Exception {
		ModelAndView mv = new ModelAndView("/member/member_update_page");

		MemberVo mbr = memberService.selectMemberOne(sq);
		Map<String, String> searchData = new HashMap<String, String>();	// 코드 데이터
		

		mv.addObject("memberVo", mbr);
		
		searchData.put("grpCd", "CODE00006");
		List<CodeVo> codeList = codeService.selectCodeList(searchData);
		mv.addObject("codePosition", codeList);

		searchData.put("grpCd", "CODE00007");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeType", codeList);

		searchData.put("grpCd", "CODE00008");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeDept", codeList);

		searchData.put("grpCd", "CODE00009");
		codeList = codeService.selectCodeList(searchData);
		mv.addObject("codeWarn", codeList);

		return mv;
	}

	@RequestMapping("/member/updateMember.do")
	public ModelAndView updateMember(HttpServletRequest request, MemberVo mbrVo) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");

		int result = memberService.updateMember(mbrVo);
		mv.addObject("code", result);

		return mv;
	}

	@RequestMapping("/member/openLeaveDtPopup.do")
	public ModelAndView openLeaveDtPopup(HttpServletRequest request, @RequestParam(value = "mbrSqArr") String mbrSqArr)
			throws Exception {
		ModelAndView mv = new ModelAndView("/comn/popup/calendar_popup");

		mv.addObject("mbrSqArr", mbrSqArr);

		return mv;
	}

	@RequestMapping("/member/updateLeaveDt.do")
	public ModelAndView updateLeaveDt(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<MemberVo> mbrVoList = new ArrayList<>();

		String[] arr = request.getParameter("mbrSqArr").split(",");
		Date mbrLeaveDt = Date.valueOf(request.getParameter("mbrLeaveDt"));

		for (String sq : arr) {
			MemberVo memberVo = new MemberVo();
			memberVo.setMbrSq(Long.parseLong(sq));
			memberVo.setMbrLeaveDt(mbrLeaveDt);
			mbrVoList.add(memberVo);
		}

		int result = memberService.updateLeaveDt(mbrVoList);
		mv.addObject("code", result);

		return mv;
	}

	@RequestMapping("/member/cancelLeaveDt.do")
	public ModelAndView cancelLeaveDt(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<MemberVo> mbrVoList = new ArrayList<>();

		String[] arr = request.getParameter("mbrSqArr").split(",");

		for (String sq : arr) {
			MemberVo memberVo = new MemberVo();
			memberVo.setMbrSq(Long.parseLong(sq));
			mbrVoList.add(memberVo);
		}

		int result = memberService.updateLeaveDt(mbrVoList);
		mv.addObject("code", result);

		return mv;
	}

	@RequestMapping("/member/test.do")
	public ModelAndView memberTest() throws Exception {
		log.info("test controller in");
		ModelAndView mv = new ModelAndView("jsonView");

		List<String> list = new ArrayList<String>();
		list.add("test1");
		list.add("test2");
		list.add("test3");

		mv.addObject("testList", list);
		return mv;
	}
	
	
	/*@RequestMapping(value = "/member/uploadFile.do", method = RequestMethod.POST)
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
			// TODO Auto-generated catch block
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
	}*/
	
	

}
