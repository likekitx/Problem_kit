package com.kitten.Servlet;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.kitten.Pojo.Admin;
import com.kitten.Service.Admin.AdminLoginService;
import com.kitten.Service.Admin.AdminLoginServiceImpl;
import com.kitten.Util.SessionConstants.Constants;
import com.kitten.Util.StaticUtil;
import com.mysql.cj.xdevapi.JsonArray;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StreamCorruptedException;

/**
 * @author 27213
 */
@WebServlet(name = "AdminLoginServlet", value = "/loa")
public class AdminLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        if(StaticUtil.admin.equals(pid)){
            AdminLoginService adminLoginService = new AdminLoginServiceImpl();
            Admin adminService = adminLoginService.getAdminService(request.getParameter("account"), request.getParameter("password"));
            request.getSession().setAttribute(Constants.CONSTANTSSESSION,adminService);
            request.getSession().setMaxInactiveInterval(1800);
            writeResponse(response,adminService);
        }
    }
    private void writeResponse(HttpServletResponse response,Object obj){
        response.setContentType("application/json");
        try {
            PrintWriter writer = response.getWriter();
            writer.write(JSON.toJSONString(obj));
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
