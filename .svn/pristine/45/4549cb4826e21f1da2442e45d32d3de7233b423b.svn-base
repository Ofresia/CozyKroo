package com.koreait.app.boards;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.HusbandVO;

public class HusRetrunListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("utf-8");
		PrintWriter out = resp.getWriter();
		JSONArray jsonArr = new JSONArray();
		BoardsDAO dao = new BoardsDAO();
		
		List<HusbandVO> list = dao.getHusMainList();
		
		for (HusbandVO title : list) {
			JSONObject json = new JSONObject();
			json.put("title", title.getBoard_title());
			json.put("board_num", title.getBoard_num());
			jsonArr.add(json);
		}
		
		out.print(jsonArr.toJSONString());
		out.close();
		
		return null;
	}

}
