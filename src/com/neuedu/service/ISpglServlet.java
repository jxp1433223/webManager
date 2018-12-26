package com.neuedu.service;

import com.neuedu.pojo.Spgl;

import java.util.List;

public interface ISpglServlet {
    public List<Spgl> getLists();
    public int add(Spgl spgl);
    public int dele(int id);
}
