package com.neuedu.dao;

import com.neuedu.pojo.User;
import com.neuedu.untilTest.JdbcUntil;
import com.neuedu.untilTest.RowMap;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements IUserDao {

    @Override
    public int insert(User user) {
        return JdbcUntil.executeUpdate("insert into user(username,password,tele,quertion,answer) values(?,?,?,?,?)",user.getUsername(),user.getPassword(),user.getTele(),user.getQuertion(),user.getAnswer());
    }

    @Override
    public User getOne(String username) {
        return JdbcUntil.QueryOne("select username,password,tele,quertion,answer from user where username=?", new RowMap<User>() {
            @Override
            public User RowMapping(ResultSet rs) {
                User u = new User();
                try {
                    u.setUsername(rs.getString("username"));
                    u.setPassword(rs.getString("password"));
                    u.setTele(rs.getString("tele"));
                    u.setQuertipn(rs.getString("quertion"));
                    u.setAnswer(rs.getString("answer"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                return u;
            }
        }, username);
    }
}
