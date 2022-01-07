package com.equipmentLental.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.equipment.vo.EquipmentVo;
import com.equipmentLental.dao.EquipmentLentalDao;
import com.equipmentLental.vo.EquipmentLentalVo;
import com.member.vo.MemberVo;


@Service(value = "equipmentLentalService")
public class EquipmentLentalServiceImpl implements EquipmentLentalService {
    Logger log = Logger.getLogger(this.getClass());
    @Resource(name = "equipmentLentalDao")EquipmentLentalDao equipmentLentalDao;
    public List<EquipmentLentalVo> selectEquipmentLentalList(EquipmentLentalVo EquipmentLentalVo)throws Exception {
        List < EquipmentLentalVo > list = new ArrayList<EquipmentLentalVo>();
        try {
            list = equipmentLentalDao.selectEquipmentLentalList(EquipmentLentalVo);
        } catch (Exception e) {
            log.info("############## selectEquipmentList Failed!!! [" + e.getMessage() + "]");
        }
        return list;
    }
    public int insertEquipmentLental(EquipmentLentalVo EquipmentLentalVo)throws Exception {
        int result = 0;
        try {
            result = equipmentLentalDao.insertEquipmentLental(EquipmentLentalVo);
        } catch (Exception e) {
            log.info("############## insertEquipmentList Failed!!! [" + e.getMessage() + "]");
        }
        return result;
    }
    public int deleteEquipmentLental(String lntlSq)throws Exception {
        int result = 0;
        try {
            result = equipmentLentalDao.deleteEquipmentLental(lntlSq);
        } catch (Exception e) {
            log.info("############## deleteEquipmentList Failed!!! [" + e.getMessage() + "]");
        }
        return result;
    }
    public int updateEquipmentLental(EquipmentLentalVo EquipmentLentalVo)throws Exception {
        int result = 0;
        try {
            result = equipmentLentalDao.updateEquipmentLental(EquipmentLentalVo);
        } catch (Exception e) {
            log.info("############## updateEquipment Failed!!! [" + e.getMessage() + "]");
        }
        return result;
    }
    public EquipmentLentalVo selectEquipmentLentalOne(String lntlSq)throws Exception {
        EquipmentLentalVo only = equipmentLentalDao.selectEquipmentLentalOne(lntlSq);
        return only;
    }
    public List<EquipmentVo> selectPsblEquipmentList(EquipmentVo EquipmentVo)throws Exception {
        List < EquipmentVo > list = new ArrayList<EquipmentVo>();
        try {
            list = equipmentLentalDao.selectPsblEquipmentList(EquipmentVo);
        } catch (Exception e) {
            log.info("############## selectEquipmentList Failed!!! [" + e.getMessage() + "]");
        }
        return list;
    }
    public List<MemberVo> selectMemberList(MemberVo MemberVo)throws Exception {
        List < MemberVo > list = new ArrayList<MemberVo>();
        try {
            list = equipmentLentalDao.selectMemberList(MemberVo);
        } catch (Exception e) {
            log.info("############## selectEquipmentList Failed!!! [" + e.getMessage() + "]");
        }
        return list;
    }

}