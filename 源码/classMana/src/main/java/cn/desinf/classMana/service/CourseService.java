package cn.desinf.classMana.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.desinf.classMana.bean.Course;
import cn.desinf.classMana.bean.CourseExample;
import cn.desinf.classMana.bean.Msg;
import cn.desinf.classMana.bean.StudentExample;
import cn.desinf.classMana.bean.CourseExample.Criteria;
import cn.desinf.classMana.dao.CourseMapper;

@Service
public class CourseService {
	@Autowired
	CourseMapper courseMapper;

	public List<Course> getAll() {
		return courseMapper.selectByExample(null);
		
	}

	public void saveCou(Course course) {
		courseMapper.insertSelective(course);
	}


	public boolean checkId(String couId) {
		CourseExample example=new CourseExample();
		Criteria criteria=example.createCriteria();
		criteria.andCouIdEqualTo(couId);
		long count=courseMapper.countByExample(example);
		return count==0;
	}

	/**
	 * public void deleteBatch(List<String> del_ids) {
		// TODO Auto-generated method stub
		StudentExample example=new StudentExample();
		Criteria criteria = example.createCriteria();
		criteria.andStuIdIn(del_ids);
		studentMapper.deleteByExample(example);
	}
	 * @param del_ids
	 */
	public void deleteBatch(List<String> del_ids) {
		CourseExample example=new CourseExample();
		Criteria criteria = example.createCriteria();
		criteria.andCouIdIn(del_ids);
		courseMapper.deleteByExample(example);
	}

	public void deleteCou(String ids) {
		courseMapper.deleteByPrimaryKey(ids);
	}

	public List<String> getCount(String couId) {
		List<String>list=new ArrayList<String>();
		list.add(courseMapper.selectScoAvg(couId));
		list.add(courseMapper.selectScoMax(couId));
		list.add(courseMapper.selectScoMin(couId));
		list.add(courseMapper.selectScoNum(couId));
		return list;
	}
	
	
}
