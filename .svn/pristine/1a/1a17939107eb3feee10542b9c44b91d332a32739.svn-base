package com.koreait.app.boards;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.KnowhowVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class KnowhowWriteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("utf-8");
		BoardsDAO dao = new BoardsDAO();
		KnowhowVO k_vo = new KnowhowVO();
		//files 아직 안 씀.
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		//작성한 내용 db에 넣기
		//프론트 컨트롤러로 보내기
		//제목, 작성자, 작성내용
		k_vo.setBoard_title(req.getParameter("title"));
		k_vo.setMember_id((String)session.getAttribute("sessionId"));
		k_vo.setBoard_content(req.getParameter("contents"));
		k_vo.setBoard_num(dao.getKnowhowSeq());
		
		dao.insertKnowhow(k_vo);
		//게시판 타입
		req.setAttribute("type", "1");
		//어떤 게시물인지?
		forward.setRedirect(false);
		forward.setPath("/boards/BoardsView.bo?type=1&board_num=" + k_vo.getBoard_num());
		
		return forward;
	
	}

}
