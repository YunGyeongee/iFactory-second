package com.ivh.second.member.model.service;

import java.util.HashMap;

import com.ivh.second.member.model.vo.Member;

public interface MemberService {
	
	// 1. 회원 로그인용 서비스
	Member loginMember(Member m);
	
	// 2. 회원가입용 서비스
	int insertMember(Member m);
	
	// 3. 프로필사진 변경 서비스
	int updateProfile(Member m); 
	
	// 4. 회원 탈퇴용 서비스
//	Member deleteModal(int memberId);
//	int deleteMember(HashMap<String, Object> map);
	int deleteMember(String memberId);
	
	// 5. 아이디 중복체크용 서비스
	int idCheck(String memberId);
	
	// 6. 비밀번호 변경 서비스
	int updatePwd(Member m);
	
	
}
