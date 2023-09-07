package com.example.dao;

import com.example.entity.User2Info;
import com.example.vo.User2InfoVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

@Repository
public interface User2InfoDao extends Mapper<User2Info> {
    List<User2InfoVo> findByName(@Param("name") String name);
    
    int checkRepeat(@Param("column") String column, @Param("value") String value, @Param("id") Long id);
    User2InfoVo findByUsername(String username);
    Integer count();
}
