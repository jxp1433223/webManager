package com.neuedu.dao;

import com.neuedu.pojo.Product;
import com.neuedu.pojo.Spgl;
import com.neuedu.untilTest.JdbcUntil;
import com.neuedu.untilTest.RowMap;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/*public class Spgllmpl implements SpglDao {
    @Override
    public List<Spgl> getLists() {
        return JdbcUntil.executeQuery("select * from spgl", new RowMap<Spgl>() {
            @Override
            public Spgl RowMapping(ResultSet rs) {
                Spgl s = new Spgl();
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
        return JdbcUntil.executeUpdate("insert into spgl(sp_id,sp_name,sp_des,sp_count) values(?,?,?,?)", spgl.getSpId(), spgl.getSpName(), spgl.getSpDes(), spgl.getSpCount());
    }

    @Override
    public int dele(int id) {
        return JdbcUntil.executeUpdate("delete from spgl where sp_id=?", id);
    }*/

    /*@Override
    public Product getOne(int id) {
        return JdbcUntil.QueryOne("select * from spgl where sp_id =?", new RowMap<Spgl>() {
            @Override
            public Spgl RowMapping(ResultSet resultSet) {
                Spgl s = new Spgl();
                try {
                    s.setSpId(resultSet.getInt("sp_id"));
                    s.setSpName(resultSet.getString("sp_name"));
                    s.setSpDes(resultSet.getString("sp_des"));
                    s.setSpCount(resultSet.getString("sp_count"));
                } catch (SQLException e) {
                    e.printStackTrace();
                }
                return ;
            }
        }, id);
    }*/


/*}*/
