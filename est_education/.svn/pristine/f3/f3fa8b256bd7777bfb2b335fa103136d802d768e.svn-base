package com.erp.admin.humanresources.member.controller;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.erp.admin.humanresources.member.service.ErpMemberService;
import com.erp.admin.humanresources.member.util.MemberFileUtils;
import com.erp.admin.humanresources.member.util.MemberUtils;
import com.erp.admin.humanresources.member.vo.ErpMemberCareerVo;
import com.erp.admin.humanresources.member.vo.ErpMemberCertificationVo;
import com.erp.admin.humanresources.member.vo.ErpMemberDocumentVo;
import com.erp.admin.humanresources.member.vo.ErpMemberEducationVo;
import com.erp.admin.humanresources.member.vo.ErpMemberOAVo;
import com.erp.admin.humanresources.member.vo.ErpMemberVo;
import com.erp.common.pager.pagerMaster;

import common.base.controller.BaseController;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class ErpMemberController extends BaseController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "erpMemberService")
	ErpMemberService memberService;
	
	
// ############################################################### SELECT ALL LIST
	//전체 리스트 불러오기
//	@RequestMapping(value = "/erp/member/openMemberListPage.do")
//	public ModelAndView openMemberListPage(	HttpServletRequest request, 
//											ErpMemberVo mbrVo) throws Exception {
//		ModelAndView mv = new ModelAndView("/erp/humanresources/member/member_list_page");
//		ModelAndView mv = new ModelAndView("/erp/humanresources/member/member_list_page");
//		
//		
//		mv.addObject("memberList", memberService.selectMemberList(mbrVo));
//		
//		return mv;
//	}
	
	
	
	// 전체 리스트 (+ 검색) + 페이저 불러오기
	@RequestMapping(value = "/erp/member/selectMemberListPage.do")
	public ModelAndView selectMemberListPage(HttpServletRequest request, 
		ErpMemberVo mbrVo
	) throws Exception {
		ModelAndView mv = new ModelAndView();
		MemberUtils util = new MemberUtils();
		System.out.println("================================");
		int count = memberService.countMemberList();
		System.out.println("================================");
		
		if(util.isFirstPage(mbrVo)) {
			mv.setViewName("/erp/humanresources/member/member_list_page");
			mbrVo.setCurPage(1);
		}else {
			mv.setViewName("jsonView");
			mbrVo.setCurPage(mbrVo.getPage());
		}
		
		pagerMaster pager = new pagerMaster(count,mbrVo.getCurPage(), 10,10);
		int start = pager.getPageBegin();
		int end = pager.getPageEnd();
		
		log.info(mbrVo);
		
		List<ErpMemberVo> list = memberService.selectMemberList(mbrVo, start, end);
		
		pagerMaster counter = new pagerMaster(list.size(),mbrVo.getCurPage(), 10,10);
		
		mv.addObject("memberList", list);
		mv.addObject("count", list.size());
		mv.addObject("pager", pager);
		mv.addObject("curPage", mbrVo.getCurPage());
		
		log.info("vo curPage : " + mbrVo.getCurPage());
		log.info("pager curPage : " + pager.getCurPage());
		
		return mv;
	}
	
	
// ############################################################### SELECT ONE
	//직원 상세 불러오기
	@RequestMapping(value = "/erp/member/openMemberDetailPage.do")
	public ModelAndView openMemberPage(HttpServletRequest request, ErpMemberVo mbrVo) throws Exception {
		ModelAndView mv = new ModelAndView("/erp/humanresources/member/member_detail_page");
		
		mv.addObject("emply", memberService.selectMemberDetail(mbrVo));
		mv.addObject("document", memberService.selectMemberDoc(mbrVo));
		mv.addObject("education", memberService.selectMemberEdu(mbrVo));
		mv.addObject("carrer", memberService.selectMemberCarr(mbrVo));
		mv.addObject("certification", memberService.selectMemberCertf(mbrVo));
		mv.addObject("OA", memberService.selectMemberOA(mbrVo));
		
		return mv;
	}
	
	
// ############################################################### DELETE MEMBER
	//직원 삭제
	@RequestMapping(value = "/erp/member/deleteMember.do")
	public ModelAndView deleteMember(HttpServletRequest request,
			@RequestParam List<Integer> checked) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/erp/member/selectMemberListPage.do");
		
		memberService.deleteMember(checked);
		
		return mv;
	}
	
	
// ############################################################### INSERT MEMBER
	//직원 정보 추가 페이지
	@RequestMapping(value = "/erp/member/openMemberInsertPage.do")
	public ModelAndView openMemberInsertPage(HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView("/erp/humanresources/member/member_insert_page");
		
		return mv;
	}
	
	//직원 정보 추가
	@RequestMapping(value = "/erp/member/insertMember.do", 
					method = RequestMethod.POST)
	public ModelAndView insertMember(
			MultipartHttpServletRequest mpRequest,
			ErpMemberVo erpMemberVo) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/erp/member/selectMemberListPage.do");
		
		memberService.insertMember(erpMemberVo);
		
		long emplySq = memberService.getSqNextval();
		
		if(!erpMemberVo.getTblEdu().isEmpty()) {
			String[] eduArray = erpMemberVo.getTblEdu().split("/");
			ErpMemberEducationVo eduvo = new ErpMemberEducationVo();
			List<ErpMemberEducationVo> eduList = eduvo.setArrayToVO(eduArray,emplySq);
//			log.info(eduList);
			memberService.insertMemberEductn(eduList);
		}else {
			System.out.println("ErpMemberEducationVo is empty");
		}
		
		if(!erpMemberVo.getTblCarr().isEmpty()) {
			String[] carrArray = erpMemberVo.getTblCarr().split("/");
			ErpMemberCareerVo carrvo = new ErpMemberCareerVo();
			List<ErpMemberCareerVo> carrList = carrvo.setArrayToVO(carrArray,emplySq);
//			log.info(carrList);
			memberService.insertMemberCarr(carrList);
		}else {
			System.out.println("ErpMemberCareerVo is empty");
		}
		
		if(!erpMemberVo.getTblCertf().isEmpty()) {
			String[] certfArray = erpMemberVo.getTblCertf().split("/");
			ErpMemberCertificationVo certfvo = new ErpMemberCertificationVo();
			List<ErpMemberCertificationVo> certfList = certfvo.setArrayToVO(certfArray,emplySq);
//			log.info(certfList);
			memberService.insertMemberCertfctn(certfList);
		}else {
			System.out.println("ErpMemberCertificationVo is empty");
		}
		
		if(!erpMemberVo.getTblOA().isEmpty()) {
			String[] oaArray = erpMemberVo.getTblOA().split("/");
			ErpMemberOAVo OAVo = new ErpMemberOAVo();
			List<ErpMemberOAVo> OAList = OAVo.setArrayToVO(oaArray,emplySq);
//			log.info(OAList);

			memberService.insertMemberOA(OAList);
		}else {
			System.out.println("ErpMemberOAVo is empty");
		}
		
		//save file
		MemberFileUtils fileUtil = new MemberFileUtils();
		
		List<ErpMemberDocumentVo> docList = fileUtil.parseInsertFileInfo(emplySq, mpRequest);
		memberService.insertMemberDoc(docList);
		
		return mv;
	}
	
	
	
	
// ############################################################### FILE DOWNLOAD
	@RequestMapping(value="/erpFileDown.do")
	public void fileDown(@RequestParam int DOC_SQ, HttpServletResponse response) throws Exception {
		
		Map<String, Object> resultMap = memberService.selectFileInfo(DOC_SQ);
		
		String storedFileName = (String) resultMap.get("DOC_STR_FILE");
		String originalFileName = (String) resultMap.get("DOC_ORG_FILE");
		
		// 파일을 저장했던 위치에서 첨부파일을 읽어 byte[]형식으로 변환한다.
		byte fileByte[] = org.apache.commons.io.FileUtils.readFileToByteArray(new File("C:\\SpringProject\\fileStorage\\MemberFiles\\"+storedFileName));
		
		response.setContentType("application/octet-stream");
		response.setContentLength(fileByte.length);
		response.setHeader("Content-Disposition",  "attachment; fileName=\""+URLEncoder.encode(originalFileName, "UTF-8")+"\";");
		response.getOutputStream().write(fileByte);
		response.getOutputStream().flush();
		response.getOutputStream().close();
	}
	
// ############################################################### UPDATE MEMBER 
	//직원 정보 수정 페이지
	@RequestMapping(value = "/erp/member/openMemberUpdatePage.do")
	public ModelAndView openMemberUpdatePage(HttpServletRequest request, ErpMemberVo mbrVo ) throws Exception {
		ModelAndView mv = new ModelAndView("/erp/humanresources/member/member_update_page");

		mv.addObject("emply", memberService.selectMemberDetail(mbrVo));
		mv.addObject("document", memberService.selectMemberDoc(mbrVo));
		mv.addObject("education", memberService.selectMemberEdu(mbrVo));
		mv.addObject("carrer", memberService.selectMemberCarr(mbrVo));
		mv.addObject("certification", memberService.selectMemberCertf(mbrVo));
		mv.addObject("OA", memberService.selectMemberOA(mbrVo));
		
		return mv;
	}
	
	//직원 정보 수정
	@RequestMapping(value = "/erp/member/updateMember.do")
	public ModelAndView updateMember(MultipartHttpServletRequest mpRequest, 
			ErpMemberVo erpMemberVo ) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:/erp/member/selectMemberListPage.do");
		
		System.out.println(erpMemberVo);
		
		//update member
		memberService.updateMember(erpMemberVo);
		int emplySq = (int)erpMemberVo.getEmplySq();
		
		//makestring array to list
		String[] eduArray = erpMemberVo.getTblEdu().split("/");
		String[] carrArray = erpMemberVo.getTblCarr().split("/");
		String[] certfArray = erpMemberVo.getTblCertf().split("/");
		String[] oaArray = erpMemberVo.getTblOA().split("/");
		ErpMemberEducationVo eduvo = new ErpMemberEducationVo();
		ErpMemberCareerVo carrvo = new ErpMemberCareerVo();
		ErpMemberCertificationVo certfvo = new ErpMemberCertificationVo();
		ErpMemberOAVo OAVo = new ErpMemberOAVo();
		
		
		//Initialization member sub table
		memberService.deleteMemberEductn(emplySq);
		memberService.deleteMemberCarr(emplySq);
		memberService.deleteMemberCertfctn(emplySq);
		memberService.deleteMemberOA(emplySq);
		
		//update edu
		if(!erpMemberVo.getTblEdu().isEmpty()) {
			List<ErpMemberEducationVo> eduList = eduvo.setArrayToVO(eduArray,emplySq);
			memberService.insertMemberEductn(eduList);
		}else {
			System.out.println("ErpMemberEducationVo is empty");
		}
		
		//update carr
		if(!erpMemberVo.getTblCarr().isEmpty()) {
			List<ErpMemberCareerVo> carrList = carrvo.setArrayToVO(carrArray,emplySq);
			memberService.insertMemberCarr(carrList);
		}else {
			System.out.println("ErpMemberCareerVo is empty");
		}
		
		//update certf
		if(!erpMemberVo.getTblCertf().isEmpty()) {
			List<ErpMemberCertificationVo> certfList = certfvo.setArrayToVO(certfArray,emplySq);
			memberService.insertMemberCertfctn(certfList);
		}else {
			System.out.println("ErpMemberCertificationVo is empty");
		}
		
		//update oa
		if(!erpMemberVo.getTblOA().isEmpty()) {
			List<ErpMemberOAVo> OAList = OAVo.setArrayToVO(oaArray,emplySq);
			memberService.insertMemberOA(OAList);
		}else {
			System.out.println("ErpMemberOAVo is empty");
		}
		
		//save file (no delete)
		MemberFileUtils fileUtil = new MemberFileUtils();
		List<ErpMemberDocumentVo> docList = fileUtil.parseInsertFileInfo(emplySq, mpRequest);
//		log.info(docList);
		memberService.insertMemberDoc(docList);
		
		return mv;
	}
	
	
	// layout page ! 
	@RequestMapping(value = "/erp/member/layout.do")
	public ModelAndView goLayoutPage() throws Exception {
		ModelAndView mv = new ModelAndView("/erp/humanresources/member/member_info_detail_layout");
		
		return mv;
	}
}
