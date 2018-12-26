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
import java.util.List;

@WebServlet("/splist")
public class SplistServlet extends HttpServlet {
    private SpglDao service= new Spgllmpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Spgl> lists=service.getLists();
        req.setAttribute("liste",lists);
        req.getRequestDispatcher("WEB-INF/page/splist.jsp").forward(req,resp);
    }
}
