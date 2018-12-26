package com.neuedu.controller;

import com.neuedu.pojo.User;
import com.neuedu.service.IUserService;
import com.neuedu.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/doforgot")
public class DoforgotServlet extends HttpServlet {
    private IUserService service = new UserServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String answer = req.getParameter("answer");
        User u = service.getOne(username);
        System.out.println(u.getAnswer().equals(answer));
        if(u==null){
            resp.getWriter().write("1");
        }else{
            if(u.getAnswer().equals(answer)){
                resp.getWriter().write("2");
                resp.sendRedirect("login");
            }else {
                resp.getWriter().write("3");
            }
        }

    }
}
