package com.erp.admin.system.authority.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.authority.vo.AuthorityVo;
import com.erp.admin.system.authority.vo.ErpAuthorityMemberVo;
import com.erp.admin.system.authority.vo.ErpAuthorityVo;

import common.dao.AbstractDAO;

@Repository("erpAuthorityDao")
public class ErpAuthorityDao extends AbstractDAO{

	@SuppressWarnings("unchecked")
	//전체 권한 조회
	public List<ErpAuthorityVo> selectAuthorityList(){
		List<ErpAuthorityVo> out = (List<ErpAuthorityVo>) selectList("erpAuthority.selectAuthorityList");

		return out;
	}
	//조건 권한 조회
	@SuppressWarnings("unchecked")
	public List<ErpAuthorityVo> selectAuthorityList(Map<String, String> searchData){
		List<ErpAuthorityVo> out = (List<ErpAuthorityVo>) selectList("erpAuthority.selectAuthorityList",searchData);

		return out;
	}
    //권한 추가(CUD)
	public int insertAuthorityOne(ErpAuthorityVo erpAuthorityVo) {
		int result;
		result=(int) insert("erpAuthority.insertAuthorityOne",erpAuthorityVo);
		return result;
		
		
	}	
	//권한 업데이트(CUD)
	public int updateAuthorityOne(ErpAuthorityVo erpAuthorityVo) {
		int result;
		result=(int) update("erpAuthority.updateAuthorityOne",erpAuthorityVo);
		return result;
		
		
	}	
	//권한 삭제(CUD)
	public int deleteAuthorityOne(ErpAuthorityVo erpAuthorityVo) {
		int result;
		result=(int) delete("erpAuthority.deleteAuthorityOne",erpAuthorityVo);
		return result;
		
		
	}
	@SuppressWarnings("unchecked")
	//권한별 멤버 전체조회
	public List<ErpAuthorityMemberVo> selectAuthAllEmply(Map<String, String> erpAuthorityMemberMap){
		List<ErpAuthorityMemberVo> out = selectList("erpAuthority.selectAuthAllEmply",erpAuthorityMemberMap);
		
		return out;
	}
	//권한별 멤버 조건 검색
	public List<ErpAuthorityMemberVo> selectAuthEmplySch(Map<String,String>searchData){
		List<ErpAuthorityMemberVo> out = selectList("erpAuthority.selectAuthEmplySch",searchData);
		return out;
	}
        //권한별 멤버 CUD 처리 - 모달창에서 권한별 직원추가를 이용한 insert시
	public int insertAuthorityMemberOne(ErpAuthorityMemberVo erpAuthorityMemberVo) {
		int result;

				//관계테이블에 데이터를 넣기위한 조회 진행 후 insert
		ErpAuthorityMemberVo usrIdVo=new ErpAuthorityMemberVo();
		ErpAuthorityMemberVo emplySq=new ErpAuthorityMemberVo();
		usrIdVo=(ErpAuthorityMemberVo) selectOne("erpAuthority.selectUsrId",erpAuthorityMemberVo);
		erpAuthorityMemberVo.setUsrSq(usrIdVo.getUsrSq());
		erpAuthorityMemberVo.setCmpnySq(usrIdVo.getCmpnySq());
		emplySq=(ErpAuthorityMemberVo) selectOne("erpAuthority.selectEmplySq",erpAuthorityMemberVo);
		erpAuthorityMemberVo.setEmplySq(emplySq.getEmplySq());
		result=(int) insert("erpAuthority.insertAuthorityMemberOne",erpAuthorityMemberVo);
		/*if(erpAuthorityMemberVo.getUsrId()=="") {
			return 0;
		}*/
		return result;
		
		
	};
	
	/* 권한별 멤버 CUD 처리
	 * usrNewId를 이용하여 새로 변경될 멤버의 정보를 받아와서 변경
	 *(SQL문은 update처리,넘어오는 update할 변수 증가시 sql문 변경하여 사용가능) */
	public int updateAuthorityMemberOne(ErpAuthorityMemberVo erpAuthorityMemberVo) {
		int result;
		ErpAuthorityMemberVo usrSqVo=new ErpAuthorityMemberVo();
		ErpAuthorityMemberVo emplySq=new ErpAuthorityMemberVo();
		usrSqVo=(ErpAuthorityMemberVo) selectOne("erpAuthority.selectNewUsrSq",erpAuthorityMemberVo);
		erpAuthorityMemberVo.setNewUsrSq(usrSqVo.getNewUsrSq());
		erpAuthorityMemberVo.setCmpnySq(usrSqVo.getCmpnySq());
		emplySq=(ErpAuthorityMemberVo) selectOne("erpAuthority.selectNewEmplySq",erpAuthorityMemberVo);
		erpAuthorityMemberVo.setEmplySq(emplySq.getEmplySq());
		result=(int) update("erpAuthority.updateAuthorityMemberOne",erpAuthorityMemberVo);
		return result;
		
		
	}
	/* 권한별 멤버 CUD 처리
	 * 권한-직원 관계 table 행을 usrId를 이용하여 삭제*/ 
	public int deleteAuthorityMemberOne(ErpAuthorityMemberVo erpAuthorityMemberVo) {
		int result;
		result=(int) delete("erpAuthority.deleteAuthorityMemberOne",erpAuthorityMemberVo);
		return result;
		
		
	}
}
