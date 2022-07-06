package controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.CommandHandler;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DispatcherServlet() {
		super();
	}

	private Map<String, CommandHandler> commandHandlerMap = new HashMap<String, CommandHandler>();

	public void init() throws ServletException {

		String path = this.getInitParameter("path");
		String realPath = this.getServletContext().getRealPath(path); 
		System.out.println(realPath);
		
		Properties prop = new Properties();
		try(FileReader fr = new FileReader(realPath)) {
			prop.load(fr);			
		} catch (Exception e) {
			throw new ServletException();
		}

		Iterator<Object> ir = prop.keySet().iterator(); 
		while (ir.hasNext()) {
			String url = (String) ir.next(); // 요청URL
			String commandHandlerFullName = prop.getProperty(url); // 키 값으로 프로퍼티를 가져옴

			// 객체 생성 ***
			try {
				Class<?> handlerClass = Class.forName(commandHandlerFullName); 
				CommandHandler commandHandler = (CommandHandler) handlerClass.newInstance();
				System.out.println(commandHandler);
				this.commandHandlerMap.put(url, commandHandler);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} // try

		} // while

	} // init

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI(); // contextPath부터 출력
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		
		if(requestURI.indexOf(contextPath) == 0) { 
			requestURI = requestURI.substring(contextPath.length()); 
		} // if	

		CommandHandler modelHandler = this.commandHandlerMap.get(requestURI); 
		System.out.println(requestURI);
		System.out.println(modelHandler);

		String viewPage = null;
		try {
			viewPage = modelHandler.process(request, response); 
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("뷰페이지안넘어옴");
		} // try

		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} // if
		
	} // doGet

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	} // doPost

}
