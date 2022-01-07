package com.erp.admin.management.shipping.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.erp.admin.management.shipping.vo.ErpShippingVo;

import common.dao.AbstractDAO;

@Repository("ErpShippingDao")
public class ErpShippingDao extends AbstractDAO {
	
	// 노란경고등을 없애줍니다.
	/*@SuppressWarnings(value="unchecked")*/
	// 배송 관리
	/*public List<ShippingVo> shippingShippingList(ShippingVo shippingVo) throws Exception {
		
		Map<String, Object> paramMap = shippingVo.toMap(); // Map으로 Vo 변환
		
		List<ShippingVo> out = selectList("erpShipping.selectShippingList", paramMap);
		
		return out;
	}*/
	// 노란경고등을 없애줍니다.
	@SuppressWarnings(value="unchecked")
	// 배송 관리 + 페이징
	public List<ErpShippingVo> shippingPagingList(int start, int end, ErpShippingVo shippingVo) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		map.put("searchOption", shippingVo.getSearchOption()); // 검색 옵션
		map.put("search", shippingVo.getSearch()); // 검색어
		map.put("startDt", shippingVo.getStartDt()); // 시작 날짜
		map.put("endDt", shippingVo.getEndDt()); // 종료 날짜
		
		map.put("end", end);
		
		return selectList("erpShppng.selectShippingList", map);
	}
	// 배송 상세
	public ErpShippingVo shippingDetail(ErpShippingVo shippingVo) throws Exception {
			return (ErpShippingVo) selectOne("erpShppng.shippingDetail", shippingVo);
		}
	// 배송 수정
	public int shippingUpdate(ErpShippingVo shippingVo) {
		return (int) update("erpShppng.shippingUpdate", shippingVo);
	}
	// 배송 등록
	public int shippingInsert(ErpShippingVo shippingVo) {
		return (int) insert("erpShppng.shippingInsert", shippingVo);
	}
	// 배송 삭제
	public int shippingDelete(ErpShippingVo shippingVo) {
		return (int) delete("erpShppng.shippingDelete", shippingVo);
	}
	// 게시판 총 개수
	public int shippingCountList(ErpShippingVo shippingVo) throws Exception {
		System.out.println("다오 진입");
		System.out.println("keyword : " + shippingVo );
		return (Integer) selectOne("erpShppng.shippingCount", shippingVo);
	}
}
