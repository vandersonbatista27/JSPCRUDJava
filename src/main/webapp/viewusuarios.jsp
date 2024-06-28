<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Visualização de Usuários</title>
</head>
<body>
	<%@ page import="com.crudjspjava.dao.UsuarioDao, com.crudjspjava.bean.*, java.util.*"%>
	<%@ taglig uri="http://java.sum.com/jsp/jtsl/core" prefix="c" %>
	
	
	<h1>Listagem de Usuários</h1>
	
	<%
	
	String pageid = request.getParameter("page");
	int id = Integer.parseInt(pageid);
	int total = 5;
	
	if(id==1){}
	else{
		id = id -1;
		id = id * total + 1;
	}
	
	//List<Usuario> list = UsuarioDao.getAllUsuario();
	List<Usuario> list = UsuarioDao.getRecords(id, total);
	request.setAttribute("lsit", list);
	%>
	
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Password</th>
			<th>Email</th>
			<th>Sexo</th>
			<th>Pais</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>
		<c:forEach items="${list}" var="usuario">
		<tr>
			<td>${usuario.getId()}</td>
			<td>${usuario.getNome()}</td>
			<td>${usuario.getPassword()}</td>
			<td>${usuario.getEmail()}</td>
			<td>${usuario.getSexo()}</td>
			<td>${usuario.getPais()}</td>
			<td><a href="editform.jsp?id=${usuario.getId()}">Editar</a></td>
			<td><a href="deleteusuario.jsp?id=${usuario.getId()}">Excluir</a></td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<a href="viewusuario.jsp?page=1">1</a>
	<a href="viewusuario.jsp?page=2">2</a>
	<a href="viewusuario.jsp?page=3">3</a>
	
	<br>
	<a href="addusuarioform.jsp">>Adicionar novo Usuário</a>
</body>
</html>