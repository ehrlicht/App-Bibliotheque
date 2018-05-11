package ch.bibliotheque.dao;

import ch.bibliotheque.metier.Book;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import java.util.List;

@Stateless
public class BookService {

    @PersistenceContext
    private EntityManager em;

    public void save(Book book) {
        em.persist(book);
    }

    public List<Book> readAll() {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Book> cq = cb.createQuery(Book.class);
        cq.from(Book.class);
        TypedQuery<Book> q = em.createQuery(cq);
        return q.getResultList();
    }

}