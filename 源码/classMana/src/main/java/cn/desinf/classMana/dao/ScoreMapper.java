package cn.desinf.classMana.dao;

import cn.desinf.classMana.bean.Score;
import cn.desinf.classMana.bean.ScoreExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ScoreMapper {
    long countByExample(ScoreExample example);

    int deleteByExample(ScoreExample example);
    
    int deleteByStuId(@Param("couId")String couId,@Param("stuId")String stuId);

    int insert(Score record);

    int insertSelective(Score record);

    List<Score> selectByExample(ScoreExample example);
    
    List<Score> selectWithCouAndStu(String couId);
    
    List<Score> selectWithStuId(String stuId);

    int updateByExampleSelective(@Param("record") Score record, @Param("example") ScoreExample example);

    int updateByExample(@Param("record") Score record, @Param("example") ScoreExample example);
}