package com.neuedu.controller;

import com.neuedu.service.ISpglService;
import com.neuedu.service.SpglServletlmpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/deletesp")
public class DeletespServlet  extends HttpServlet {
    private ISpglService service = new SpglServletlmpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("productId"));
        System.out.println(id);
        service.dele(id);
        resp.sendRedirect("splist");
    }
}
