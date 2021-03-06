package com.koreait.app.boards;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionForward;

public class BoardsFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward forward = null;
		
		System.out.println("check");
		switch(command) {
		//BoardList 분기처리
		case "/boards/BoardsList.bo":
			switch (req.getParameter("type")) {
			//노하우 게시판
			case "1":
				//execute : db를 갔다오거나, 연산이 필요한 경우 사용, 페이지 이동
				try {forward = new KnowhowListOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			//남편 게시판
			case "2":
				try {forward = new HusbandListOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			//중고 게시판
			case "3":
				try {forward = new SecondhandListOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			}
			break;
		case "/boards/BoardsWrite.bo"://글쓰기 게시판으로 이동
			switch (req.getParameter("type")) {
			//노하우 게시판
			case "1":
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/app/boards/boardsWrite.jsp?type=1");
				break;
				//남편 게시판
			case "2":
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/app/boards/boardsWrite.jsp?type=2");
				break;
				//중고 게시판
			case "3":
				forward = new ActionForward();
				forward.setRedirect(false);
				forward.setPath("/app/boards/boardsWrite.jsp?type=3");
				break;		
			}
			break;
		case "/boards/BoardsWriteOk.bo"://글 작성 완료버튼
			switch ((Integer)req.getSession().getAttribute("type")) {
			//노하우 게시판
			case 1:
				try {forward = new KnowhowWriteAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			//남편 게시판
			case 2:
				try {forward = new HusbandWriteAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			//중고 게시판
			case 3:
				try {forward = new SecondhandWriteAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;		
			}
			break;
		case "/boards/BoardsView.bo"://게시글 보기
			switch (req.getParameter("type")) {
			case "1"://노하우 게시판
				try {forward = new KnowhowViewAction().execute(req, resp);} catch (Exception e1) {System.out.println(e1);}
				break;
			case "2"://남편 게시판
				try {forward = new HusbandViewAction().execute(req, resp);} catch (Exception e1) {System.out.println(e1);}
				break;
			case "3"://중고 게시판
				try {forward = new SecondhandViewAction().execute(req, resp);} catch (Exception e1) {System.out.println(e1);}
				break;		
			}
			break;
		case "/boards/Fileupload.bo":
			try {forward = new Upload().execute(req, resp);} catch (Exception e) {System.out.println(e);}
			
			break;
		case "/boards/BoardsReplyWrite.bo"://댓글 작성
			switch (req.getParameter("type")) {
			case "1":
				try {forward = new knoreplyWriteOkAction().execute(req, resp);} catch (Exception e1) {System.out.println(e1);}
				break;
			case "2":
				try {forward = new HusreplyWriteOkAction().execute(req, resp);} catch (Exception e1) {System.out.println(e1);}
				break;
			case "3":
				try {forward = new SecreplyWriteOkAction().execute(req, resp);} catch (Exception e1) {System.out.println(e1);}
				break;
			}
			break;
		case "/boards/BoradsReplyDeleteOk.bo"://댓글 삭제
			switch (req.getParameter("type")) {
			case "1":
				try {forward = new knoreplyDeleteOkAction().execute(req, resp);} catch (Exception e1) {System.out.println(e1);}
				break;
			case "2":
				try {forward = new HusreplyDeleteOkAction().execute(req, resp);} catch (Exception e1) {System.out.println(e1);}
				break;
			case "3":
				try {forward = new SecreplyDeleteOkAction().execute(req, resp);} catch (Exception e1) {System.out.println(e1);}
				break;
			}
			break;
		case "/boards/BoardsReplyList.bo"://댓글 리스트 불러오기
			switch (req.getParameter("type")) {
			case "1"://노하우 게시판 댓글
				System.out.println(1);
				try {forward = new KnoreplyListAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "2"://남편자랑 게시판 댓글
				try {forward = new HusreplyListAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "3"://중고거래 게시판 댓글
				try {forward = new SecreplyListAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			}
			break;
		case "/board/BoardReplyModifyOk.bo":
			switch (req.getParameter("type")) {
			case "1":
				try {forward =  new KnoreplyModifyOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "2":
				try {forward =  new HusreplyModifyOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "3":
				try {forward =  new SecreplyModifyOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			}
			break;
		//게시물 삭제
		case "/boards/BoardsDeleteOk.bo":
			switch (req.getParameter("type")) {
			case "1":
				try {forward =  new KnoDeleteOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "2":
				try {forward =  new HusDeleteOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "3":
				try {forward =  new SecDeleteOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			}
			
			break;
		case "/boards/BoardsModify.bo":
			switch (req.getParameter("type")) {
			case "1"://노하우
				try {forward =  new KnoModifyAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "2"://남편
				try {forward =  new HusModifyAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "3"://중고거래
				try {forward =  new SecModifyAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			}
			break;
		case "/boards/BoardsModifyOk.bo":
			switch (req.getParameter("type")) {
			case "1"://노하우
				try {forward =  new KnoModifyOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "2"://남편
				try {forward =  new HusModifyOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "3"://중고거래
				try {forward =  new SecModifyOkAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			}
			break;
			
		case "/boards/knoRetrunList.bo":
			try {forward = new KnoRetrunListAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}		
			break;
		case "/boards/husRetrunList.bo":
			try {forward = new HusRetrunListAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}		
			break;
		case "/boards/secRetrunList.bo":
			try {forward = new SecRetrunListAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}		
			break;
			
		
		//좋아요
		case "/boards/knoLikeCheck.bo":
			System.out.println(0);
			switch (req.getParameter("type")) {
			case "1":
				try {forward =  new KnoLikeCheckAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "2":
				try {forward =  new HusLikeCheckAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			case "3":
				try {forward =  new SecLikeCheckAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
				break;
			}
			
			break;
			
			//좋아요
			case "/boards/knoLike.bo":
				System.out.println(0000);
				switch (req.getParameter("type")) {
				case "1":
					try {forward =  new KnoLikeAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
					break;
				case "2":
					try {forward =  new HusLikeAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
					break;
				case "3":
					try {forward =  new SecLikeAction().execute(req, resp);} catch (Exception e) {System.out.println(e);}
					break;
				}
				
				break;


		}
		
			if(forward != null) {
				if(forward.isRedirect()) {
					resp.sendRedirect(forward.getPath());
				}else{
					RequestDispatcher dispatcher = req.getRequestDispatcher(forward.getPath());
					dispatcher.forward(req, resp);
				}
			}
		}
	}

