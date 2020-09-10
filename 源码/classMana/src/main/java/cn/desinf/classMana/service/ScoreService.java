package cn.desinf.classMana.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.desinf.classMana.bean.Score;
import cn.desinf.classMana.bean.Student;
import cn.desinf.classMana.bean.StudentExample;
import cn.desinf.classMana.bean.StudentExample.Criteria;
import cn.desinf.classMana.dao.ScoreMapper;
import cn.desinf.classMana.dao.StudentMapper;

@Service
public class ScoreService {
	@Autowired
	ScoreMapper scoreMapper;
	
	@Autowired
	StudentMapper studentMapper;

	public List<Score> getAll(String couId) {
		return scoreMapper.selectWithCouAndStu(couId);
		
	}

	public boolean checkId(String stuId) {
		StudentExample example=new StudentExample();
		Criteria criteria = example.createCriteria();
		criteria.andStuIdEqualTo(stuId);
		long count = studentMapper.countByExample(example);
		return count == 0;
	}

	public Student getStu(String stuId) {
		return studentMapper.selectByPrimaryKey(stuId);
	}

	public boolean saveStu(Score score) {
		// TODO Auto-generated method stub
		boolean temp=false;
		List<Score> list = scoreMapper.selectWithCouAndStu(score.getCouId());
		for (Score score2 : list) {
			if(score2.getStuId().equals(score.getStuId())){
				temp=true;
				return false;
			}
		}
		if(temp==false){
			scoreMapper.insertSelective(score);
		}
		return true;
	}

	public void delete(String couId, String stuId) {
		// TODO Auto-generated method stub
		scoreMapper.deleteByStuId(couId, stuId);
	}

	public List<Score> getStuSco(String stuId) {
		return scoreMapper.selectWithStuId(stuId);
	}
}
