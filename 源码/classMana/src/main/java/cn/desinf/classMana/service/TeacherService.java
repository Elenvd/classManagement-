package cn.desinf.classMana.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.desinf.classMana.bean.Teacher;
import cn.desinf.classMana.dao.TeacherMapper;
@Service
public class TeacherService {

	@Autowired
	TeacherMapper teacherMapper;

	public Teacher getTea(String id) {
		// TODO Auto-generated method stub
		Teacher teacher = teacherMapper.selectByPrimaryKey(id);
		return teacher;
	}

	public void updateTea(Teacher teacher) {
		// TODO Auto-generated method stub
		teacherMapper.updateByPrimaryKeySelective(teacher);
	}
}
