package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.KnowhowVO;
import com.koreait.app.boards.vo.SecondhandVO;

public class SecondhandWriteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		BoardsDAO dao = new BoardsDAO();
		SecondhandVO s_vo = new SecondhandVO();
		//files 아직 안 씀.
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		//작성한 내용 db에 넣기
		//프론트 컨트롤러로 보내기
		//제목, 작성자, 작성내용
		s_vo.setBoard_title(req.getParameter("title"));
		s_vo.setMember_id((String)session.getAttribute("sessionId"));
		s_vo.setBoard_content(req.getParameter("contents"));
		s_vo.setBoard_num(dao.getSecondhandSeq());
		
		dao.insertSecondhand(s_vo);
		//게시판 타입
		req.setAttribute("type", "3");
		//어떤 게시물인지?
		forward.setRedirect(false);
		forward.setPath("/boards/BoardsView.bo?type=3&board_num=" + s_vo.getBoard_num());
		
		return forward;
	
	}

}
