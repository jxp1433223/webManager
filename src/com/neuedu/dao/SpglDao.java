package com.neuedu.dao;

import com.neuedu.pojo.Product;
import com.neuedu.pojo.Spgl;

import java.util.List;

public interface SpglDao {
    public List<Spgl> getLists();
    public int add(Spgl spgl);
    public  int dele(int id);
    public Product getOne(int id);
}
