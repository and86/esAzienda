<%@page import="it.alfasoft.andrea.servizio.Servizi"%>
<%@page import="it.alfasoft.andrea.bean.Dipendente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean id="user" class="it.alfasoft.andrea.bean.Utente" scope="session" />
<jsp:setProperty property="*" name="user" />
<jsp:useBean id="dipendente" class="it.alfasoft.andrea.bean.Dipendente" scope="request"/>	
<jsp:setProperty property="*" name="dipendente"/>
<jsp:useBean id="messaggio" class="it.alfasoft.andrea.utility.MessaggioBean" scope="request" />

<% 
dipendente.setRuolo('d');

Servizi s=new Servizi();

if(dipendente.isValid() && s.leggiUtenteConUser(dipendente.getUsername())==null){
	String password=s.codificaPass(dipendente.getPassword());
	dipendente.setPassword(password);
	s.registraDipendente(dipendente);
	messaggio.setMessaggio("Dipendente registrato");
	
	%>
<jsp:forward page="HomePageAdmin.jsp" />
<% 
}else {
	messaggio.setMessaggio("Campi non validi e/o user già in uso");
	%>
<jsp:forward page="RegistrazioneNuovoDipendente.jsp" />
<% 
}
	
	%>



