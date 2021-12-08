package com.koreait.app.boards;

import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.PageContext;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionForward;
import com.koreait.app.boards.dao.BoardsDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Upload implements Action  {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
			resp.setCharacterEncoding("utf-8");
			//리눅스 서버에 프로젝트 업로드 시 아래의 경로를 사용해준다.
			/*req.getServletContext().getRealPath("/") + "\\upload"*/
			String saveFolder = req.getServletContext().getRealPath("/") + "\\upload";
			int fileSize = 5 * 1024 * 1024;	//5M
			
			ActionForward forward = new ActionForward();
			BoardsDAO b_dao = new BoardsDAO();
			MultipartRequest multi = null;
			multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
			
			Enumeration<String> files = multi.getFileNames();
			JSONObject json = new JSONObject();
			PrintWriter out = resp.getWriter();
			String name = null;
			String name2 = null;
			while(files.hasMoreElements()) {
				name = files.nextElement();
				name2 = multi.getFilesystemName(name);
			}
			String url = req.getContextPath()+ "/upload/"+ name2;
			json.put("url", url);
			out.print(json.toJSONString());
			out.close();
			
			return null;
		}
	}
	

