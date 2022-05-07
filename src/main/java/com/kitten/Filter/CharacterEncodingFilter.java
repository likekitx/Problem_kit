package com.kitten.Filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

/**
 * @author 27213
 */
@WebFilter(filterName = "characterEncodingFilter", value="/*")
public class CharacterEncodingFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {}

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        chain.doFilter(request,response);
    }

    @Override
    public void destroy() {}
}
