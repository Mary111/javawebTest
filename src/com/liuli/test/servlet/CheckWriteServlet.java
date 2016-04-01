package com.liuli.test.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckWriteServlet
 */
@WebServlet("/CheckWriteServlet")
public class CheckWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String[] interest=request.getParameterValues("interest");
		String address=request.getParameter("address");
		String commentString=request.getParameter("comment");
		
		List<String> list=new ArrayList<String>();
		
		if(null==username||"".equals(username)){
			list.add("用户名不能为空!");			
		}
		
		if(null==password||"".equals(password)){
			list.add("密码不能为空!");
		}else if(password.length()<3||password.length()>8){
			list.add("密码长度应在3~8之间!");
		}
		
		if(null==gender||"".equals(gender)){
			list.add("性别不能为空!");
		}
		
		if(null==interest||"".equals(interest)){
			list.add("兴趣不能为空!");
		}else if(interest.length<1||interest.length>3){
			list.add("兴趣选择应在1~3个之间!");
		}
		
		
	}

}
