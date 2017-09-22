package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Object login;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		System.out.printf("id : %s, pwd : %s\n",id,pwd);
		
		response.setContentType("application/json;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		/*
		 * {
		 * 	"id" : id
		 * }
		 */
		
//		out.println("{");
//		out.println("\"id\":"+"\""+id+"\"");
//		out.println("}");
		
		// JSON SImple Library
		
//		JSONObject json = new JSONObject();
//		json.put("id", id);
//		json.put("pwd", pwd);
//		System.out.println(json.toJSONString());
//		out.println(json.toJSONString());
		
		// Gson Library (Google)
//		Gson gson = new GsonBuilder().create();
//		login = new Object() {
//			String id = this.id;
//			String pwd = this.pwd;
//		};
//		String json = gson.toJson(login);
//		out.println(json);
		
		JsonObject json2 = new JsonObject();
		json2.addProperty("id", id);
		json2.addProperty("pwd", pwd);
		
		out.println(json2);
		out.close();
	}

}
