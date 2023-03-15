package co.cofarm.prj.customer.service.impl;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

import org.apache.ibatis.session.SqlSession;

import co.cofarm.prj.common.DataSource;
import co.cofarm.prj.customer.mapper.CustomerMapper;
import co.cofarm.prj.customer.service.CustomerService;
import co.cofarm.prj.customer.vo.CustomerVO;

public class CustomerServiceImpl implements CustomerService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CustomerMapper map = sqlSession.getMapper(CustomerMapper.class);
	@Override
	public List<CustomerVO> customerSelectList(String auth) {
		return map.customerSelectList(auth);
	}

	@Override
	public CustomerVO customerSelect(String id) {
		// TODO Auto-generated method stub
		return map.customerSelect(id);
	}

	@Override
	public int customerInsert(CustomerVO vo) {
		// TODO Auto-generated method stub
		return map.customerInsert(vo);
	}

	@Override
	public int customerDelete(CustomerVO vo) {
		// TODO Auto-generated method stub
		return map.customerDelete(vo);
	}

	@Override
	public int customerUpdate(CustomerVO vo) {
		// TODO Auto-generated method stub
		return map.customerUpdate(vo);
	}

	@Override
	public CustomerVO customerLogin(String id, String password) {
		// TODO Auto-generated method stub
		return map.customerLogin(id, password);
	}

	@Override
	public boolean isCustomerIdCheck(String id) {
		// TODO Auto-generated method stub
		return map.isCustomerIdCheck(id);
	}

	@Override
	public int customerToFarmer(String id) {
		// TODO Auto-generated method stub
		return map.customerToFarmer(id);
	}

	
	//메일보내는..api
	@Override
	public void sendMail(String from, String to, String subject, String content) {
		// TODO Auto-generated method stub
		String _email = "hsujin0819@gmail.com";
		String _password = "zvrhcrkygxhtmefs";

		System.out.println("Start JavaMail API Test ~!");

		String fromMail = from;// "cholee@yedam.ac";
		String fromName = "CoCoFarm";
		String toMail = to;// "leadon@naver.com"; // 콤마(,) 나열 가능

		// mail contents
		StringBuffer contents = new StringBuffer();
		contents.append("<h1>Hello</h1>\n");
		contents.append("<p>Nice to meet you ~! :)</p><br>");

		// mail properties
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com"); // use Gmail
		props.put("mail.smtp.port", "587"); // set port

		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true"); // use TLS
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");

		Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() { // set authenticator
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(_email, _password);
			}
		});
		try {
			MimeMessage message = new MimeMessage(mailSession);

			message.setFrom(new InternetAddress(fromMail, MimeUtility.encodeText(fromName, "UTF-8", "B"))); // 한글의 경우
																											// encoding
																											// 필요
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toMail));
			message.setSubject(subject);
			message.setContent(content, "text/html;charset=UTF-8"); // 내용 설정 (HTML 형식)
			message.setSentDate(new java.util.Date());

			Transport t = mailSession.getTransport("smtp");
			t.connect(_email, _password);
			t.sendMessage(message, message.getAllRecipients());
			t.close();

			System.out.println("메일 발송 성공");
		} catch (Exception e) {
			System.out.println("메일 발송 실패");
			e.printStackTrace();
		}
	}

	@Override
	public int passwordChange(String id, String chpw) {
		// TODO Auto-generated method stub
		return map.passwordChange(id, chpw);
	}
}
