package com.company.app;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.app.emp.mapper.EmpMapper;
import com.company.app.emp.service.EmpVO;

@RunWith(SpringJUnit4ClassRunner.class)
//�������� ��� locations = {"","",...}
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class SqlSessionClient {
	@Autowired SqlSession mybatis;
	@Autowired EmpMapper mapper;
	
	//@Test
	public void select() {
		//EmpVO��ü�� ����ϱ� ���ϴϱ� EmpVO ��Ÿ�Ϸ� ������ֱ�
		EmpVO vo = (EmpVO)(mybatis.selectOne("com.company.app.emp.EmpMapper.getEmp", "100"));
		System.out.println(vo);
	}
	
	//@Test
	public void mapperSelect() {
		EmpVO vo = mapper.getEmp("100");
		System.out.println("=====" + vo);
	}
	
	//@Test
	public void update() {
		EmpVO vo = new EmpVO();
		vo.setFirstName("ȫ�浿");
		vo.setEmployeeId("100");
		int result = mapper.updateName(vo);
		System.out.println(result + "�� ������Ʈ!");
	}
	
	//@Test
	public void getDept() {
		//System.out.println(mapper.getDept().get(0).get("DEPARTMENT_NAME"));
		List<Map<String, Object>> list = mapper.getDeptAll();
		//�μ��� ��� ���, Ű�� ��� �빮��
//		for(int i=0; i<list.size(); i++) {
//			System.out.println(list.get(i).get("DEPARTMENT_NAME"));
//		}
		
		list.forEach(dept -> System.out.println(dept.get("department_name")));
	}
	
	//@Test
	public void insertEmp() {
		EmpVO vo = new EmpVO();
		vo.setLastName("ji");
		vo.setEmail("b@aaa.bb");
		vo.setHireDate("2022/12/08");
		vo.setJobId("IT_PROG");
		
		int result = mapper.insertEmp(vo);
		System.out.println(result + "�� ���!");
	}
	
	@Test
	public void getEmpAll() {
		EmpVO vo = new EmpVO();
		//vo.setDepartmentId("20");
		//vo.setFirstName("at");
		vo.setEmployeeIds(Arrays.asList("100","101","102"));
		List<EmpVO> list = mapper.getEmpAll(vo);
		if(list != null) {
			list.forEach(emp -> System.out.println(emp.getFirstName()));
		}
	}
}
