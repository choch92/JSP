package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DataService;
import service.DataServiceImpl;

@WebServlet("*.do")
public class DoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Service 변수 선언
	private DataService dataService;
	
    public DoController() {
        super();
        // 객체 생성
        dataService = DataServiceImpl.sharedInstance();
    }
    // get 요청이 오면 처리하는 메소드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// GET과  POST 구분
		// request.getMethod(); 를 호출하면 요청방식이 리턴
		
		// 공통 부분을 제외한 요청 부분을 추출하기
		String contextPath = request.getContextPath();
		String requestURI = request.getRequestURI();
		String command = requestURI.substring(contextPath.length());
		switch(command) {
		case "/create.do":
			dataService.create();
			break;
		case "/read.do":
			dataService.read();
			break;
		case "/update.do":
			dataService.update();
			break;
		case "/delete.do":
			dataService.delete();
			break;
		default:
			System.out.println("잘못된 요청");
			break;	
		}
	}
	// post 요청이 오면 호출되는 메소드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
