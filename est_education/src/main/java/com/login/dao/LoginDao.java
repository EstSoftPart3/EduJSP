package com.login.dao;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;

import com.login.vo.LoginVo;
import common.dao.AbstractDAO;


@Repository("loginDao") //최초 필수
public class LoginDao extends AbstractDAO {
	
	@SuppressWarnings("unchecked")
	//이클립스 컴파일러가 알려주는 노란색 경고표시를 없애주는 역할.
	public List<LoginVo> loginMemberInfo(LoginVo reqVo) throws Exception {
		
		Map<String, Object> paramMap = reqVo.toMap();
		
		List<LoginVo> out = (List<LoginVo>) selectList("login.loginMember", paramMap);

		return out;
	}

}
