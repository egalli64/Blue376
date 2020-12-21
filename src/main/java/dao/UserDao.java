package dao;

import java.util.List;

import javax.persistence.EntityManager;

public class UserDao extends Dao<User, Integer> {
    public UserDao() {
	super(User.class);
    }

    public List<User> getUsers(String email, String password) {
	EntityManager em = null;

	try {
	    em = JPAUtilBlue.getEntityManager();
	    String jpql = "SELECT u FROM User u WHERE u.email = ?1 AND u.password = ?2";
	    var query = em.createQuery(jpql, User.class);
	    query.setParameter(1, email);
	    query.setParameter(2, password);

	    return query.getResultList();

	} catch (Exception ex) {
	    LOG.error("Can't create query: " + ex.getMessage());
	    throw ex;
	} finally {
	    if (em != null) {
		em.close();
	    }
	}
    }

}
