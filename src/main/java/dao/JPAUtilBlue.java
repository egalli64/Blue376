package dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtilBlue {
	
	    private static EntityManagerFactory factory;

	    static {
	        try {
	            factory = Persistence.createEntityManagerFactory("blue");
	        } catch (Throwable th) {
	            throw new IllegalStateException("Can't create EntityManagerFactory", th);
	        }
	    }

	    // no instance of this class is allowed!
	    private JPAUtilBlue() {
	    }

	    public static EntityManager getEntityManager() {
	        return factory.createEntityManager();
	    }
	}

