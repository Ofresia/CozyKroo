package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.HusbandVO;

public class HusModifyOkAction {
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		BoardsDAO dao = new BoardsDAO();
		HusbandVO vo = new HusbandVO();
		ActionForward forward = new ActionForward();

		int board_num = Integer.parseInt(req.getParameter("board_num"));

		vo.setBoard_num(board_num);
		vo.setBoard_title(req.getParameter("title"));
		vo.setBoard_content(req.getParameter("contents"));
		dao.updateHusband(vo);

		vo = dao.getHusbandDetail(board_num);
		req.setAttribute("type", 2);
		req.setAttribute("board", vo);
		forward.setRedirect(false);
		forward.setPath("/app/boards/boardView.jsp");

		return forward;
	}
}
