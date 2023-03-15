package co.cofarm.prj.customer.service;

import java.util.List;


import co.cofarm.prj.customer.vo.CustomerVO;

public interface CustomerService {
	List<CustomerVO> customerSelectList(String auth);
	CustomerVO customerSelect(String id);
	int customerInsert(CustomerVO vo);
	int customerDelete(CustomerVO vo);
	int customerUpdate(CustomerVO vo);
	
	//로그인 시 아이디 비번 확인
	CustomerVO customerLogin(String id, String password);
	
	//회원가입 시, 아이디 중복체크
	boolean isCustomerIdCheck(String id);
	
	//일반회원에서 농업인으로 권한 업데이트!
	int customerToFarmer(String id);
	
	//비밀번호 메일 보내기
	public void sendMail(String from, String to, String subject, String content);
	
	//난수로 비밀번호 변경하기
	int passwordChange(String id, String chpw); //
}
