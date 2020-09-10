package cn.desinf.classMana.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.desinf.classMana.bean.Msg;
import cn.desinf.classMana.bean.Score;
import cn.desinf.classMana.bean.Student;
import cn.desinf.classMana.service.ScoreService;

@Controller
public class ScoreController {
	@Autowired
	ScoreService scoreService;
	
	@RequestMapping(value="/sco",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg deleteSco(@RequestParam(value = "couId") String couId,@RequestParam("stuId")String stuId){
		System.out.println("couId="+couId+"  stuId="+stuId);
		scoreService.delete(couId,stuId);
		return Msg.success();
	}
	
	@RequestMapping(value="/sco",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveStu(@RequestParam(value = "couId") String couId,@Valid Score score,BindingResult result){
		score.setCouId(couId);
		System.out.println(score);
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
			if(!scoreService.saveStu(score))
				return Msg.fail().add("msg", "该学生已存在在这列表里");
			return Msg.success();
		}
	}
	
	
	@RequestMapping("/checkstuId")
	@ResponseBody
	public Msg checkStuId(@RequestParam("stuId")String stuId){
		boolean b=scoreService.checkId(stuId);
		if(!b){
			Student student=scoreService.getStu(stuId);
			return Msg.success().add("student", student);
		}
		return Msg.fail();
	}

	@RequestMapping("/scos")
	@ResponseBody
	public Msg getScosWithJson(@RequestParam(value = "couId") String couId,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
		PageHelper.startPage(pn, 5);
		System.out.println(couId);
		List<Score>scos=scoreService.getAll(couId);
		for (Score score : scos) {
			System.out.println(score);
		}
		PageInfo page=new PageInfo(scos,5);
		return Msg.success().add("pageInfo", page);
	}
	
	@RequestMapping("/stuscos")
	@ResponseBody
	public Msg getstuScosWithJson(@RequestParam(value = "stuId") String stuId,@RequestParam(value = "pn", defaultValue = "1") Integer pn){
		PageHelper.startPage(pn, 5);
		System.out.println(stuId);
		List<Score>scos=scoreService.getStuSco(stuId);
		for (Score score : scos) {
			System.out.println(score);
		}
		PageInfo page=new PageInfo(scos,5);
		return Msg.success().add("pageInfo", page);
	}
}
