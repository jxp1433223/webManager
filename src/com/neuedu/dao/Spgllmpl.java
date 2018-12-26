package com.neuedu.dao;

import com.neuedu.pojo.Spgl;
import com.neuedu.untilTest.JdbcUntil;
import com.neuedu.untilTest.RowMap;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class Spgllmpl implements SpglDao {
    @Override
    public List<Spgl> getLists() {
        return JdbcUntil.executeQuery("select * from spgl", new RowMap<Spgl>() {
            @Override
            public Spgl RowMapping(ResultSet rs) {
                Spgl s=new Spgl();
                try {
                    s.setProductId(rs.getInt("product_id"));
                    s.setSpId(rs.getInt("sp_id"));
                    s.setSpName(rs.getString("sp_name"));
                    s.setSpDes(rs.getString("sp_des"));
                    s.setSpCount(rs.getString("sp_count"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                return s;
            }
        }, null);
    }

    @Override
    public int add(Spgl spgl) {
        return JdbcUntil.executeUpdate("insert into spgl(product_id,sp_name,sp_des,sp_count) values(?,?,?,?)",spgl.getProductId(),spgl.getSpName(),spgl.getSpDes(),spgl.getSpCount());
    }

    @Override
    public int dele(int id) {
        return JdbcUntil.executeUpdate("delete from product where product_id=?,id");
    }

}
