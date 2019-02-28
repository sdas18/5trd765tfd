<%@page import="com.cg.project.beans.UserBean"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<div>
		<%
			HttpSession session = request.getSession(false);
			//UserBean userBean = null;
			if (session == null) {
				response.sendRedirect("personalInfoPage.jsp");
			}
		%>
		</div>
		<font size=10>Welcome ${sessionScope.userBean.firstName}</font>
		<form name="socialInfoForm" action="SocialInfoServlet" method="post">
			<table>
				<tr>
					<td>Enter fruitName:-</td>
					<td><input type="text" name="fruitName" /></td>
				</tr>
				<tr>
					<td>Enter movieName:-</td>
					<td><input type="text" name="movieName" /></td>
				</tr>
				<tr>
					<td>Enter bookName:-</td>
					<td><input type="text" name="bookName" /></td>
				</tr>
				<tr>
					<td><input type="submit" name="Submit" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>