package com.koreait.app.members;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.members.dao.MembersDAO;

public class MemberFindIdOkAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
      String name = req.getParameter("name");
      String phoneNum = req.getParameter("phoneNum");
      MembersDAO dao = new MembersDAO();
      ActionForward forward = new ActionForward();
      List<String> findIds = dao.findMId(name, phoneNum);
      
      
//      obj.put("findIds", findIds);
//      out.println(obj.toJSONString());
      
      
//      System.out.println(findIds);
      req.setAttribute("findIds", findIds);
      
      forward.setRedirect(false);
      forward.setPath("/app/members/resultId.jsp");
      
      return forward;
   }

}