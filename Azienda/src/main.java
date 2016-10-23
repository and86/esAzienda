import it.alfasoft.andrea.bean.Admin;
import it.alfasoft.andrea.dao.AdminDao;
import it.alfasoft.andrea.dao.ClienteDao;
import it.alfasoft.andrea.dao.DipendenteDao;
import it.alfasoft.andrea.dao.UtenteDao;
import it.alfasoft.andrea.servizio.Servizi;


public class main {

	public static void main(String[] args) {
		
		Servizi s=new Servizi();
		UtenteDao uDao=new UtenteDao();
		AdminDao aDao=new AdminDao();
		ClienteDao cDao=new ClienteDao();
		DipendenteDao dDao=new DipendenteDao();
		
		Admin a=new Admin("Andrea","Laneri","and","pass",'a',"prioritario");
		a.setPassword(s.codificaPass(a.getPassword()));
		aDao.creaAdmin(a);
		
		
		

	}

}
