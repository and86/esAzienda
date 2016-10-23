<%@page import="it.alfasoft.andrea.bean.Utente"%>
<%@page import="it.alfasoft.andrea.servizio.Servizi"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean id="user" class="it.alfasoft.andrea.bean.Utente" scope="session" />
<jsp:setProperty property="*" name="user" />
<jsp:useBean id="messaggio" class="it.alfasoft.andrea.utility.MessaggioBean" scope="request" />

<%
	Servizi s = new Servizi();

	String usn = request.getParameter("username"); //prendo user dal form login
	Utente u = s.leggiUtenteConUser(usn); //leggo utente con user
	String pass = request.getParameter("password"); //prendo pass dal form login

	pass = s.codificaPass(pass);
	if (u != null && pass.equals(u.getPassword())) { //l'utente è nel database
		user = u;
		char ruolo = user.getRuolo();

		switch (ruolo) {
		case 'a':
%>
<jsp:forward page="HomePageAdmin.jsp" />
<%
	break;

		case 'c':
%>
<jsp:forward page="HomePageCliente.jsp" />
<%
	break;

		case 'd':
%>
<jsp:forward page="HomePageDipendente.jsp" />
<%
	break;
		}
	
	}else {
		messaggio.setMessaggio("User e/o password errati");
		%>
		<jsp:forward page="Login.jsp" />
		<%
				
	}
	
%>
