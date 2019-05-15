<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
<head>
<title>在jsp中进行增删改查操作</title>
</head>
<body>
	<sql:setDataSource var="weiyidata" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/weiyidata?useUnicode=true&characterEncoding=utf-8"
		user="root" password="root" />

	<!-- 实现查询功能 -->
	<sql:query dataSource="${weiyidata}" var="result">
		SELECT * from number;
	</sql:query>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<th>ID</th>
			<th>param_name</th>
			<th>param_value</th>
			<th>remark</th>
			<!-- <th>操作</th> -->
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.param_name}" /></td>
				<td><c:out value="${row.param_value}" /></td>
				<td><c:out value="${row.remark}" /></td>
				<%-- <td><a href="add.jsp">增加</a>&nbsp;&nbsp;<a href="update.jsp?id=${row.id}">修改</a>&nbsp;&nbsp;<a href="delete.jsp?id=${row.id}">删除</a></td> --%>
			</tr>
		</c:forEach>
	</table>
</body>
</html>