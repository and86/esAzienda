<%@page import="it.alfasoft.andrea.servizio.Servizi"%>
<%@page import="it.alfasoft.andrea.bean.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean id="user" class="it.alfasoft.andrea.bean.Utente"
	scope="session" />
	<jsp:setProperty property="*" name="user"/>


<jsp:useBean id="messaggio"
	class="it.alfasoft.andrea.utility.MessaggioBean" scope="request" />

<% 
Servizi s=new Servizi();

Utente u=s.getUtente(user.getUsername());

if(u!=null && u.getPassword().equals(s.codificaPass(user.getPassword())) && u.getRuolo()!='a'){	//nn posso cancellare un admin
	s.eliminaUtente(u);
	messaggio.setMessaggio("Utente eliminato");
	
	%>
<jsp:forward page="HomePageAdmin.jsp" />
<% 
}else {
	messaggio.setMessaggio("Impossibile eliminare utente. Controllare campi");
	%>
<jsp:forward page="CancellaUtente.jsp" />
<% 
}
	
	%>



