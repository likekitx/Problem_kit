package com.kitten.Filter;

import com.kitten.Pojo.Users;
import com.kitten.Service.User.UserCommit.UserCommitService;
import com.kitten.Service.User.UserCommit.UserCommitServiceImpl;
import com.kitten.Util.SessionConstants.Constants;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.apache.ibatis.binding.BindingException;

import java.io.IOException;

@WebFilter(filterName = "commitFilter",value = "/kitten/cit.jsp")
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
        if(login!=null){
            if(login.equals(bool)){
                UserCommitService userCommitService = new UserCommitServiceImpl();
                try {
                    long l = userCommitService.selectGrade((Users) req.getSession().getAttribute(Constants.CONSTANTSSESSION));
                    res.sendRedirect(req.getContextPath()+"/kitten/i.jsp");
                }catch (BindingException e){
                    chain.doFilter(request, response);
                }
            }
        }else {
            res.sendRedirect(req.getContextPath()+"/do.jsp");
        }

    }
}
