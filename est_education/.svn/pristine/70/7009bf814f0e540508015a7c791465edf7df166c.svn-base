package com.erp.admin.management.equipment.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.erp.admin.management.equipment.vo.ErpEquipmentVo;

import common.dao.AbstractDAO;

@Repository("ErpEquipmentDao")
public class ErpEquipmentDao extends AbstractDAO {

	@SuppressWarnings(value = "unchecked")
/*
	// 장비 리스트 (Vo로 받음 -> ServiceImpl로)
	public List<ErpEquipmentVo> selectEquipmentList(ErpEquipmentVo erpEquipmentVo) throws Exception {
		
		Map<String, Object> paramMap = erpEquipmentVo.toMap();
		//paramMap.put("EQPMNT_TYP_CD", erpEquipmentVo.getEqpmntTcdArray());
		System.out.println("장비 VO erpEquipmentVo : "+erpEquipmentVo);
		System.out.println("장비 VO getEqpmntTcdArray : "+erpEquipmentVo.getEqpmntTcdArray());
		List<ErpEquipmentVo> selectOut = selectList("erpEquipment.selectEquipmentList", paramMap);

		return selectOut;
	}
*/
	
	public List<ErpEquipmentVo> selectEquipmentList(ErpEquipmentVo erpEquipmentVo) throws Exception{
		Map<String, Object> paramMap = erpEquipmentVo.toMap();
		
		paramMap.put("ErpEquipmentVo", erpEquipmentVo);
		System.out.println("VO값은 DAO에서 : " + erpEquipmentVo);
		return selectList("erpEquipment.selectEquipmentList", paramMap);
		
		
	}
	
	// 장비 리스트 목록 + 페이징
	@SuppressWarnings("unchecked")
	public List<ErpEquipmentVo> selectEquipmentPagingList(int start, int end, ErpEquipmentVo erpEquipmentVo) throws Exception {
		
		/*Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("ErpEquipmentVo", erpEquipmentVo);
		System.out.println("맵 정보 :" + map);
		*/
		
		Map<String, Object> paramMap = erpEquipmentVo.toMap();
		paramMap.put("start", start);
		paramMap.put("end", end);
		System.out.println("맵 정보 :" + paramMap);


		return selectList("erpEquipment.selectEquipmentPagingList", paramMap);
	}
	
	// 장비 세부정보 (리턴값 Vo로 받음)
	public ErpEquipmentVo selectEquipmentInfo(String eqpmntSq) throws Exception {

		ErpEquipmentVo selectInfoOut = (ErpEquipmentVo) selectOne("erpEquipment.selectEquipmentOne", eqpmntSq);

		return selectInfoOut;
	}

	/////////////////////////////////////////////////////////////////
	// 리스트만 Vo 나머지는 Int로 받는 이유
	// 리스트는 값을 불러와서 뿌려줘야 하기 때문에 (Response가 있어서) Vo로 받고
	// 나머지는 처리하고 성공했는지(0) 실패했는지(1) 통보만 하면 되기 때문이다.
	// 때문에 입력, 삭제, 수정은 모두 리턴값이 Int값이다.
	/////////////////////////////////////////////////////////////////

	// 장비 입력 (리턴값 0 or 1, 0 정상작동 // 1 예외처리 -> 서비스Impl로 )
	public int insertEquipment(ErpEquipmentVo equipmentVo) throws Exception {

		return (int) insert("erpEquipment.insertEquipment", equipmentVo);
	}

	// 장비 삭제 (리턴값 0 or 1)
	public int deleteEquipment(String eqpmntSq) {
		return (int) delete("erpEquipment.deleteEquipment", eqpmntSq);
	}

	// 샘플 게시판 총 개수
	public int selectEquipmentCount(ErpEquipmentVo erpEquipmentVo) throws Exception {
		Map<String, Object> paramMap = erpEquipmentVo.toMap();
		return (Integer) selectOne("erpEquipment.selectEquipmentCount", paramMap);
	}

	// 장비 전부 삭제 (리턴값 0 or 1)
	public int deleteEquipmentAll(List<ErpEquipmentVo> eqpmntSq) {
		return (int) delete("erpEquipment.deleteEquipemntAll", eqpmntSq);
	}

	// 장비 수정 (리턴값 0 or 1)
	public int updateEquipment(ErpEquipmentVo equipmentVo) {
		return (int) update("erpEquipment.updateEquipment", equipmentVo);
	}
	
	// 대여 정보 불러오기
	@SuppressWarnings(value = "unchecked")
	public List<ErpEquipmentVo> selectEquipmentLentalOne(ErpEquipmentVo erpEquipmentVo) throws Exception{
		Map<String, Object> paramMap = erpEquipmentVo.toMap();
		System.out.println("출력"+paramMap);	
		paramMap.put("ErpEquipmentVo", erpEquipmentVo);
		return selectList("erpEquipment.selectEquipmentLentalOne", paramMap);
	}
		
		
		
}

	

