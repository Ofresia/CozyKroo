package com.koreait.app.members;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MemberModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MembersVO member = new MembersVO();
		MembersDAO dao = new MembersDAO();
		
		member.setMember_id(req.getParameter("member_id"));
		member.setMember_pw(req.getParameter("member_pw"));
		member.setMember_phoneNum(req.getParameter("member_phoneNum"));
		member.setMember_email(req.getParameter("member_email"));
		member.setMember_babyName(req.getParameter("member_babyName"));
		member.setMember_babyDate(req.getParameter("member_babyDate"));
		member.setMember_childNum(Integer.parseInt(req.getParameter("member_childNum")));
		
		return null;
	}

}
