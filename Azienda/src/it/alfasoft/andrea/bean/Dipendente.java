package it.alfasoft.andrea.bean;

import it.alfasoft.andrea.utility.ValidaDati;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.PrimaryKeyJoinColumn;

@Entity
@PrimaryKeyJoinColumn(name="id_utente")
public class Dipendente extends Utente implements Serializable,ValidaDati {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String posizione;
	private double stipendio;

	public Dipendente() {
	}

	public Dipendente(String nome, String cognome,
			String username, String password, char ruolo,String posizione, double stipendio) {
		super(nome,cognome,username,password,ruolo);
		this.posizione=posizione;
		this.stipendio = stipendio;
	}

	public double getStipendio() {
		return stipendio;
	}

	public void setStipendio(double stipendio) {
		this.stipendio = stipendio;
	}
	

	public String getPosizione() {
		return posizione;
	}

	public void setPosizione(String posizione) {
		this.posizione = posizione;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public boolean isValid() {
		boolean res=false;
		
		if(		(!nome.isEmpty() && nome!=null) &&
				(!cognome.isEmpty() && cognome!=null) &&
				(!username.isEmpty() && username!=null) &&
				(!password.isEmpty() && password!=null) &&
				(!posizione.isEmpty() && posizione!=null) &&
				(ruolo=='d')
			){
			res=true;
		}
		return res;
	}
	

}
