package com.neuedu.service;

import com.neuedu.dao.SpglDao;
import com.neuedu.dao.Spgllmpl;
import com.neuedu.pojo.Spgl;

import java.util.List;

public class SpglServletlmpl implements ISpglService {
   private  SpglDao dao=new Spgllmpl();
    @Override
    public List<Spgl> getLists() {
        return dao.getLists();
    }

    @Override
    public int add(Spgl spgl) {
        return dao.add(spgl);
    }

    @Override
    public int dele(int id) {
        return dao.dele(id);
    }
}
