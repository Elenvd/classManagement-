package cn.desinf.classMana.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.desinf.classMana.bean.Msg;
import cn.desinf.classMana.bean.Teacher;
import cn.desinf.classMana.service.TeacherService;

@Controller
public class TeacherController {
	
	@Autowired
	TeacherService teacherService;
	
	/**
	 * @RequestMapping(value="/stu/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getStu(@PathVariable("id")String id){
		Student student=studentService.getStu(id);
		return Msg.success().add("stu", student);
	}
	 */
	@ResponseBody
	@RequestMapping(value="/tea/{id}",method=RequestMethod.GET)
	public Msg getTea(@PathVariable("id")String id){
		Teacher teacher=teacherService.getTea(id);
		return Msg.success().add("tea", teacher);
	}
	
	/**
	 * @ResponseBody
	@RequestMapping(value="/stu/{stuId}",method=RequestMethod.PUT)
	public Msg saveStu(Student student,HttpServletRequest request){
		System.out.println("请求体中的值："+request.getParameter("stuName"));
		System.out.println("将要更新的员工数据："+student);
		studentService.updateEmp(student);
		return Msg.success();
	}
	 */
	@RequestMapping(value="/tea/{teaId}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg saveTea(Teacher teacher,HttpServletRequest request){
		System.out.println("请求体中的值："+request.getParameter("teaName"));
		teacherService.updateTea(teacher);
		return Msg.success();
	}
}
