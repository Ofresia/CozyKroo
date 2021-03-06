package com.koreait.app.members;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;
import com.koreait.app.members.vo.MembersVO;

public class MemberGetInfoAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        resp.setCharacterEncoding("utf-8");
        MembersDAO dao = new MembersDAO();
        JSONObject obj = new JSONObject();
        PrintWriter out = resp.getWriter();
        MembersVO vo = dao.getInfo(req.getParameter("member_id"));
        String date = vo.getMember_babyDate() == null? "": vo.getMember_babyDate().split(" ")[0];
        System.out.println(date);

        obj.put("member_id", vo.getMember_id());
        obj.put("member_name", vo.getMember_name());
        obj.put("member_phoneNum", vo.getMember_phoneNum());
        obj.put("member_email", vo.getMember_email());
        obj.put("member_babyName", vo.getMember_babyName());
        obj.put("member_babyDate", date);
        obj.put("member_childNum", vo.getMember_childNum());
        obj.put("member_status", vo.getMember_status());

        out.print(obj.toJSONString());
        out.close();

        return null;
    }

}