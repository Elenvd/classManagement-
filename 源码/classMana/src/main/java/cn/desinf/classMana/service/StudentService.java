package cn.desinf.classMana.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.desinf.classMana.bean.Student;
import cn.desinf.classMana.bean.StudentExample;
import cn.desinf.classMana.bean.StudentExample.Criteria;
import cn.desinf.classMana.dao.StudentMapper;

@Service
public class StudentService {
	
	@Autowired
	StudentMapper studentMapper;

	public List<Student> getAll() {
		return studentMapper.selectByExample(null);
	}

	public void saveStu(Student student) {
		studentMapper.insertSelective(student);
	}

	public boolean checkId(String stuId) {
		// TODO Auto-generated method stub
		StudentExample example=new StudentExample();
		Criteria criteria = example.createCriteria();
		criteria.andStuIdEqualTo(stuId);
		long count = studentMapper.countByExample(example);
		return count == 0;
	}

	public Student getStu(String id) {
		Student student=studentMapper.selectByPrimaryKey(id);
		return student;
	}

	public void updateStu(Student student) {
		studentMapper.updateByPrimaryKeySelective(student);
	}

	public void deleteStu(String id) {
		// TODO Auto-generated method stub
		studentMapper.deleteByPrimaryKey(id);
	}

	public void deleteBatch(List<String> del_ids) {
		// TODO Auto-generated method stub
		StudentExample example=new StudentExample();
		Criteria criteria = example.createCriteria();
		criteria.andStuIdIn(del_ids);
		studentMapper.deleteByExample(example);
	}
}
