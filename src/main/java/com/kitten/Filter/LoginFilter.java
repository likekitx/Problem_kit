package com.kitten.Filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "LoginFilter",value = "/kitten/lg.jsp")
public class LoginFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String register = (String)req.getSession().getAttribute("register");
        String login = (String)req.getSession().getAttribute("login");
        String bool = "ture";
        if(register.equals(bool)){
            //点击过登陆后
            if(login!=null){
                if(login.equals(bool)){
                    res.sendRedirect(req.getContextPath()+"/kitten/cit.jsp");
                }
            }else {
                chain.doFilter(request, response);
            }
        }else {
            res.sendRedirect(req.getContextPath()+"/do.jsp");
        }
    }
}
