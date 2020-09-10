package cn.desinf.classMana.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Jump {
	@RequestMapping("/Login")
	public String Login(@RequestParam("username")String username,@RequestParam("password")String password){
		System.out.println(username);
		System.out.println(password);
		if(username.equals("admin")&&password.equals("admin"))
			return "stuList";
		else if(username.equals("tea")&&password.equals("123")){
			return "couList";
		}else if(username.equals("stu")&&password.equals("321"))
			return "stuView";
		else {
			return "back";
		}
	}
	@RequestMapping("/lookScore")
	public String LookScore(@RequestParam(value = "couId") String couId,HttpServletRequest request){
		System.out.println(couId);
		request.setAttribute("couId", couId);
		return "ScoreList";
	}
	
	@RequestMapping("/lookStuScore")
	public String LookStuScore(@RequestParam(value = "stuId") String stuId,HttpServletRequest request){
		System.out.println(stuId);
		request.setAttribute("stuId", stuId);
		return "stuSco";
	}
	@RequestMapping("/stuList")
	public String stuList(){
		return "stuList";
	}
	
	@RequestMapping("/couList")
	public String couList(){
		return "couList";
	}
}
