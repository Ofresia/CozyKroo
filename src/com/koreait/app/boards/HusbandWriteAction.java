package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.HusbandVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class HusbandWriteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		BoardsDAO dao = new BoardsDAO();
		HusbandVO h_vo = new HusbandVO();
		//files 아직 안 씀.
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		//작성한 내용 db에 넣기
		//프론트 컨트롤러로 보내기
		//제목, 작성자, 작성내용
		h_vo.setBoard_title(req.getParameter("title"));
		h_vo.setMember_id((String)session.getAttribute("sessionId"));
		h_vo.setBoard_content(req.getParameter("contents"));
		h_vo.setBoard_num(dao.getHusbandSeq());
		
		dao.insertHusband(h_vo);
		//게시판 타입
		req.setAttribute("type", "2");
		//어떤 게시물인지?
		forward.setRedirect(false);
		forward.setPath("/boards/BoardsView.bo?type=2&board_num=" + h_vo.getBoard_num());
		
		return forward;
	
	}

}
