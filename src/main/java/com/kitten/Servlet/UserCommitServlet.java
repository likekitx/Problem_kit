package com.kitten.Servlet;

import com.alibaba.fastjson.JSON;
import com.kitten.Pojo.Users;
import com.kitten.Service.User.UserCommit.UserCommitService;
import com.kitten.Service.User.UserCommit.UserCommitServiceImpl;
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
@WebServlet(name = "UserCommitServlet", value = "/cit")
public class UserCommitServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pid = request.getParameter("pid");
        if(pid.equals(StaticUtil.commit)){
            String list = request.getParameter("list");
            int cim = cim(list);
            UserCommitService userCommitService = new UserCommitServiceImpl();
            Users user = (Users)request.getSession().getAttribute(Constants.CONSTANTSSESSION);
            user.setGrade((long)cim);
            boolean b = userCommitService.commitGrade(user);
            if(b){
                writeResponse(response,cim);
            }
            request.getSession().setAttribute("commit","ture");
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
    //判断得分
    private int cim(String str){
        String ook = "DACBACABADADAACBDAAABDACDACDCCBADDCCCCDA";
        int a = 0;
        for (int i = 0; i < 40; i++) {
            if(ook.charAt(i)==str.charAt(i)){
                a++;
            }
        }
        return a;
    }
}
