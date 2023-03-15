package com.company.app;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.app.emp.service.DeptService;
import com.company.app.emp.service.DeptVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class DeptServiceClinet {
	@Autowired DeptService service;
	
	@Test
	public void getDept() {
		List<DeptVO> list = service.getDept();
		
		log.debug(list);
	}
	
	//@Test
	public void insert() {
		DeptVO vo = new DeptVO();
		vo.setDepartmentId("300");
		vo.setDepartmentName("테스트부서");
		
		int r = service.insertDept(vo);
		log.info(r + "건 등록");
	}
}
