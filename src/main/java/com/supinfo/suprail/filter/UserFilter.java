package com.supinfo.suprail.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserFilter implements Filter{
	public UserFilter() {}

	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		if(req.getSession().getAttribute("user") != null){
			chain.doFilter(request, response);			
		}else{
			resp.sendRedirect(req.getContextPath()+"/");
		}
	}

	public void init(FilterConfig fConfig) throws ServletException {}
}

