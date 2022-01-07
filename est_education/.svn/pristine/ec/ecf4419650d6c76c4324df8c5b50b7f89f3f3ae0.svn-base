package com.equipmentLental.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.equipmentLental.vo.EquipmentLentalVo;
import com.member.vo.MemberVo;
import com.equipment.vo.EquipmentVo;

import common.dao.AbstractDAO;

@Repository("equipmentLentalDao")
public class EquipmentLentalDao extends AbstractDAO{
	
	@SuppressWarnings(value = "unchecked")
	public List<EquipmentLentalVo> selectEquipmentLentalList(EquipmentLentalVo EquipmentLentalVo) throws Exception{
		 
		Map<String, Object> paramMap = EquipmentLentalVo.toMap();
		
		List<EquipmentLentalVo> out = selectList("equipmentLentalMapper.selectEquipmentLentalList",paramMap);

		return  out;
	}
	public int  insertEquipmentLental(EquipmentLentalVo EquipmentLentalVo) throws Exception {
		return (int)insert("equipmentLentalMapper.insertEquipmentLental", EquipmentLentalVo);
	
	}
	public int deleteEquipmentLental(String lntlSq) {
		return (int) delete("equipmentLentalMapper.deleteEquipmentLental",lntlSq);
	}
	public int updateEquipmentLental(EquipmentLentalVo EquipmentLentalVo) {
		return (int) update("equipmentLentalMapper.updateEquipmentLental", EquipmentLentalVo);
	}
    public EquipmentLentalVo selectEquipmentLentalOne(String lntlSq) throws Exception{
    	EquipmentLentalVo only=(EquipmentLentalVo) selectOne("equipmentLentalMapper.selectEquipmentLentalOne", lntlSq);
		return only;
	}
    //사용가능한 장비
    @SuppressWarnings(value = "unchecked")
	public List<EquipmentVo> selectPsblEquipmentList(EquipmentVo EquipmentVo) throws Exception{
		 
		Map<String, Object> paramMap = EquipmentVo.toMap();
		List<EquipmentVo> out = selectList("equipmentLentalMapper.selectPsblEquipmentList",paramMap);
		return  out;
	}
    
    @SuppressWarnings(value = "unchecked")
	public List<MemberVo> selectMemberList(MemberVo MemberVo) throws Exception{
		 
		Map<String, Object> paramMap = MemberVo.toMap();
		List<MemberVo> out = selectList("equipmentLentalMapper.selectMemberList",paramMap);
		return  out;
	}
   
		
		
}
