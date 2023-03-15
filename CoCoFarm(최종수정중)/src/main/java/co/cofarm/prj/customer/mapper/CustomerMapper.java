package co.cofarm.prj.customer.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.cofarm.prj.customer.vo.CustomerVO;

public interface CustomerMapper {
	List<CustomerVO> customerSelectList(String auth);
	CustomerVO customerSelect(String id);
	int customerInsert(CustomerVO vo);
	int customerDelete(CustomerVO vo);
	int customerUpdate(CustomerVO vo);
	
	//로그인 시 아이디 비번 확인
	CustomerVO customerLogin(@Param("id") String id, @Param("password")String password);
	
	//회원가입 시, 아이디 중복체크
	boolean isCustomerIdCheck(String id);
	
	//일반회원에서 농업인으로 권한 업데이트!
	int customerToFarmer(String id);
	
	//난수로 비밀번호 변경하기
	int passwordChange(@Param("id") String id, @Param("chpw") String chpw); //
}
