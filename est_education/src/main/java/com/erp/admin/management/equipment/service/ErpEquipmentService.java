package com.erp.admin.management.equipment.service;

import java.util.List;

import com.erp.admin.management.equipment.vo.ErpEquipmentVo;
import com.sampleBoard.vo.BoardSampleVo;

public interface ErpEquipmentService {
	
	
	public List<ErpEquipmentVo> selectEquipmentList(ErpEquipmentVo erpEquipmentVo) throws Exception;	
	//샘플 게시판 목록 리스트 + 페이징
	public List<ErpEquipmentVo> selectEquipmentPagingList(int start, int end, ErpEquipmentVo erpEquipmentVo) throws Exception;
	
	public int insertEquipment(ErpEquipmentVo erpEquipmentVo) throws Exception;
	
	public int deleteEquipment(String eqpmntSq) throws Exception;

	public ErpEquipmentVo selectEquipmentOnly(String eqpmntSq) throws Exception;

	public int deleteEquipmentAll(List<ErpEquipmentVo> eqpmntSq)throws Exception;

	public int updateEquipment(ErpEquipmentVo erpEquipmentVo) throws Exception;

	//public List<ErpEquipmentVo> selectEquipmentCount(ErpEquipmentVo erpEquipmentVo) throws Exception;
	
	//샘플 게시판 총 개수
	//public int selectEquipmentCount(String condition, String keyword) throws Exception;
	
	public int selectEquipmentCount(ErpEquipmentVo erpEquipmentVo) throws Exception;
		
	public List<ErpEquipmentVo> selectEquipmentLentalOne(ErpEquipmentVo erpEquipmentVo) throws Exception;
	
	

	
}
