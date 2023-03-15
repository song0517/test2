package co.yedam.prjt.emp.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.yedam.prjt.emp.service.EmpService;
import co.yedam.prjt.emp.service.EmpVO;
import co.yedam.prjt.emp.service.UserListVO;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/test")
@Log4j
public class TestController {
	@Autowired EmpService empService;
	
	@RequestMapping("/params")
	public String params(@RequestParam List<String> employeeIds) {
		log.info(employeeIds);
		
		return "main";
	}
	
	//등록
		@RequestMapping("/insertListPage")
		public String insertListPage() {
			return "empInsertList";
		}
	
	//등록
		//@RequestMapping(method = {RequestMethod.GET, RequestMethod.POST}, path="/insertList")
		@PostMapping //post방식 mapping
		public String insertList(UserListVO vo) {
			log.info(vo);
			return "home";
		}
	
	//등록
	@RequestMapping("/insert")
	public String insert(EmpVO vo) {
		log.info(vo);
		return "home";
	}
	
	//등록
	@RequestMapping("/insertparam")  //emp/insert -> 주소
	//@RequestParam(name = "name") -> 파라메타 이름을 name으로 변경
	//request.getParamete("") @RequestParam 생략 가능 -> 필요할때 사용(name, required, defaultValue)
	public String insert(Integer age, 
						@RequestParam(name = "userid") String firstName, 
						@RequestParam(required = false, defaultValue = "kim") String lastName) {
		log.info(age);
		log.info(firstName);
		log.info(lastName);
		return "home";
	}
	
	//수정
	
	//삭제
	@RequestMapping("/delete")
	public String delete(@RequestParam(name = "id") String employeeId) { //파라미터 필수, value속성에 이름
		empService.deleteEmp(employeeId);
		
		return "home";
	}
	
	//삭제 -> {}안에 변수이름과 ()안의 변수이름이 같아야된다.
		@RequestMapping("delete/{empid}/{deptid}")
		public String deletepath(@PathVariable String empid, @PathVariable int deptid) { //파라미터 필수, value속성에 이름
			//empService.deleteEmp(employeeId);
			log.info(empid);
			log.info(deptid);
			return "home";
		}
	
	
	//조회
}
