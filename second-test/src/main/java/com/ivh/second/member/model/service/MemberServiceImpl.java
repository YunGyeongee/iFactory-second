package com.ivh.second.member.model.service;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ivh.second.member.model.dao.MemberDao;
import com.ivh.second.member.model.vo.Member;

@Service
@Transactional
public class MemberServiceImpl implements MemberService {

	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private MemberDao mDao;
	
	
	@Override
	public Member loginMember(Member m) {
		return mDao.loginMember(sqlSession, m);
	}

	@Override
	public int insertMember(Member m) {
		return mDao.insertMember(sqlSession, m);
	}

	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(sqlSession, m);
	}

	@Override
	public Member deleteModal(int memberId) {
		return mDao.deleteModal(sqlSession, memberId);
	}
	
	@Override
	public int deleteMember(HashMap<String, Object> map) {
		return mDao.deleteMember(sqlSession, map);
	}

	@Override
	public int idCheck(String memberId) {
		return mDao.idCheck(sqlSession, memberId);
	}

	@Override
	public int updatePwd(Member m) {
		return mDao.updatePwd(sqlSession, m);
	}
	
	
	
	
}
