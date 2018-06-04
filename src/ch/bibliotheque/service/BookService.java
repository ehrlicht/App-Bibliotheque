package ch.bibliotheque.service;

import ch.bibliotheque.model.Book;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import java.time.Year;
import java.util.List;

@Stateless
public class BookService {

    @PersistenceContext
    private EntityManager em;


    public void save(Book book) {
        em.persist(book);
    }


    public void remove(int id) {
        Book book = em.find(Book.class, id);
        em.remove(book);
    }
    public void updateBook(String title,String author, String publisher, Year year, int id){
        Book book_ = em.find(Book.class, id);
        book_.setTitle(title);
        book_.setAuthor(author);
        book_.setPublisher(publisher);
        book_.setYear(year);
        em.merge(book_);
    }

    public List<Book> listAll() {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Book> cq = cb.createQuery(Book.class);
        cq.from(Book.class);
        TypedQuery<Book> q = em.createQuery(cq);
        return q.getResultList();
    }

}