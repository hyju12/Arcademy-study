package action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import svc.BoardApplyProService;
import vo.ActionForward;
import vo.ClassBoardBean;

import com.mysql.cj.Session;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardApplyProAction implements Action {

	public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{

		ActionForward forward=null;
		ClassBoardBean boardBean = null;
		
		HttpSession idsession = request.getSession(false);
		String id = (String) idsession.getAttribute("id");

		ClassBoardBean applyBean = new ClassBoardBean();
		applyBean.setClass_num(Integer.parseInt(request.getParameter("board_num")));
		applyBean.setID(id);
		BoardApplyProService boardApplyProService = new BoardApplyProService();
		boolean isWriteSuccess = boardApplyProService.registArticle(applyBean);
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
			forward = new ActionForward();
			forward.setRedirect(true);
			forward.setPath("ClassViewListboardList.bo");
			
			
		}
		return forward;
		
	}  	
	
}