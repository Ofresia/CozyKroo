package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.KnowhowVO;

public class KnoModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		BoardsDAO dao = new BoardsDAO();
		KnowhowVO vo = dao.getKnowhowDetail(board_num);
		System.out.println(vo.getBoard_content());
		
		req.setAttribute("board", vo);
		session.setAttribute("type", 1);
		req.setAttribute("type", 1);
		forward.setRedirect(false);
		forward.setPath("/app/boards/boardsModify.jsp");
		
		return forward;
	}

}
