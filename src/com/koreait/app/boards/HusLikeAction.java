package com.koreait.app.boards;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;

public class HusLikeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		BoardsDAO dao = new BoardsDAO();
		JSONObject json = new JSONObject();
		System.out.println(1);
		int board_num = Integer.parseInt(req.getParameter("no"));
		
		int likecnt = dao.huslikeCount(board_num);
		json.put("cnt", likecnt);
		out.print(json.toJSONString());
		System.out.println(likecnt);
		System.out.println(2);
		out.close();
		
		return null;
	}
}
