package com.koreait.app.boards;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.koreait.app.boards.vo.KnowhowVO;

public class KnowhowListOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		BoardsDAO dao = new BoardsDAO();
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession();
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		int pageSize = 10;

		//게시글 끝 번호
		int endRow = page * pageSize;
		//게시글 시작 번호
		int startRow = endRow - (pageSize - 1);
		
		//게시글 전체 개수
		int totalCnt = dao.getKnowhowTotal();

		//페이징 처리		
		int realEndPage = (totalCnt - 1) / pageSize + 1;		 
		int startPage = ((page - 1) / pageSize) * pageSize + 1;  
		int endPage = startPage + 9;								
		
		List<KnowhowVO> list = dao.getKnowhowList(startRow, endRow);
		for (KnowhowVO vo : list) {
			vo.setBoard_date(vo.getBoard_date().split(" ")[0]);
		}
		//게시물 타입
		int type = 1;
		String category = "육아 노하우";
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("nowPage", page);
		req.setAttribute("boardList", list);
		req.setAttribute("category", category);
		
		req.setAttribute("type", type);
		session.setAttribute("type", type);
		
		forward.setRedirect(false);
		forward.setPath("/app/boards/boardsList.jsp");
		
		return forward;
	}
}