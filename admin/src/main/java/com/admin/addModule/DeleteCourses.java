package com.admin.addModule;

import com.database.ConnectionDB.ConnectionDB;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/deleteproduct")
public class DeleteCourses extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String courseid=request.getParameter("courseid");
        System.out.println(courseid);
        response.setContentType("text/html");
        response.getWriter().println("aa gya bro ,no tenison");

    }
}
