package com.partner.service;

import java.util.List;
import java.util.Map;

import com.partner.vo.PartnerVo;

public interface PartnerService {

	/**
	 * 협력사 목록 조회
	 * 
	 *  @return List<ParterVo>
	 *  @throws Exception
	*/
	public List<PartnerVo> selectPartnerList() throws Exception;
	
	/**
	 * 협력사 사업자 유형 검색
	 * 
	 *  @return List<PartnerVO>
	 *  @throws Exception
	*/
	public List<PartnerVo> selectPartnerList(Map<String, String> searchData) throws Exception;

	/**
	 * 협력사 상세 페이지 조회
	 * 
	 * @Return PartnerVo
	 * @throws Excep
	*/
	public PartnerVo selectPartnerOne(long sq) throws Exception;
	
	/**	
	 * 협력사 수정
	 * 
	 * @param prtnVo
	 * @return result
	 * @throws Exception
	*/
	public int updatePartner(PartnerVo prtnVo) throws Exception;
	
	/**
	 * 협력사 등록
	 * 
	 * @param prtnVo
	 * @return result
	 * @throws Exception
	*/
	public int insertPartner(PartnerVo prtnVo) throws Exception;
	
	/**
	 * 협력사 삭제
	 * 
	 * @param long sq
	 * @return result
	 * @throws Exception
	*/
	public int deletePartner(long sq) throws Exception;
}
