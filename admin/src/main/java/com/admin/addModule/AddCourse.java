package com.admin.addModule;

import com.admin.Bean.Course;
import com.oreilly.servlet.MultipartRequest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet("/Addcourse")
@MultipartConfig
public class AddCourse extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("hello get");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getMethod());
        String path="D:\\intellij\\manu\\demo1\\TutorialPoint\\src\\main\\resources\\images";
        MultipartRequest uploading=new MultipartRequest(request,path,20*1024*1024);
        String id=uploading.getParameter("id");
        String coursename=uploading.getParameter("cname");
        String type=uploading.getParameter("ctype");
        String fileName=uploading.getOriginalFileName("file");

       PrintWriter pre1= response.getWriter();
       response.setContentType("text/html");
       if(id==null && coursename==null && type==null && fileName==null){
           System.out.println("value is nulled");
           pre1.println("value is nulled");
       }else{
           // store data in databases;
           com.admin.Bean.Course bean=new Course();
           bean.setC_id(id);
           bean.setC_ename(coursename);
           bean.setC_Teype(type);
           bean.setImages(fileName);
           System.out.println(bean.getImages()+bean.getC_id()+bean.getC_ename()+bean.getC_Teype());
           pre1.println("data is saved");
           com.admin.dao.CourseDao.savecourseData(bean);
       }

    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.getWriter().println("nkjsbnkjbxkj b");
    }
}


