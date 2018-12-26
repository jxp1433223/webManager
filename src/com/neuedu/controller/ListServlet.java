package com.neuedu.controller;

import com.neuedu.dao.IProductDao;
import com.neuedu.dao.ProductDaoImpl;
import com.neuedu.pojo.Product;
import com.neuedu.service.IProductService;
import com.neuedu.service.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/list")
public class ListServlet extends HttpServlet {
    private IProductService service= new ProductServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> lists=service.getLists();
        req.setAttribute("lists",lists);
        req.getRequestDispatcher("WEB-INF/page/list.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String text=req.getParameter("text");
        if(text==""||text.equals(" ")){
            List<Product> lists=service.getLists();
            req.setAttribute("lists",lists);
            req.getRequestDispatcher("WEB-INF/page/list.jsp").forward(req,resp);
        }else{
            List<Product> lists=service.getResults(text);
            for (Product p:lists
                 ) {
                System.out.println(p);
            }
            req.setAttribute("text",text);
            req.setAttribute("lists",lists);
            req.getRequestDispatcher("WEB-INF/page/list.jsp").forward(req,resp);

        }
    }
}
