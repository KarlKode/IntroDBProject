<%@page import="ch.ethz.inf.dbproject.model.User"%>
<%@page import="ch.ethz.inf.dbproject.util.UserManagement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Header.jsp" %>
<% final User user = (User) session.getAttribute(UserManagement.SESSION_USER); %>

<h1>Project Detail</h1>

<%=session.getAttribute("projectTable")%>

<%
	//TODO Display different funding amounts
	//session.getAttribute("amountTable")
%>


<%
if (user != null) {
	// User is logged in. He can add a comment
%>
	<form action="Project" method="get">
		<input type="hidden" name="action" value="add_comment" />
		<input type="hidden" name="user_id" value="<%= user.getUserid() %>" />
		Add Comment
		<br />
		<textarea rows="4" cols="50" name="comment"></textarea>
		<br />
		<input type="submit" value="Submit" />
	</form>
<%
}
%>

<%
	//TODO Display existing comments
	//session.getAttribute("commentTable")
%>

<%@ include file="Footer.jsp"%>