package cn.desinf.classMana.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.desinf.classMana.bean.Msg;
import cn.desinf.classMana.bean.Student;
import cn.desinf.classMana.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	StudentService studentService;
	
	@ResponseBody
	@RequestMapping(value="/stu/{ids}",method=RequestMethod.DELETE)
	public Msg deleteStu(@PathVariable("ids") String ids){
		if(ids.contains("-")){
			List<String> del_ids=new ArrayList<String>();
			String []str_ids=ids.split("-");
			for (String string : str_ids) {
				del_ids.add(string);
			}
			studentService.deleteBatch(del_ids);
		}else {
			studentService.deleteStu(ids);
		}
		return Msg.success();
		
	}
	
	@ResponseBody
	@RequestMapping(value="/stu/{stuId}",method=RequestMethod.PUT)
	public Msg saveStu(Student student,HttpServletRequest request){
		System.out.println("请求体中的值："+request.getParameter("stuName"));
		System.out.println("将要更新的员工数据："+student);
		studentService.updateStu(student);
		return Msg.success();
	}
	
	@RequestMapping(value="/stu/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getStu(@PathVariable("id")String id){
		Student student=studentService.getStu(id);
		return Msg.success().add("stu", student);
	}
	
	@RequestMapping("/checkuser")
	@ResponseBody
	public Msg checkuser(@RequestParam("stuId")String stuId){
		String regx="^.{12}$";
		if(!stuId.matches(regx)){
			return Msg.fail().add("va_msg", "学号必须12位");
		}
		boolean b=studentService.checkId(stuId);
		if(b){
			return Msg.success();
		}else {
			return Msg.fail().add("va_msg", "学号不能重复");
		}
	}
	
	@RequestMapping(value="/stu",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveStu(@Valid Student student,BindingResult result){
		if(result.hasErrors()){
			Map<String, Object>map=new HashMap<String, Object>();
			List<FieldError> errors=result.getFieldErrors();
			for (FieldError fieldError : errors) {
				System.out.println("错误的字段名："+fieldError.getField());
				System.out.println("错误信息："+fieldError.getDefaultMessage());
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorFields", map);
		}else {
			studentService.saveStu(student);
			return Msg.success();
		}
	}
	
	@RequestMapping("/stus")
	@ResponseBody
	public Msg getStusWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn){
		PageHelper.startPage(pn, 5);
		List<Student>stus=studentService.getAll();
		PageInfo page=new PageInfo(stus,5);
		return Msg.success().add("pageInfo", page);
	}
	
	//@RequestMapping("/stus")
	public String getStu(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model){
		PageHelper.startPage(pn, 5);
		List<Student>stus=studentService.getAll();
		PageInfo page=new PageInfo(stus,5);
		model.addAttribute("pageInfo",page);
		return "student";
	}
	
	
}
