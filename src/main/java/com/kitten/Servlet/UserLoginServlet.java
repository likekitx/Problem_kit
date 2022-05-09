package com.kitten.Servlet;

import com.alibaba.fastjson.JSON;
import com.kitten.Pojo.Users;
import com.kitten.Service.User.UserLogin.UserLoginService;
import com.kitten.Service.User.UserLogin.UserLoginServiceImpl;
import com.kitten.Util.SessionConstants.Constants;
import com.kitten.Util.StaticUtil;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * @author 27213
 */
@WebServlet(name = "UserLoginServlet", value = "/log")
public class UserLoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        if(pid.equals(StaticUtil.user)){
            //拿到当前用户
            Users users = (Users) request.getSession().getAttribute(Constants.CONSTANTSSESSION);
            UserLoginService userLoginService = new UserLoginServiceImpl();
            //登陆用户
            String account = request.getParameter("account");
            Users userLogin = userLoginService.getUserLogin(account, request.getParameter("password"));
            if(users.getAccount().equals(account)){
                if(userLogin==null){
                    writeResponse(response,"null");
                }else {
                    request.getSession().setAttribute(Constants.CONSTANTSSESSION,userLogin);
                    writeResponse(response,userLogin);
                }
            }else {
                writeResponse(response,"same");
            }
            request.getSession().setAttribute("login","ture");
        }
    }

    /**
     * @param response
     * @param obj
     */
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
