package com.ivh.second.member.model.service;

import java.util.HashMap;

import com.ivh.second.member.model.vo.Member;

public interface MemberService {
	
	// 1. 회원 로그인용 서비스
	Member loginMember(Member m);
	
	// 2. 회원가입용 서비스
	int insertMember(Member m);
	
	// 3. 회원 정보수정용 서비스
	int updateMember(Member m);
	int updatePwd(Member m);
	int pwdConfirm(Member m);
	boolean checkPwd(String memberId, String memberPwd);
	
	// 4. 회원 탈퇴용 서비스
	Member deleteModal(int memberId);
	int deleteMember(HashMap<String, Object> map);
	
	// 5. 아이디 중복체크용 서비스
	int idCheck(String memberId);
	
}
