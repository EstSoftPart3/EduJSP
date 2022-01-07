package com.erp.admin.management.shipping.service;

import java.util.List;

import com.erp.admin.management.shipping.vo.ErpShippingVo;

public interface ErpShippingService {

	// 배송 관리 + 페이징
	public List<ErpShippingVo> shippingPagingList(int start, int end, ErpShippingVo shippingVo) throws Exception;
	
	// 배송 상세
	public ErpShippingVo shippingDetail(ErpShippingVo shippingVo) throws Exception;
	
	// 배송 수정
	public int shippingUpdate(ErpShippingVo shippingVo) throws Exception;
	
	// 배송 등록
	public int shippingInsert(ErpShippingVo shippingVo) throws Exception;
	
	// 배송 삭제
	public int shippingDelete(ErpShippingVo shippingVo) throws Exception;
	
	// 게시판 총 갯수
	public int shippingCountList(ErpShippingVo shippingVo) throws Exception;
}
