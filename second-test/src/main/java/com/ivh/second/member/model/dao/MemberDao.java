package com.ivh.second.member.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.ivh.second.member.model.vo.Member;

@Repository
public class MemberDao {

	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember", m);
	}

	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public int updateMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}
	
	public int pwdConfirm(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.pwdConfirm", m);
	}

	public int updatePwd(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.update("memberMapper.updatePwd", m);
	}

	public boolean checkPwd(SqlSessionTemplate sqlSession, String memberId, String memberPwd) {
		boolean result = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("memberId", memberId);
		map.put("memberPwd", memberPwd);
		
		return sqlSession.selectOne("memberMapper.checkPwd", map);
	}

	public Member deleteModal(SqlSessionTemplate sqlSession, int memberId) {
		return sqlSession.selectOne("memberMapper.deleteModal", memberId);
	}
	
	public int deleteMember(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.update("memberMapper.deleteMember", map);
	}

	public int idCheck(SqlSessionTemplate sqlSession, String memberId) {
		return sqlSession.selectOne("memberMapper.idCheck", memberId);
	}
	

}
