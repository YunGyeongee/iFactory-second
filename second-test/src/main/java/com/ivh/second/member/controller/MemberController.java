package com.ivh.second.member.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.ivh.second.member.model.service.MemberService;
import com.ivh.second.member.model.vo.Member;
import com.ivh.second.sensor.model.service.SensorService;
import com.ivh.second.sensor.model.vo.Sensor;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	@Autowired
	private SensorService sService;
	
	@RequestMapping("login.me")
	public ModelAndView loginMember(Member m, Sensor s, HttpSession session, ModelAndView mv) {
		
		Member loginUser = mService.loginMember(m);
//		System.out.println(m);
		Sensor UsedSensor = sService.selectSensor1(s);
//		System.out.println(UsedSensor);
		
		if(loginUser == null) { // 로그인 실패
			mv.addObject("errorMsg", "로그인 실패");
			mv.setViewName("common/errorPage");
		} else if(UsedSensor == null){ // 로그인 성공 ==> 센서값 띄우기 
			mv.addObject("errorMsg", "조회 실패");
			mv.setViewName("common/errorPage");
		} else {	
			session.setAttribute("loginUser", loginUser);
			session.setAttribute("UsedSensor", UsedSensor);
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
	public String myPage(Model model, HttpSession session) {
		
//		Member loginUser = (Member)session.getAttribute("loginUser");
//		model.addAttribute("loginUser", loginUser);		
		return "member/myPage";
	}
	
	
	@RequestMapping("updateProfile.me")
	public String updateProfile(Member m, MultipartFile upfile, HttpSession session, Model model, String deleteProfile) {
//		System.out.println(m);
//		System.out.println(upfile.getOriginalFilename());
		
		// 전달된 파일이 있을 경우 => 파일명 수정 후 업로드 => 원본명, 서버에 업로드 된 경로를 m에 담을 것
		if(!upfile.getOriginalFilename().equals("")) {
			if(!m.getMemberProfile().equals("https://i.imgur.com/pO4OGIl.jpg")) { // 기본 파일 경로명이 아닐 때 그 파일 삭제
				new File(session.getServletContext().getRealPath(m.getMemberProfile())).delete();
			}
			String changeName = saveFile(session, upfile);
			m.setMemberProfile("resources/uploadFiles/memberProfile/" + changeName);
			
		}
		
		if(deleteProfile.equals("delete")) { // 기존파일을 삭제하고 기본이미지로 변경
			if(!m.getMemberProfile().equals("https://i.imgur.com/pO4OGIl.jpg"))   { // 기본 파일 경로명이 아닐 때 그 파일 삭제
				new File(session.getServletContext().getRealPath(m.getMemberProfile())).delete();
			} 
			m.setMemberProfile("https://i.imgur.com/pO4OGIl.jpg");
		
		}
		
		String changeName = saveFile(session, upfile);
		m.setMemberProfile("resources/uploadFiles/memberProfile/" + changeName);
		int result = mService.updateProfile(m);
		
		if(result > 0) { // 수정 성공
			session.setAttribute("alertMsg", "성공적으로 수정 되었습니다.");
			return "redirect:myPage.me";
		} else { // 수정 실패
			model.addAttribute("errorMsg", "정보 수정 실패");
			return "common/errorPage";
		}
		
	}
	
	// 첨부파일 
	private String saveFile(HttpSession session, MultipartFile upfile) {
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/memberProfile/");
		String originName = upfile.getOriginalFilename();
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		int ranNum = (int)(Math.random() * 9000000 + 10000);
		String ext = originName.substring(originName.lastIndexOf("."));
		
		String changeName = currentTime + ranNum + ext;
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return changeName;
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
	public String updatePwd(String newPwd, Member m, HttpSession session, Model model) {
		
//		Member loginUser = (Member)session.getAttribute("loginUser");
		m.setMemberPwd(newPwd);
		
		int result = mService.updatePwd(m);
		
		System.out.println(result);
		
		if(result > 0) { // 정보 수정 성공
			session.setAttribute("m", mService.updatePwd(m));
			session.setAttribute("alertMsg", "성공적으로 수정되었습니다.");
			return "redirect:myPage.me";
		} else { // 정보 수정 실패
			model.addAttribute("errorMsg", "정보 수정 실패");
			return "common/errorPage";
		}
		
	}
	
	@RequestMapping("delete.me")
	public String deleteMember(String memberPwd, HttpSession session, Model model) {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		if(memberPwd.matches(loginUser.getMemberPwd())) { // 비밀번호 일치
			int result = mService.deleteMember(loginUser.getMemberId());
			
			if(result > 0) {
				session.removeAttribute("loginUser");
				session.setAttribute("alertMsg", "회원 탈퇴 성공. 그동안 이용해주셔서 감사합니다.");
				return "redirect:/";
			} else {
				model.addAttribute("errorMsg", "회원 탈퇴 실패");
				return "common/errorPage";
			}
			
		} else { // 비밀번호 불일치
			session.setAttribute("alertMsg", "비밀번호가 일치하지 않습니다.");
			return "redirect:myPage.me";
		}
	}
	

}
