<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改</title>
</head>
<body>
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/weiyidata?useUnicode=true&characterEncoding=utf-8"
		user="root" password="root" />
	<!-- 查找修改前的数据，var为result -->
	<sql:query dataSource="${snapshot}" var="result">
		SELECT * from number;
	</sql:query>
	<h5>修改前：</h5>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<th>ID</th>
			<th>param_name</th>
			<th>param_value</th>
			<th>remark</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.param_name}" /></td>
				<td><c:out value="${row.param_value}" /></td>
				<td><c:out value="${row.remark}" /></td>
			</tr>
		</c:forEach>
	</table>

	<!-- 修改 ID 为 1 的名字参数名字 -->
	<c:set var="SiteId" value="2" />
	<sql:update dataSource="${snapshot}" var="count">
  		UPDATE number SET param_name = 'Test3' WHERE id = ?
  		<sql:param value="${SiteId}" />
	</sql:update>
	<!-- 查找修改后的数据，var为result1 -->
	<sql:query dataSource="${snapshot}" var="result1">
		SELECT * from number;
	</sql:query>
	<h5>修改后：</h5>
	<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<th>ID</th>
			<th>param_name</th>
			<th>param_value</th>
			<th>remark</th>
		</tr>
		<c:forEach var="row" items="${result1.rows}">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.param_name}" /></td>
				<td><c:out value="${row.param_value}" /></td>
				<td><c:out value="${row.remark}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>