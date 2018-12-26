package com.neuedu.dao;

import com.neuedu.pojo.Spgl;

import java.util.List;

public interface SpglDao {
    public List<Spgl> getLists();
    public int add(Spgl spgl);
    public  int dele(int id);
}
