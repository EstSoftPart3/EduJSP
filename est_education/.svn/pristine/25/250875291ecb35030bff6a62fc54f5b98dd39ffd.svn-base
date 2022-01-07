package com.erp.admin.management.shipping.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;


import com.erp.admin.management.shipping.dao.ErpShippingDao;
import com.erp.admin.management.shipping.vo.ErpShippingVo;

@Service(value = "ErpShippingService")
public class ErpShippingServiceImpl implements ErpShippingService {

	Logger log = Logger.getLogger(this.getClass());
	
	@Resource(name = "ErpShippingDao")
	ErpShippingDao shippingDao;
	
	// 배송 관리 + 페이징
	@Override
	public List<ErpShippingVo> shippingPagingList(int start, int end, ErpShippingVo erpShippingVo) throws Exception {
		
		List<ErpShippingVo> list = new ArrayList<ErpShippingVo>();
		
		System.out.println("서비스 searchOption : " + erpShippingVo.getSearchOption() );
		System.out.println("서비스 search : " + erpShippingVo.getSearch());
		
		
		try {
			list = shippingDao.shippingPagingList(start, end, erpShippingVo);
		}catch (Exception e) {
			log.info("shippingPagingList Failed [" + e.getMessage() + "]");
		}finally {
			
		}
		return list;
	}
	// 배송 상세
	@Override
	public ErpShippingVo shippingDetail(ErpShippingVo shippingVo) throws Exception {
		
		ErpShippingVo shiPpingVo = new ErpShippingVo();
		
		try {
			shiPpingVo = shippingDao.shippingDetail(shippingVo);
		}catch(Exception e) {
			log.info("shippingDetail Failed [" + e.getMessage() + "]");
		}finally {
			
		}
		return shiPpingVo;
	}
	// 배송 등록
	@Override
	public int shippingInsert(ErpShippingVo shippingVo) throws Exception {
		
		int result = 0;
		
		try {
			shippingDao.shippingInsert(shippingVo);
		}catch(Exception e) {
			log.info("shippingInsert Failed [" + e.getMessage() + "]");
		}finally {
			
		}
		return result;
	}
	// 배송 삭제
	@Override
	public int shippingDelete(ErpShippingVo shippingVo) throws Exception {
		
		int result = 0;
		
		try {
			shippingDao.shippingDelete(shippingVo);
		}catch(Exception e) {
			log.info("shippingDelete Failed [" + e.getMessage() + "]");
		}finally {
			
		}
		return result;
	}
	// 배송 수정
	@Override
	public int shippingUpdate(ErpShippingVo shippingVo) throws Exception {
		
		int result = 0;
		
		try {
			shippingDao.shippingUpdate(shippingVo);
		}catch(Exception e) {
			log.info("shippingUpdate Failed [" + e.getMessage() + "]");
		}finally {
			
		}
		return result;
	}
	// 게시판 총 개수
	@Override
	public int shippingCountList(ErpShippingVo shippingVo) throws Exception {
		System.out.println("서비스 진입");
		System.out.println("keyword : " + shippingVo );
		return shippingDao.shippingCountList(shippingVo);
	}
	
}
