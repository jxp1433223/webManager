package com.neuedu.controller;

import com.neuedu.dao.SpglDao;
import com.neuedu.dao.Spgllmpl;
import com.neuedu.pojo.Spgl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/doAddSp")
public class DoAddSp extends HttpServlet {
   private SpglDao service=new Spgllmpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id=Integer.parseInt(req.getParameter("id"));
        String name=req.getParameter("name");
        String des = req.getParameter("des");
        String count=req.getParameter("count");
        Spgl s=new Spgl();
        s.setSpId(id);
        s.setSpName(name);
        s.setSpDes(des);
        s.setSpCount(count);
        service.add(s);
        resp.sendRedirect("splist");
    }
}
