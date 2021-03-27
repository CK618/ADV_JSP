<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<%!
 public void jspInit(){
	System.out.println("jsp initialization activity");
}

public void jspDestroy(){
	System.out.println("jspDestroy is in process");
}
%>
<html>
<head>
	<title>JSP Practice</title>
</head>
<body>
	<h1>Wellocome to JSP World</h1>
	<%-- exptession tag use --%>
	<h4>Currect date and time:<%= new Date() %></h4>
	<%
		sayHello(out);
	%>
	
	<%!
		public void sayHello(JspWriter out){
			System.out.println("Hello Sir");
			try{
			out.write("<h5>Hello Bro</h5>");
			}catch(IOException e){
				e.printStackTrace();
			}
		}
	%>
</body>
</html>