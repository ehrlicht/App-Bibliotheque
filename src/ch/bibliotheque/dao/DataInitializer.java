package ch.bibliotheque.dao;

import ch.bibliotheque.metier.Book;

import javax.inject.Inject;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebListener
public class DataInitializer implements ServletContextListener {

    private final BookService bs;

    @Inject
    public DataInitializer(BookService bs) {
        this.bs = bs;
    }

    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        Book b1 = null;
        Book b2 = null;
        Book b3 = null;
        Book b4 = null;
        Book b5 = null;
        Book b6 = null;
        Book b7 = null;
        Book b8 = null;
        try {
            b1 = new Book("La Bible", "Dieu", "Bigbang Publications.", new Date());
            b2 = new Book("Les aventures de Tata au pays du zeub noir", "Hergé", "Editions la Jacquette", sdf.parse("01.11.2014"));
            b3 = new Book("Les aventures de Tata - On a marché sur ma lune", "Hergé", "Editions la Jacquette", sdf.parse("01.11.2014"));
            b4 = new Book("Les aventures de Tata - Le cigare du gros Léon", "Hergé", "Editions la Jacquette", sdf.parse("01.11.2014"));
            b5 = new Book("Les aventures de Tata - Les 2 boules de Christelle", "Hergé", "Editions la Jacquette", sdf.parse("01.11.2014"));
            b6 = new Book("Les aventures de Tata - Les bijoux de la casse moi le fion", "Hergé", "Editions la Jacquette", sdf.parse("01.11.2014"));
            b7 = new Book("Les aventures de Tata - Les 2 boules de Christelle", "Hergé", "Editions la Jacquette", sdf.parse("01.11.2014"));
            b8 = new Book("Les aventures de Tata - Le temple du fist fucking", "Hergé", "Editions la Jacquette", sdf.parse("01.11.2014"));
        } catch (ParseException e) {
            e.printStackTrace();
        }
        bs.save(b1);
        bs.save(b2);
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        //NOTHING TO DO
    }
}
