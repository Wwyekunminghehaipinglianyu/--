package com.example.service;

import com.example.dao.User2InfoDao;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import com.example.entity.User2Info;
import com.example.exception.CustomException;
import com.example.common.ResultCode;
import com.example.vo.User2InfoVo;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import cn.hutool.crypto.SecureUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

@Service
public class User2InfoService {

    @Resource
    private User2InfoDao user2InfoDao;

    public User2Info add(User2Info user2Info) {
        // 唯一校验
        int count = user2InfoDao.checkRepeat("name", user2Info.getName(), null);
        if (count > 0) {
            throw new CustomException("1001", "用户名\"" + user2Info.getName() + "\"已存在");
        }
        if (StringUtils.isEmpty(user2Info.getPassword())) {
            // 默认密码123456
            user2Info.setPassword(SecureUtil.md5("123456"));
        } else {
            user2Info.setPassword(SecureUtil.md5(user2Info.getPassword()));
        }
        user2InfoDao.insertSelective(user2Info);
        return user2Info;
    }

    public void delete(Long id) {
        user2InfoDao.deleteByPrimaryKey(id);
    }

    public void update(User2Info user2Info) {
        user2InfoDao.updateByPrimaryKeySelective(user2Info);
    }

    public User2Info findById(Long id) {
        return user2InfoDao.selectByPrimaryKey(id);
    }

    public List<User2InfoVo> findAll() {
        return user2InfoDao.findByName("all");
    }

    public PageInfo<User2InfoVo> findPage(String name, Integer pageNum, Integer pageSize, HttpServletRequest request) {
        PageHelper.startPage(pageNum, pageSize);
        List<User2InfoVo> all = user2InfoDao.findByName(name);
        return PageInfo.of(all);
    }

    public User2InfoVo findByUserName(String name) {
        return user2InfoDao.findByUsername(name);
    }

    public User2Info login(String username, String password) {
        User2Info user2Info = user2InfoDao.findByUsername(username);
        if (user2Info == null) {
            throw new CustomException(ResultCode.USER_ACCOUNT_ERROR);
        }
        if (!SecureUtil.md5(password).equalsIgnoreCase(user2Info.getPassword())) {
            throw new CustomException(ResultCode.USER_ACCOUNT_ERROR);
        }
        return user2Info;
    }

}
