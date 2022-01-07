package com.member.service;

import java.util.List;

import com.equipmentLental.vo.EquipmentLentalVo;
import com.member.vo.MemberCheckedVo;
import com.member.vo.MemberVo;
import com.project.vo.ProjectVo;

public interface MemberService {
	
	/**
	 * 회원-목록 조회
	 * 
	 * @return List<MemberVo>
	 * @throws Exception
	 */
	public List<MemberVo> selectMemberList(MemberCheckedVo mbrVo) throws Exception;
	
	/**
	 * 회원-목록 조회(sq)
	 * 
	 * @return List<MemberVo>
	 * @throws Exception
	 */
	public List<MemberVo> selectMemberList(List<Long> mbrSqArr) throws Exception;

	/**
	 * 회원-추가
	 * 
	 * @param mbrVo
	 * @return result
	 * @throws Exception
	 */
	public int insertMember(MemberVo mbrVo) throws Exception;

	/**
	 * 회원-단일 조회
	 * 
	 * @param sq
	 * @return MemberVo
	 */
	public MemberVo selectMemberOne(long sq) throws Exception;

	/**
	 * 회원-수정
	 * 
	 * @param mbrVo
	 * @return result
	 * @throws Exception
	 */
	public int updateMember(MemberVo mbrVo) throws Exception;
	
	/**
	 * 
	 * @param sq
	 * @return result
	 * @throws Exception
	 */
	public int updateLeaveDt(List<MemberVo> mbrVoList) throws Exception;

	/**
	 * 회원-삭제
	 * 
	 * @param sq
	 * @return result
	 * @throws Exception
	 */
	public int deleteMember(long sq) throws Exception;
	

	/*public List<CodeVo> selectcomCodeList(Map<String, String> codeData) throws Exception;*/
	
	public List<ProjectVo> selectProjectList(ProjectVo prjVo) throws Exception;
	
	public List<EquipmentLentalVo> selectEquipmentLentalList(EquipmentLentalVo EquipmentLentalVo) throws Exception;

}
