package com.kitten.Servlet;

import com.alibaba.fastjson.JSON;
import com.kitten.Pojo.Users;
import com.kitten.Service.User.UserRegister.UserRegisterService;
import com.kitten.Service.User.UserRegister.UserRegisterServiceImpl;
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
@WebServlet(name = "UserRegisterServlet", value = "/reg")
public class UserRegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        request.getSession().setAttribute("register","ture");
        if(pid.equals(StaticUtil.register)){
            String account = request.getParameter("account");
            UserRegisterService userRegisterService = new UserRegisterServiceImpl();
            Users users = new Users();
            users.setName(request.getParameter("name"));
            users.setAccount(account);
            users.setPassword(request.getParameter("password"));
            users.setPhone(request.getParameter("phone"));
            //有没有这个账号
            if(userRegisterService.selectUser(users.getAccount())==null){
                //没有的话让他插入
                boolean b = userRegisterService.setRegisterUser(users);
                request.getSession().setAttribute(Constants.CONSTANTSSESSION,users);
                writeResponse(response,b);
            }else {
                //有的话返回信息
                Users users1 = new Users();
                users1.setAccount(account);
                request.getSession().setAttribute(Constants.CONSTANTSSESSION,users1);
                writeResponse(response,"notnull");
            }
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
