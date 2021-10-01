package com.ivh.second.member.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.ivh.second.member.model.service.MemberService;
import com.ivh.second.member.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	/* 비밀번호 암호화 작업
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	*/
	
	@RequestMapping("login.me")
	public ModelAndView loginMember(Member m, HttpSession session, ModelAndView mv) {
		
		Member loginUser = mService.loginMember(m);
//		System.out.println(m);
		
		if(loginUser == null) { // 로그인 실패
			mv.addObject("errorMsg", "로그인 실패");
			mv.setViewName("common/errorPage");
		} else { // 로그인 성공 ==> 메인jsp로 경로 바꿔줘야함 ==> 9/29 로그인시에만 볼 수 있게 해야함
			session.setAttribute("loginUser", loginUser);
			mv.setViewName("main");
		}
		
		return mv;
	}
	
	
	@RequestMapping("main.in")
	public String main() {
		return "main";
	}
	
	
	@RequestMapping("logout.me")
	public String logoutMember(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("enrollForm.me")
	public String enrollForm() {
		return "member/enrollForm";
	}
	
	@RequestMapping("insert.me")
	public String insertMember(Member m, HttpSession session, Model model) {
		
		// 회원가입용 서비스 호출
		int result = mService.insertMember(m);
		
		if(result > 0) { // 회원가입 성공
			session.setAttribute("alertMsg", "회원가입 성공");
			return "redirect:/";
		} else { // 회원가입 실패
			model.addAttribute("errorMsg", "회원가입 실패");
			return "common/errorPage";
		}
	}
	
	@RequestMapping("myPage.me")
	public String myPage() {
		return "member/myPage";
	}
	
	/*
	@RequestMapping("update.me")
	public String updateMember(Member m, MultipartFile file, HttpSession session, Model model, String deleteProfile) {
		
		// 기본이미지 경로일 경우 파일 삭제x
		if(!file.getOriginalFilename().equals("")) { // 넘어오는 값이 있을 경우
			if(!m.getMemberProfile().contentEquals("resources/uploadFiles/memberProfile/profile_basic.jsp")) { // 기본파일 경로명이 아닐 땐 파일 삭제
				new File(session.getServletContext().getRealPath(m.getMemberProfile())).delete();
			}
			
			// 새로운 파일 업로드
			String changeName = saveFile(session, file);
			m.setMemberProfile("resources/uploadFiles/memberProfile/" + changeName);
		}
		
		// 기존파일을 삭제하고 기본이미지로 변경
		if(deleteProfile.equals("delete")) { 
			
			if(!m.getMemberProfile().equals("resources/uploadFiles/memberProfile/profile_basic.jpg"))   { // 기본파일경로명이 아닐때는 그 파일 삭제
				
				new File(session.getServletContext().getRealPath(m.getMemberProfile())).delete();
			} 
			
			m.setMemberProfile("resources/uploadFiles/memberProfile/profile_basic.jpg");
		
		}
		
	}
	
	// 첨부파일 
		private String saveFile(HttpSession session, MultipartFile file) {
			String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
			String originName = file.getOriginalFilename();
			String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
			int ranNum = (int)(Math.random() * 9000000 + 10000);
			String ext = originName.substring(originName.lastIndexOf("."));
			
			String changeName = currentTime + ranNum + ext;
			
			try {
				file.transferTo(new File(savePath + changeName));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			return changeName;
		}
		*/
	
	/*
	// 비밀번호 변경
	@RequestMapping("updatePwd")
	public String updatePwd(String newPwd, Member m, HttpSession session, Model model) {
		
		// 비밀번호 변경용 서비스 호출
		int result = mService.updatePwd(m);
		m.setMemberPwd(newPwd);
		
		System.out.println(newPwd);
	
		if(result > 0) { // 정보 수정 성공
			session.setAttribute("loginUser", mService.loginMember(m));
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			return "member/myPage";
		} else { // 정보 수정 실패
			model.addAttribute("errorMsg", "정보 수정 실패");
			return "common/errorPage";
		}
	}
	
	// 기존 비밀번호 확인 --> 9/30 ajax로 바꿔야됨
	@RequestMapping("pwdConfirm.me")
	public String pwdConfirm(String memberPwd, Member m, HttpServletRequest request, HttpSession session, Model model) {
		
//		String memberPwd = request.getParameter("memberPwd");
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(m.getMemberPwd().equals(loginUser.getMemberPwd())) {
			session.setAttribute("alertMsg", "비밀번호 확인 성공");
			return "redirect:/";
		} else {
			model.addAttribute("errorMsg", "비밀번호 확인 실패");
			return "common/errorPage";
		}
		
	}
	
	// 비밀번호 변경 시 기존비밀번호 확인
	@ResponseBody
	@RequestMapping("pwd.me")
	public String pwd(String checkPwd, HttpSession session) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(checkPwd.equals(loginUser.getMemberPwd())) {
			return "Y";
		} else {
			return "N";
		}
		
	}
	*/
	

	@ResponseBody
	@RequestMapping(value="delete.mo", produces="pllication/json; charset=utf-8")
	public String ajaxDelete(int mId) {
		
		System.out.println(mId);
	
		Member m = mService.deleteModal(mId);
		
		return new Gson().toJson(m);
	}

	@RequestMapping("delete.me")
	public String deleteMember(@RequestParam(defaultValue="") String mStatus,
			                   @RequestParam(defaultValue="") String mName,
			                   HttpSession session, HttpServletRequest request) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mStatus", mStatus);
		map.put("mName", mName);
		
		// 이전 url 가져오기
		String referer = (String)request.getHeader("REFERER");
		
		int deleteMem = mService.deleteMember(map);
		
		if(deleteMem > 0) {
			session.setAttribute("alertMsg", "탈퇴되었습니다. 이용해주셔서 감사합니다.");
			return "redirect:" + referer;
		} else {
			session.setAttribute("alertMsg", "탈퇴 실패. 다시 시도해주세요.");
			return "common/errorPage";
		}
		
		
//		if(checkPwd) { // 비밀번호 일치 => 본인 확인 완료
//			int result = mService.deleteMember(loginUser.getMemberId());
//			
//			if(result > 0) {
//				session.removeAttribute("loginUser");
//				session.setAttribute("alertMsg", "회원 탈퇴 성공");
//				return "member/loginForm";
//			} else { // 에러페이지
//				model.addAttribute("errorMsg", "회원 탈퇴 실패");
//				return "common/errorPage";
//			}
//			
//		} else {
//			// 비밀번호 불일치 => 본인 확인 미완료
//			session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다.");
//			return "redirect:myPage.me";
//		}
		
	}
	
	
	@ResponseBody
	@RequestMapping("idCheck.me")
	public String idCheck(String checkId) {
		
		int count = mService.idCheck(checkId);
		
		if(count > 0) { // 사용불가
			return "N";
		} else { // 사용가능
			return "Y";
		}
	}
	
	
	@RequestMapping("updatePwd.me")
	public String changePwd(String newPwd, Member m, HttpSession session, Model model) {
		
		// Member loginUser = (Member)session.getAttribute("loginUser");
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		m.setMemberPwd(newPwd);
		
//		System.out.println(newPwd);
		
		
		int result = mService.updatePwd(m);
		
//		System.out.println(m);
//		Member [memberNo=0, memberName=null, memberId=, memberPwd=pass10, memberPhone=null, memberProfile=null, enrollDate=null, modifyDate=null, memberStatus=null]
		
		System.out.println(result);
		
		if(result > 0) { // 정보 수정 성공
			session.setAttribute("loginUser", mService.updatePwd(m));
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			return "member/myPage";
		} else { // 정보 수정 실패
			model.addAttribute("errorMsg", "정보 수정 실패");
			return "common/errorPage";
		}
		
	}
	

}
