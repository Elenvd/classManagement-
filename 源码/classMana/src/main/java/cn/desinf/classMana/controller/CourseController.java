package cn.desinf.classMana.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.desinf.classMana.bean.Course;
import cn.desinf.classMana.bean.Msg;
import cn.desinf.classMana.service.CourseService;

@Controller
public class CourseController {

	@Autowired
	CourseService courseService;
	
	@ResponseBody
	@RequestMapping("/count")
	public Msg getCount(@RequestParam(value="couId")String couId){
		List<String> list=courseService.getCount(couId);
		return Msg.success().add("list", list);
	}
	
	@ResponseBody
	@RequestMapping("/cous")
	public Msg getCousWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn){
		PageHelper.startPage(pn,5);
		List<Course> cous=courseService.getAll();
		PageInfo page=new PageInfo(cous,5);
		return Msg.success().add("pageInfo", page);
	}
	

	@RequestMapping(value="/cou",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveCou(@Valid Course course,BindingResult result){
		System.out.println(course);
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
			courseService.saveCou(course);
			return Msg.success();
		}
	}
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@RequestMapping("/checkcouId")
	@ResponseBody
	public Msg checkUser(@RequestParam("couId")String couId){
		boolean b=courseService.checkId(couId);
		if(b){
			return Msg.success();
		}else {
			return Msg.fail().add("va_msg", "课程号不能重复");
		}
	}
	@RequestMapping(value="/cou/{ids}",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg deleteCou(@PathVariable("ids") String ids){
		if(ids.contains("-")){
			List<String> del_ids=new ArrayList<String>();
			String []str_ids=ids.split("-");
			for (String string : str_ids) {
				del_ids.add(string);
			}
			courseService.deleteBatch(del_ids);
		}else {
			courseService.deleteCou(ids);
		}
		return Msg.success();
	}
	
	
}
