package it.alfasoft.andrea.utility;

import java.io.Serializable;

public class MessaggioBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String messaggio;

	
	public MessaggioBean() {
		this.messaggio="";

	}

	public String getMessaggio() {
		return messaggio;
	}

	public void setMessaggio(String messaggio) {
		this.messaggio = messaggio;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
//	public void passwordErrata(){
//		this.messaggio = "La username e/o la password sono errati!";
//	}
//	
//	public void utenteEsiste(){
//		this.messaggio = "Utente gi� registrato!";
//	}
//	
//	public void usernameEsiste(){
//		this.messaggio = "Username non disponibile!";
//	}
//	
//	public void campiNonValidi(){
//		this.messaggio = "Campi non validi!";
//	}

}
