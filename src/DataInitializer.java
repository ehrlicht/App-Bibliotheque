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
    public DataInitializer (BookService bs) {
        this.bs = bs;
    }

    SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy");

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        Book b1 = null;
        Book b2 = null;
        try {
            b1 = new Book("Ma vie mon Oeuvre", "87962414", "Moi", sdf.parse("01.11.2014"));
            b2 = new Book("La Bible", "34214134", "Dieu", new Date());
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
