<%@page import="it.alfasoft.andrea.bean.Cliente"%>
<%@page import="java.util.List"%>
<%@page import="it.alfasoft.andrea.servizio.Servizi"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="user" class="it.alfasoft.andrea.bean.Utente"
	scope="session" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="Stylesheet" type="text/css" href="css/stat.css">
<title>Insert title here</title>

</head>
<body>
	<div id="Container">

		<div id="header">
		

		</div>


		<div class="menu">

			<jsp:include page="MenuLateraleAdmin.jsp"></jsp:include>

		</div>
		<div id="content">
			<h2>Elenco Clienti</h2>

			<table border="1">
				<thead>
					<tr>
						<th>n.</th>
						<th>nome</th>
						<th>cognome</th>
						<th>username</th>
						<th>ragione sociale</th>
						<th>partita iva</th>
					</tr>
					
					<% 
					Servizi s=new Servizi();
					List<Cliente> lista=s.getListClienti();	
					session.setAttribute("lista", lista);
					
					
					%>
					<c:set var="i" value="1" scope="page" />

				<c:forEach items="${lista}" var="u">

					<tr>
						<td><c:out value="${i}" /></td>
						<td><c:out value="${u.nome}" /></td>
						<td><c:out value="${u.cognome}" /></td>
						<td><c:out value="${u.username}" /></td>
						<td><c:out value="${u.ragSociale}" /></td>
						<td><c:out value="${u.pIVA}" /></td>
					</tr>
					<c:set var="i" value="${i + 1}" scope="page" />
				</c:forEach>


			</table>
		</div>
		<div id="footer">
			<h1>Footer</h1>

		</div>


	</div>
	<!--  end of container -->
					
					
			</table>
</body>
</html>