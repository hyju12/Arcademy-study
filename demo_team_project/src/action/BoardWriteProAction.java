package action;

import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.BoardWriteProService;
import vo.ActionForward;
import vo.ClassBoardBean;

import com.mysql.cj.Session;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardWriteProAction implements Action {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		ClassBoardBean boardBean = null;
		String realFolder="";
		String saveFolder="/boardUpload";
		int fileSize=5*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder=context.getRealPath(saveFolder);
		
		HttpSession nicksession = request.getSession(false);
		String nick = (String) nicksession.getAttribute("nick");
		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		boardBean = new ClassBoardBean();
		boardBean.setClass_address(multi.getParameter("class_address"));
		boardBean.setClass_area(multi.getParameter("class_area"));
		boardBean.setClass_content(multi.getParameter("class_content"));
		boardBean.setClass_time(multi.getParameter("class_time"));
		boardBean.setClass_file(multi.getParameter("class_file"));
		boardBean.setClass_infor(multi.getParameter("class_infor"));
		boardBean.setClass_name(multi.getParameter("class_name"));
		boardBean.setClass_nick(nick);
		boardBean.setClass_salary(multi.getParameter("class_salary"));
		boardBean.setClass_subject(multi.getParameter("class_subject"));
		boardBean.setClass_title(multi.getParameter("class_title"));
		boardBean.setClass_file(
		multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
		BoardWriteProService boardWriteProService = new BoardWriteProService();
		boolean isWriteSuccess = boardWriteProService.registArticle(boardBean);
		System.out.println(isWriteSuccess);
		if(!isWriteSuccess){
			System.out.println("S");
			
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('fail')");
			out.println("history.back();");
			out.println("</script>");
		}
		else{
			System.out.println("N");
			
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('클래스 작성이 저장되었습니다. 내 클래스 현황은 마이페이지에서 확인 가능합니다')");
			out.println("</script>");
		
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("ClassViewListboardList.bo");
		}

		return forward;
		
	}  	
	
}