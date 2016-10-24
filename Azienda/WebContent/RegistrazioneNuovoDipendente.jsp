<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<jsp:useBean id="user" class="it.alfasoft.andrea.bean.Utente" scope="session" />


<jsp:useBean id="messaggio" class="it.alfasoft.andrea.utility.MessaggioBean" scope="request" />


<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <link rel="Stylesheet" type="text/css" href="css/stat.css">

<title>Insert title here</title>
</head>
<body>

<div id="Container">
  
  <div id="header">
<h1>Header</h1>
  
  </div>
  
  
    <div  class="menu">
 
  <jsp:include page="MenuLateraleAdmin.jsp"></jsp:include>
  
  </div>
    <div id="content">
   <h1>Registrazione Nuovo Dipendente</h1>
   <%=messaggio.getMessaggio() %>
   <form action="doRegistraDipendente.jsp" method="post">
   
   Nome:<input type="text" name="nome" required/><br>
   Cognome:<input type="text" name="cognome" required/><br>
   Username:<input type="text" name="username" required/><br>
   Password:<input type="password" name="password" required/><br>
   Posizione:<input type="text" name="posizione" required/><br>
  Stipendio:<input type="number" name="stipendio"  required/><br>
   <input type="submit" value="Registra"  />
   
   </form>
   
  </div>
    <div id="footer">
 <h1>Footer</h1>
 
  </div>
  
  
  </div> <!--  end of container -->
</body>
</html>