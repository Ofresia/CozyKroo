package com.koreait.app.members;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MemberModifyOkAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        req.setCharacterEncoding("utf-8");
        ActionForward forward = new ActionForward();
        MembersDAO dao = new MembersDAO();
        System.out.println(req.getParameter("member_id")+11);
        MembersVO vo = dao.getInfo(req.getParameter("member_id"));

        String name = req.getParameter("member_name") == null? "" : req.getParameter("member_name");
        String phoneNum = req.getParameter("member_phoneNum") == null ? "" : req.getParameter("member_phoneNum");
        String email = req.getParameter("member_email") == null ? "" : req.getParameter("member_email");
        String babyName = req.getParameter("member_babyName") == null? "" : req.getParameter("member_babyName");
        String babyDate = req.getParameter("member_babyDate") == null? "":req.getParameter("member_babyDate");
        String childNum = req.getParameter("member_childNum") == null? "0":req.getParameter("member_childNum");

        vo.setMember_name(name);
        vo.setMember_phoneNum(phoneNum);
        vo.setMember_email(email);
        vo.setMember_babyName(babyName);
        vo.setMember_babyDate(babyDate);
        vo.setMember_childNum(Integer.parseInt(childNum));

        dao.update(vo);

        forward.setRedirect(false);//어떻게
        forward.setPath("/app/members/selfInfo.jsp");//어디로
        return forward;
    }

}