package com.admin.savecoursedata;

import com.admin.dao.CourseDataSaveDao;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/CourseDataSave")
public class CourseDataSave extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String editor1=request.getParameter("editordata");
        String indexid=request.getParameter("indexid");
        System.out.println("editor value aa gye"+editor1);
        System.out.println("index value aa gye"+indexid);
        if(editor1.trim() !=null){
            response.getWriter().println("hello aa gya text");
            int a=CourseDataSaveDao.getsaveData(indexid,editor1);
            if(a==CourseDataSaveDao.SUCCESS){

            }
            else if (a==CourseDataSaveDao.ERROR) {}
            else if(a==CourseDataSaveDao.EXCEPTION){}
        }else{
            response.getWriter().println("eror aa rha h bro servlet me");
        }

    }
}
