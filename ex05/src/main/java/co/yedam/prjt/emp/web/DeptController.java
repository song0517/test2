package co.yedam.prjt.emp.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.yedam.prjt.common.Paging;
import co.yedam.prjt.emp.service.DeptService;
import co.yedam.prjt.emp.service.DeptVO;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/dept")
@Log4j
public class DeptController {
	@Autowired DeptService deptService;
	
	//조회
	@GetMapping("/list")
	public String list(Model model, DeptVO vo, Paging paging) {
		model.addAttribute("depts", deptService.getDept(vo, paging));
		return "dept/list";
	}
	
	//단건조회
	@GetMapping("/select")
	public String select(Model model, @RequestParam String id) {
		model.addAttribute("dept", deptService.deptSelect(id));
		return "dept/select";
	}
	
	//등록페이지 이동
	@GetMapping("/insert")
	public void insert(Model model) {
		model.addAttribute("ids", deptService.getEmployeeId());
		model.addAttribute("locations", deptService.getLocation());
	}
	
	//등록 처리
	@PostMapping("/insert")
	public String insertProc(DeptVO vo, RedirectAttributes rttr) {
		deptService.insertDept(vo);
		rttr.addFlashAttribute("result", "부서등록완료!");
		return "redirect:/dept/list";
	}
	
	//수정페이지 이동
	@GetMapping("/update")
	public String update(Model model, @RequestParam String id) {
		model.addAttribute("dept", deptService.deptSelect(id));
		model.addAttribute("ids", deptService.getEmployeeId());
		model.addAttribute("locations", deptService.getLocation());
		return "dept/update";
	}
	
	//수정 처리
	@PostMapping("/update")
	public String updateProc(DeptVO vo, RedirectAttributes rttr) {
		deptService.updateDept(vo);
		rttr.addFlashAttribute("result", "수정 완료!");
		return "redirect:/dept/list";
	}
	
	//삭제 처리
	@PostMapping("/delete")
	public String deleteProc(@RequestParam String id, RedirectAttributes rttr) {
		deptService.deleteDept(id);
		rttr.addFlashAttribute("result", "삭제 완료!");
		return "redirect:/dept/list";
	}
}
