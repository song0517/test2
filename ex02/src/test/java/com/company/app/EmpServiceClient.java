package com.company.app;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.company.app.emp.service.EmpService;
import com.company.app.emp.service.EmpVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class EmpServiceClient {
	@Autowired EmpService service;
	
	//@Test
	public void getEmp() {
		EmpVO vo = service.getEmp("100");
		log.debug(vo);
	}
	
	@Test
	public void delete() {
		int r = service.deleteEmp("207");
		if(r>=1) {
			log.debug(r);
		} else {
			log.debug(r);
		}
	}
}
