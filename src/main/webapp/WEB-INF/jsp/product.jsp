<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JK3B07</title>
</head>

<% ArrayList<String[]> result = (ArrayList<String[]>) request.getAttribute("result"); %>
<% ArrayList<String[]> result2 = (ArrayList<String[]>) request.getAttribute("result2"); %>

<body>
	<FORM METHOD="GET" ACTION="./item">
		<SELECT NAME="maker_code">

			<% for (String[] ss : result) { %>
			<OPTION VALUE="<%=ss[0]%>">
				<%=ss[1]%>
			</OPTION>
			<% } %>

		</SELECT> 
		<INPUT TYPE="SUBMIT" VALUE="絞り込む" />
	</FORM>	
		<table border="1">
			<tr>
				<td>JANコード</td>
				<td>商品名</td>
				<td>メーカー名</td>
			</tr>
			<% for (String[] ss2 : result2) { %>
			<tr>
				<th><%= ss2[0] %></th>
				<td><%= ss2[1] %></td>
				<td><%= ss2[2] %></td>
			</tr>
			<% } %>
		</table>
</body>
</html>