package com.kitten.Servlet;

import com.alibaba.fastjson.JSON;
import com.kitten.Pojo.Users;
import com.kitten.Service.User.UserRegister.UserRegisterService;
import com.kitten.Service.User.UserRegister.UserRegisterServiceImpl;
import com.kitten.Util.SessionConstants.Constants;
import com.kitten.Util.StaticUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
        if(pid.equals(StaticUtil.register)){
            String account = request.getParameter("account");
            UserRegisterService userRegisterService = new UserRegisterServiceImpl();
            Users users = new Users();
            users.setName(request.getParameter("name"));
            users.setAccount(account);
            users.setPassword(request.getParameter("password"));
            users.setPhone(request.getParameter("phone"));
            //有没有这个账号
            Users users1 = userRegisterService.selectUser(account);
            if(users1==null){
                //没有的话让他插入
                boolean b = userRegisterService.setRegisterUser(users);
                writeResponse(response,b);
            }else {
                writeResponse(response,"notnull");
            }
            request.getSession().setAttribute(Constants.CONSTANTSSESSION,users);
            request.getSession().setAttribute("register","ture");
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
