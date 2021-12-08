package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.KnoreplyVO;

public class knoreplyWriteOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		
		KnoreplyVO reply = new KnoreplyVO();
		BoardsDAO dao = new BoardsDAO();
		
		int board_num = Integer.parseInt(req.getParameter("board_num"));
		String member_id = (String)session.getAttribute("sessionId");
		String reply_content = req.getParameter("content");
		
		reply.setMember_id(member_id);
		reply.setReply_content(reply_content);
		reply.setBoard_num(board_num);
		
		dao.insertKnoreply(reply);
		
		req.setAttribute("type", "1");
		
		return null;
	}

}
