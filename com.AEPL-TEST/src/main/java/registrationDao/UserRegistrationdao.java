package registrationDao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;

import registrationDto.UserRegistrationdto;

@Component
public class UserRegistrationdao {

	EntityManagerFactory factory=Persistence.createEntityManagerFactory("dev");
	EntityManager manager=factory.createEntityManager();
	EntityTransaction transaction=manager.getTransaction();
	
	
	public void insertData(UserRegistrationdto registrationdto)
	{
		transaction.begin();
		manager.persist(registrationdto);
		transaction.commit();
	
		
	}
}
