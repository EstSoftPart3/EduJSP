package com.equipment.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.equipment.vo.EquipmentVo;

import common.dao.AbstractDAO;

@Repository("equipmentDao")
public class EquipmentDao extends AbstractDAO{
	
	@SuppressWarnings(value = "unchecked")
	public List<EquipmentVo> selectEquipmentList(EquipmentVo equipmentVo) throws Exception{
		Map<String, Object> paramMap = equipmentVo.toMap();
		//paramMap.put("EQPMNT_TCD", equipmentVo.getEqpmntTcdArr());
		
		List<EquipmentVo> out = selectList("equipment.selectEquipmentList",paramMap);
		
		
		return  out;
	}

	public int insertEquipment(EquipmentVo equipmentVo) throws Exception {
		
		return (int)insert("equipment.insertEquipment", equipmentVo);
	}

	public EquipmentVo selectEquipmentInfo(String eqpmntSq) throws Exception{
		
		EquipmentVo only=(EquipmentVo) selectOne("equipment.selectequipmentOne", eqpmntSq);
		
		
		
		return only;
	}

	public int deleteEquipment(String eqpmntSq) {
		return (int) delete("equipment.deleteEquipment",eqpmntSq);
	}
	

	public int deleteEquipmentAll(List<EquipmentVo> eqpmntSq) {
		return (int) delete("equipment.deleteEquipemntAll",eqpmntSq);
	}

	public int updateEquipment(EquipmentVo equipmentVo) {
		return (int) update("equipment.updateEquipment", equipmentVo);
	}

	

	


}
