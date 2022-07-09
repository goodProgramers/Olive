package command;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.IdCheckService;

public class IdCheckHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String userId = (String) request.getParameter("userId"); // 입력된 아이디값을 String변수에 할당
		int idCheck = 0; // DAO, 서비스를 거쳐서 중복이 되는 아이디값이 있다면 1, 없다면 0 반환에 할당될 변수 선언
		
		IdCheckService idCheckService = IdCheckService.getInstance(); // 서비스객체 생성
		idCheck = idCheckService.idCheckService( userId ); // 서비스 함수 사용 -> 0 / 1 반환
		
		  PrintWriter out = response.getWriter(); // ajax 처리에 success 함수로 갔을때 1, 0값을 result에 할당하기 위해 선언 
		  out.write(idCheck + ""); // String으로 보낼수있도록 "" 붙힘 - ajax 결과값인 result 가 된다.
		 
		// request.setAttribute("idCheck", "idCheck");
		
		return null;
	}

}
