package com.erp.admin.business.partner.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.erp.admin.business.partner.vo.ErpPartnerFileVo;
import com.erp.admin.business.partner.vo.ErpPartnerVo;

public interface ErpPartnerService {

	
	/*
	 * 테스트로 모든 협력사 목록 조회하기.
	 * 
	 */
	public List<ErpPartnerVo>selectPartnerList();
	
	
	/*
	 * 
	 * 검색결과에 해당하는 협력사 목록 조회하기.
	 */
	public List<ErpPartnerVo> selectPartnerList(Map<String, String> searchData);
	
	
	/*
	 * 
	 * 새로운 협력사 정보 추가 기업정보랑 담당자 정보 입력받아서 삽입하기.
	 */
	public int insertPartner(ErpPartnerVo erpPartnerVo);

	
	/*
	 * 
	 * 새로운 협력사 정보 추가 시 input File 도 존재할 경우.! FileUtil을 사용해 지정된 Path 에 업로드 후 , 파일 이름, 저장된 파일 이름, 파일 크기 등의 정보를 협력사 정보 파일 테이블에 저장.
	 */
	public int uploadAndInsertFile(MultipartHttpServletRequest multipartHttpServletRequest ,ErpPartnerVo erpPartnerVo);


	/*
	 * prtnSq 를 통해 하나의 협력사 상세 정보를 조회.
	 */
	public ErpPartnerVo selectPartnerOne(ErpPartnerVo erpPartnerVo);



	/*
	 * 
	 * prtnSq 를 통해 하나의 협력사 정보를  삭제.
	 */
	public int deletePartner(ErpPartnerVo erpPartnerVo);



	/*
	 * 
	 * 상세정보를 조회할 경우 파일 정보가 있다면 파일 정보또한 조회페이지에 바인딩 하기위해 체크하는 함수.
	 * select count(*) from 파일테이블 where prtnErnlrNum = ? 이런 식으로 체크.
	 */
	public ErpPartnerVo isFileExist(ErpPartnerVo erpPartnerVo);
	

	/*
	 * 
	 * 사업자등록번호가 ? 인 파일정보들을 모두 불러오는 쿼리.
	 */
	public List<ErpPartnerFileVo> selectPartnerFile(ErpPartnerVo erpPartnerVo);
	

	/*
	 * 협력사 정보가 삭제될때 해당 파일 사용 여부또한 사용하지 않음으로 변경.
	 * update 파일 사용 여부 = 'N' where prtnEnrlmNum = ?
	 */
	public int deleteAllPartnerFile(ErpPartnerVo erpPartnerVo);

	
	/*
	 * 협력사 정보 파일 개별 삭제.
	 * delete from prtnFileSq = ?
	 */
	public int deletePartnerFile(ErpPartnerVo erpPartnerVo);

	
	/*
	 * 협력사 정보 담당자2 정보 null 로 변경.
	 */
	public int deleteSecondMngr(ErpPartnerVo erpPartnerVo);

	
	/*
	 * 
	 * 협력사 정보 업데이트.
	 */
	public int updatePartner(ErpPartnerVo erpPartnerVo);

	
	/*
	 * 
	 * 검색조건에 부합하는 행의 갯수를 가져옴.
	 * select count(*) from 협력사 테이블  where <검색 옵션 = ?> and <검색어 = ?>
	 */
	public int selectSearchCount(ErpPartnerVo erpPartnerVo);

	
	/*
	 * 
	 * 협력사 정보 페이징 리스트.
	 */
	public List<ErpPartnerVo> selectPartnerPagingList(ErpPartnerVo erpPartnerVo);

	/*
	 * 
	 * 협력사 정보 페이징 리스트 (검색옵션,검색어) 포함.
	 */
	public List<ErpPartnerVo> selectPartnerPagingList(Map<String, Object> searchData);

	
	/*
	 * 
	 * 협력사 파일 다운로드 유틸
	 */
	public void downloadFile(ErpPartnerVo erpPartnerVo, HttpServletResponse response);


	/*
	 * 협력사 정보, 협력사 담당자 정보, 협력사 파일 정보를 업데이트 하기전, 
	 * 사업자 등록번호가  A 인 협력사 담당자 정보와 협력사 파일의 사업자 등록번호를 B로 수정한다.
	 */
	public void updateReferencedRow(ErpPartnerVo erpPartnerVo);


	/*
	 * PRTN_SQ 가 ? 인 row의 사업자 등록번호를 찾는 메소드.
	 */
	public ErpPartnerVo selectPrtnEnrlmNum(ErpPartnerVo erpPartnerVo);

	/*
	 * 사업자 등록번호가 A 인 row의 갯수를 찾는 메소드.
	 */
	public ErpPartnerVo checkDuplicate(ErpPartnerVo erpPartnerVo);

	
}
