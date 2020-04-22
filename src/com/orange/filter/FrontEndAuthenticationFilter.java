package com.orange.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@WebFilter("/natkhat/admin/*")
public class FrontEndAuthenticationFilter  implements Filter{

	 public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			 throws IOException, ServletException {
		 HttpServletRequest httpRequest = (HttpServletRequest) request;

		 String path = httpRequest.getRequestURI();//.substring(httpRequest.getContextPath().length());
         String cpath = httpRequest.getContextPath();
         chain.doFilter(request, response);
		/* if (!path.contains("/admin/")) {
			 chain.doFilter(request, response);
			 return;
		 }else{

			 HttpSession session = httpRequest.getSession(false);
			 if(null != session){
			 String sessionUser =  (String) session.getAttribute("loggedInUser");
			 String currentUser = request.getParameter("currentUser");
				 //If both current and user in session are equal then redirect it to dashboard page
				 if(null != currentUser && currentUser.equals(sessionUser)){
					 chain.doFilter(request, response);
					 return;
				 }else{
					 String loginPage = "/admin/login";
					 RequestDispatcher dispatcher = httpRequest.getRequestDispatcher(loginPage);
					 dispatcher.forward(request, response);
				 }
			 }else{
				 chain.doFilter(request, response);
				 return;
			 }
		 }*/
	 } 
	 
	   
	    public void destroy() {
	    }
	 
	    public void init(FilterConfig fConfig) throws ServletException {
	    }
}
