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
String nome= request.getParameter("nome");
String cognome= request.getParameter("cognome");
String username= request.getParameter("username");
String password= request.getParameter("password");
String posizione= request.getParameter("posizione");
String stipendio= request.getParameter("stipendio");

Double stipendio_d=0.0;
if(!stipendio.isEmpty() && stipendio!=null){
stipendio_d=Double.parseDouble(stipendio);
} 

Dipendente d=new Dipendente(nome,cognome,username,password,'d',posizione,stipendio_d);
Servizi s=new Servizi();

if(d.isValid()&& s.leggiUtenteConUser(username)==null){
	password=s.codificaPass(password);
	d.setPassword(password);
	s.registraDipendente(d);
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



