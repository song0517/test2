package co.yedam.prjt.emp.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.yedam.prjt.common.Paging;
import co.yedam.prjt.emp.mapper.EmpMapper;
import co.yedam.prjt.emp.service.EmpService;
import co.yedam.prjt.emp.service.EmpVO;
import lombok.extern.log4j.Log4j;

@Controller	
@RequestMapping("/emp")
@Log4j
public class EmpController {
	@Autowired EmpService empService;
	@Autowired EmpMapper empMapper;
	
	//페이지이동은 모두 get 방식
	//등록처리는 post 방식 -> 메소드만 다르게 주면 같은 이름 사용 가능
	//등록페이지 이동
	@GetMapping("/insert")
	public void insert(Model model) {
		model.addAttribute("jobs", empMapper.getJobs());
		model.addAttribute("ids", empMapper.getEmployeeId());
		model.addAttribute("departments", empMapper.getDept());
	}
	
	//등록 처리
	@PostMapping("/insert")
	public String insertProc(EmpVO vo, RedirectAttributes rttr) {
		empService.insertEmp(vo);
		//입력한 값 리스트에 전달. url에 ?~&~생성.
		//rttr.addAttribute("page", 2);
		//rttr.addAttribute("search", "dddd");
		rttr.addFlashAttribute("result", "사원등록완료!");
		rttr.addAttribute("result2", "사원등록완료!!!");
		return "redirect:/emp/list";
	}
	
	//수정페이지 이동
	@GetMapping("/update")
	public String update(Model model, @RequestParam String id) {
		//단건조회한 결과를 담아서 가져가기
		model.addAttribute("emp", empService.getEmp(id));
		model.addAttribute("jobs", empMapper.getJobs());
		model.addAttribute("ids", empMapper.getEmployeeId());
		model.addAttribute("departments", empMapper.getDept());
		return "emp/update";
	}
	
	//수정 처리
	@PostMapping("/update")
	public String updateProc(EmpVO vo, RedirectAttributes rttr) {
		empService.updateName(vo);
		rttr.addFlashAttribute("result", "수정 완료!");
		return "redirect:/emp/list";
	}
	
	//삭제 처리, name부분 name파라메타이름 부분 같게 잘 보기!
	@PostMapping("/delete")
	public String deleteProc(@RequestParam String id, RedirectAttributes rttr) {
		empService.deleteEmp(id);
		rttr.addFlashAttribute("result", "삭제 완료!");
		return "redirect:/emp/list";
	}
	
	//전체조회 페이지
	@GetMapping("/list")
	public ModelAndView list(EmpVO vo, Paging paging) {
		//방법1
		//ModelAndView mv = new ModelAndView("emp/list");
		
		//방법2
		ModelAndView mv = new ModelAndView();
		mv.setViewName("emp/list");
		mv.addObject("emps", empService.getEmpAll(vo, paging));
		return mv;
	}
	
	//단건조회 페이지
	@GetMapping("/select")
	public String select(Model model, @RequestParam String id) {
		//조회된 결과를 model에 담아서 전달.
		model.addAttribute("emp", empService.getEmp(id));
		return "emp/select";
	}
}
