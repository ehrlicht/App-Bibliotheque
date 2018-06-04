package ch.bibliotheque.listener;

import ch.bibliotheque.model.Book;
import ch.bibliotheque.service.BookService;

import javax.inject.Inject;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.Year;

@WebListener
public class DataInitializer implements ServletContextListener {

    private final BookService bs;

    @Inject
    public DataInitializer(BookService bs) {
        this.bs = bs;
    }

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        if (bs.listAll().isEmpty()) {
            bs.save(new Book("Le Seigneur des Anneaux", "J.R.R. Tolkien", "Allen & Unwin", Year.of(1956)));
            bs.save(new Book("Le Pere Goriot", "Honore de Balzac", "Edmond Werdet", Year.of(1835)));
            bs.save(new Book("La Divine Comedie", "Dante Alighieri", "", Year.of(1472)));
            bs.save(new Book("Crime et Chatiment", "Fiodor Dostoievski", "Rousky vestnik", Year.of(1866)));
            bs.save(new Book("Medee", "Euripide", "", Year.of(-431)));
            bs.save(new Book("Le Chateau", "Franz Kafka", "Kurt Wolff Verlag", Year.of(1926)));
            bs.save(new Book("Hamlet", "William Shakespeare", "", Year.of(1603)));
            bs.save(new Book("1984", "George Orwell", "Secker and Warburg",Year.of(1949)));
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        //NOTHING TO DO
    }
}
