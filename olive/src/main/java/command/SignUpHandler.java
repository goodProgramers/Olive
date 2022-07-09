package command;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.MemberDTO;
import service.SignUpService;

public class SignUpHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String userName = (String)request.getParameter("input_member_name"); // 이름

		/* if( request.getMethod() == "POST" ) { */
			if( userName != null ) {

			int result = 0; // 인서트 작업이 성공/실패 여부를 담기 위한 변수

			String userId = (String)request.getParameter("mbr_id"); // 아이디
			String userPasswd = (String)request.getParameter("pwd"); // 비번

			int gender = Integer.parseInt( request.getParameter("genderchk") ); // 성별

			String addrDoro = (String)request.getParameter("sample4_roadAddress"); // 주소
			String addrDetail = (String)request.getParameter("sample4_detailAddress"); // 상세 주소
			String addr = addrDoro + " " + addrDetail;  // 전체 주소

			String birthY = (String)request.getParameter("birth_yy"); // 생년월일 년도
			String birthM = (String)request.getParameter("birth_mm"); // 생년월일 월
			String birthD = (String)request.getParameter("birth_dd"); // 생년월일 일
			String birth = birthY + "-" + birthM + "-" + birthD; // 전체 생년월일
			Date birthday = new Date( Integer.parseInt(birthY), Integer.parseInt(birthM), Integer.parseInt(birthD) );


			String firstPhone = (String)request.getParameter("mob_no_1"); // 핸드폰번호
			String middlePhone = (String)request.getParameter("mob_no_2"); // 핸드폰번호
			String lastPhone = (String)request.getParameter("mob_no_3"); // 핸드폰번호
			String phone = firstPhone + "-" + middlePhone + "-" + lastPhone; // 전체 핸드폰 번호

			String firstEmail = (String)request.getParameter("email_addr1"); // 이메일
			String lastEmail = (String)request.getParameter("email_addr2"); // 이메일
			String email = firstEmail + "@" + lastEmail; // 전체 이메일

			// dto 객체를 매개변수로 넘겨줄거라 생성 및 값 초기화 작업
			MemberDTO dto = new MemberDTO();

			dto.setMe_name(userName);
			dto.setMe_id( userId );
			dto.setMe_passwd(userPasswd);
			dto.setMe_gender(gender);
			dto.setMe_address(addr);
			dto.setMe_birthday(birthday);
			dto.setMe_phone(phone);
			dto.setMe_email(email);



			SignUpService signUpService = SignUpService.getInstance();
			result = signUpService.signup(dto);

			if( result == 0) { // 실패
				response.sendRedirect("/olive/signup.do"); 
				// return "/olive_M/signup.do";
			}else {// 성공
				response.sendRedirect("/olive/main.do"); 
			}
			
			return null;
		} // 회원가입창에서 등록을 눌었을때

		return "/olive/signup.jsp";
	} // 메인에서 회원가입 눌렀을때

}
