package com.jinlong.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		Object user = request.getSession().getAttribute("user");
		if(user==null) {
			if ("XMLHttpRequest".equals(request.getHeader("X-Requested-With"))) {
				// 如果是Ajax请求，往回写点东西
				response.getWriter().write("unlogin");
			} else {
				// 如果是正常请求，如：表单提交，a连接，可以直接重定向
				response.sendRedirect(request.getContextPath() + "/login.jsp");
			}
			return false;
		}
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

}
