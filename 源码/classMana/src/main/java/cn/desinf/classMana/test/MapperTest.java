package cn.desinf.classMana.test;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.desinf.classMana.bean.Score;
import cn.desinf.classMana.bean.Student;
import cn.desinf.classMana.bean.Teacher;
import cn.desinf.classMana.dao.CourseMapper;
import cn.desinf.classMana.dao.ScoreMapper;
import cn.desinf.classMana.dao.StudentMapper;
import cn.desinf.classMana.dao.TeacherMapper;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:applicationContext.xml"})
public class MapperTest {
	
	@Autowired
	CourseMapper courseMapper;
	@Autowired
	ScoreMapper scoreMapper;
	@Autowired
	StudentMapper studentMapper;
	@Autowired
	TeacherMapper teacherMapper;
	@Autowired
	SqlSession sqlSession;
	
	@Test
	public void test(){
		/*System.out.println(courseMapper);
		System.out.println(scoreMapper);
		System.out.println(studentMapper);
		System.out.println(teacherMapper);*/
		//courseMapper.insertSelective(new Course("2","C/C++语言",4,new Date()));
		//studentMapper.insertSelective(new Student("201401060325","许德鑫","M",18,"计算机","14-3","晋江","山东科技大学","12345678901","普通",66));
		//teacherMapper.insertSelective(new Teacher("54088","修春勇","M",30,"计算机","东软3班","12345678901"));
		//scoreMapper.insertSelective(new Score("1","201401060325",65,11));
		
		/*StudentMapper mapper = sqlSession.getMapper(StudentMapper.class);*/
		/*for(int i=0;i<20;i++){
			String uid=UUID.randomUUID().toString().substring(0, 5);
			mapper.insertSelective(new Student("2014010"+uid,uid,"F",28,"计算机","14-3","山东","山东科技大学","12345678901","普通",66));
		}*/
		/*List<Score> list = scoreMapper.selectWithCouAndStu("1");
		for (Score score : list) {
			System.out.println(score);
		}*/
		scoreMapper.deleteByStuId("1", "2014010034d0");
	}
	
	@Test
	public void teststuSco(){
		List<Score> list = scoreMapper.selectWithStuId("201401060325");
		for (Score score : list) {
			System.out.println(score);
		}
	}
	
	@Test
	public void testTongji(){
		
		List<String>list=new ArrayList<String>();
		list.add(courseMapper.selectScoAvg("1"));
		list.add(courseMapper.selectScoMax("1"));
		list.add(courseMapper.selectScoMin("1"));
		list.add(courseMapper.selectScoNum("1"));
		for (String string : list) {
			
			System.out.println(string);
		}
	}
}
