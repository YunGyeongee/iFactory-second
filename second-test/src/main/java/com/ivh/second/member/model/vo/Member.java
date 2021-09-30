package com.ivh.second.member.model.vo;

public class Member {
	
	private int memberNo;
	private String memberName;
	private String memberId;
	private String memberPwd;
	private String memberPhone;
	private String memberProfile;
	private String enrollDate;
	private String modifyDate;
	private String memberStatus;

	
	public Member() {}


	public Member(int memberNo, String memberName, String memberId, String memberPwd, String memberPhone,
			String memberProfile, String enrollDate, String modifyDate, String memberStatus) {
		super();
		this.memberNo = memberNo;
		this.memberName = memberName;
		this.memberId = memberId;
		this.memberPwd = memberPwd;
		this.memberPhone = memberPhone;
		this.memberProfile = memberProfile;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.memberStatus = memberStatus;
	}


	public int getMemberNo() {
		return memberNo;
	}


	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}


	public String getMemberName() {
		return memberName;
	}


	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getMemberPwd() {
		return memberPwd;
	}


	public void setMemberPwd(String memberPwd) {
		this.memberPwd = memberPwd;
	}


	public String getMemberPhone() {
		return memberPhone;
	}


	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}


	public String getMemberProfile() {
		return memberProfile;
	}


	public void setMemberProfile(String memberProfile) {
		this.memberProfile = memberProfile;
	}


	public String getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}


	public String getModifyDate() {
		return modifyDate;
	}


	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}


	public String getMemberStatus() {
		return memberStatus;
	}


	public void setMemberStatus(String memberStatus) {
		this.memberStatus = memberStatus;
	}


	@Override
	public String toString() {
		return "Member [memberNo=" + memberNo + ", memberName=" + memberName + ", memberId=" + memberId + ", memberPwd="
				+ memberPwd + ", memberPhone=" + memberPhone + ", memberProfile=" + memberProfile + ", enrollDate="
				+ enrollDate + ", modifyDate=" + modifyDate + ", memberStatus=" + memberStatus + "]";
	}

}
