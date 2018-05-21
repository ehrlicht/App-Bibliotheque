package ch.bibliotheque.dao;

import ch.bibliotheque.model.Book;

import javax.inject.Inject;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.util.Date;

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
            bs.save(new Book("La Bible", "Dieu", "Bigbang Publications.", new Date()));
            bs.save(new Book("Les aventures de Tata au pays du zeub noir", "Hergé", "Editions la Jacquette", new Date()));
            bs.save(new Book("Les aventures de Tata - On a marché sur ma lune", "Hergé", "Editions la Jacquette", new Date()));
            bs.save(new Book("Les aventures de Tata - Le cigare du gros Léon", "Hergé", "Editions la Jacquette", new Date()));
            bs.save(new Book("Les aventures de Tata - Les 2 boules de Christelle", "Hergé", "Editions la Jacquette", new Date()));
            bs.save(new Book("Les aventures de Tata - Les bijoux de la casse moi le fion", "Hergé", "Editions la Jacquette", new Date()));
            bs.save(new Book("Les aventures de Tata - Les 2 boules de Christelle", "Hergé", "Editions la Jacquette", new Date()));
            bs.save(new Book("Les aventures de Tata - Le temple du fist fucking", "Hergé", "Editions la Jacquette", new Date()));
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        //NOTHING TO DO
    }
}
