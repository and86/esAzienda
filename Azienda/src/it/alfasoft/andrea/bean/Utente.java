package it.alfasoft.andrea.bean;

import java.io.Serializable;

import javax.persistence.*;

import it.alfasoft.andrea.utility.Ruolo;
import it.alfasoft.andrea.utility.ValidaDati;


@Entity
@Inheritance(strategy=InheritanceType.JOINED)
public class Utente implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	protected long id_utente;
	protected String nome;
	protected String cognome;
	protected String username;
	protected String password;
	protected char ruolo;
	
		
	public Utente() {
	}
	
	public Utente(String nome, String cognome, String username,
			String password, char ruolo) {
		this.nome = nome;
		this.cognome = cognome;
		this.username = username;
		this.password = password;
		this.ruolo = ruolo;
	}
	
	public long getId_utente() {
		return id_utente;
	}

	public void setId_utente(long id_utente) {
		this.id_utente = id_utente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public char getRuolo() {
		return ruolo;
	}

	public void setRuolo(char ruolo) {
		this.ruolo = ruolo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	
	

}
