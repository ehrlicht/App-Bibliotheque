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
            bs.save(new Book("Les Miserables", "Victor Hugo", "A. Lacroix, Verboeckhoven & Cie.",Year.of(1862)));
            bs.save(new Book("Le Petit Prince", "Antoine de Saint-Exupery", "Gallimard",Year.of(1943)));
            bs.save(new Book("Germinal", "Emile Zola", "Gil Blas",Year.of(1885)));
            bs.save(new Book("Vingt mille lieues sous les mers", "Jules Verne", "Pierre-Jules Hetzel",Year.of(1869)));
            bs.save(new Book("Les Trois Mousquetaires", "Alexandre Dumas", "Le Siecle",Year.of(1844)));
            bs.save(new Book("Les Aventures de Tintin : Tintin au pays des Soviets", "Herge", "Casterman",Year.of(1930)));
            bs.save(new Book("L'Assommoir", "Emile Zola", "G. Charpentier, Paris",Year.of(1877)));
            bs.save(new Book("Jane Eyre", "Charlotte Bronte", "Smith, Elder & Co.",Year.of(1847)));
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        //NOTHING TO DO
    }
}
