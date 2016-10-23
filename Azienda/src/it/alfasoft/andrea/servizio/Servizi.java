package it.alfasoft.andrea.servizio;

import java.util.List;

import it.alfasoft.andrea.bean.Cliente;
import it.alfasoft.andrea.bean.Dipendente;
import it.alfasoft.andrea.bean.Utente;
import it.alfasoft.andrea.dao.AdminDao;
import it.alfasoft.andrea.dao.ClienteDao;
import it.alfasoft.andrea.dao.DipendenteDao;
import it.alfasoft.andrea.dao.UtenteDao;
import it.alfasoft.andrea.utility.CodificationOfPassword;

public class Servizi {
	
	UtenteDao uDao=new UtenteDao();
	AdminDao aDao=new AdminDao();
	ClienteDao cDao=new ClienteDao();
	DipendenteDao dDao=new DipendenteDao();
	
	//Metodi di registrazione
	public boolean registraUtente(Utente u){
		return uDao.creaUtente(u);
	}
	
	public boolean registraCliente(Cliente c){
		return cDao.creaCliente(c);
	}
	
	public boolean registraDipendente(Dipendente d){
		return dDao.creaDipendente(d);
	}
	
	//Metodi di lettura
	public Utente leggiUtenteConUser(String username){
		return uDao.leggiUtenteConUser(username);
	}
	
	public Utente leggiUtenteConNomeCognome(String nome,String cognome){
		return uDao.leggiUtenteConNomeCognome(nome, cognome);
	}
	
	//Liste
	public List<Cliente> getListClienti(){
		return cDao.leggiTuttiClienti();
	}
	
	public List<Dipendente> getListDipendenti(){
		return dDao.leggiTuttiDipendenti();
	}
	
	
	//Metodo codifica password
	public String codificaPass(String pass){

		return CodificationOfPassword.codificatePass(pass);
	}
	
	
	

}
