package com.equipment.service;

import java.util.List;

import com.equipment.vo.EquipmentVo;

public interface EquipmentService {
	
	/**
	 * 장비-목록 조회
	 * 
	 * @return List<EquipmentVo>
	 * @throws Exception
	 */
	public List<EquipmentVo> selectEquipmentList(EquipmentVo equipmentVo) throws Exception;

	public int insertEquipment(EquipmentVo equipmentVo) throws Exception;
	
	public int deleteEquipment(String eqpmntSq) throws Exception;

	public EquipmentVo selectEquipmentOnly(String eqpmntSq) throws Exception;

	public int deleteEquipmentAll(List<EquipmentVo> eqpmntSq)throws Exception;

	public int updateEquipment(EquipmentVo equipmentVo) throws Exception;



	
}

