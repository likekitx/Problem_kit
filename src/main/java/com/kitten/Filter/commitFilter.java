package com.kitten.Filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebFilter(filterName = "commitFilter",value = "/jsp/cit.jsp")
public class commitFilter implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        String bool = "ture";
        String login = (String)req.getSession().getAttribute("login");
        String commit = (String)req.getSession().getAttribute("commit");
        if(login.equals(bool)){
            if(commit!=null){
                if(commit.equals(bool)){
                    res.sendRedirect(req.getContextPath()+"/do.jsp");
                }
            }else {
                chain.doFilter(request, response);
            }
        }else {
            res.sendRedirect(req.getContextPath()+"/do.jsp");
        }
    }
}
